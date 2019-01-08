package com.flysnow.login.service.impl;

import com.flysnow.authority.dao.LoginDao;
import com.flysnow.authority.dao.UserDao;
import com.flysnow.authority.dao.UserPermissionDao;
import com.flysnow.authority.dao.UserRoleDao;
import com.flysnow.authority.model.User;
import com.flysnow.authority.model.UserFunction;
import com.flysnow.authority.model.UserPermission;
import com.flysnow.authority.model.UserRole;
import com.flysnow.common.base.BaseService;
import com.flysnow.login.model.LoginUser;
import com.flysnow.login.service.LoginService;
import com.flysnow.logmanage.dao.LoginLogDao;
import com.flysnow.logmanage.model.LoginLog;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static com.flysnow.common.constant.LoginStatus.*;

public class LoginServiceImpl extends BaseService implements LoginService {

    private UserDao userDao;
    private UserPermissionDao userPermissionDao;
    private UserRoleDao userRoleDao;
    private LoginDao loginDao;
    private LoginLogDao loginLogDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public void setUserPermissionDao(UserPermissionDao userPermissionDao) {
        this.userPermissionDao = userPermissionDao;
    }

    public void setUserRoleDao(UserRoleDao userRoleDao) {
        this.userRoleDao = userRoleDao;
    }

    public void setLoginDao(LoginDao loginDao) {
        this.loginDao = loginDao;
    }

    public void setLoginLogDao(LoginLogDao loginLogDao) {
        this.loginLogDao = loginLogDao;
    }

    @Override
    public LoginUser checkUserAuth(String userAccount, String password, String token) {
        logger.debug("开始验证");
        LoginUser loginUser = new LoginUser();
        try {
            logger.debug("查询用户信息");
            User userQuery = new User();
            userQuery.setUserAccount(userAccount);
            User user = userDao.get(userQuery);
            if (user == null) {
                logger.info(ACCOUNT_ERROR.toString());
                loginUser.setLoginStatus(ACCOUNT_ERROR);
            } else {
                logger.debug("用户信息" + user.toString());
                if (!user.getPassword().equals(password)) {
                    loginUser.setLoginStatus(PASSWORD_ERROR);
                } else {
                    loginUser.setUserId(user.getUserId());
                    loginUser.setUserAccount(userAccount);
                    loginUser.setUserName(user.getUserName());
                    loginUser.setUserPhone(user.getUserPhone());
                    loginUser.setUser(user);
                    logger.debug("查询用户权限");
                    UserPermission userPermissionQuery = new UserPermission();
                    userPermissionQuery.setUserId(user.getUserId());
                    List<UserPermission> permissionList = userPermissionDao.getList(userPermissionQuery);
                    if (permissionList == null || permissionList.size() == 0) {
                        logger.info(AUTHORITY_LOGIN_ERROT.toString());
                        loginUser.setLoginStatus(AUTHORITY_LOGIN_ERROT);
                    } else {
                        logger.debug("用户权限:" + permissionList.toString());
                        loginUser.setPermissionList(permissionList);
                        logger.debug("查询用户角色");
                        UserRole userRoleQuery = new UserRole();
                        userRoleQuery.setUserId(user.getUserId());
                        List<UserRole> userRoleList = userRoleDao.getList(userRoleQuery);
                        if (userRoleList == null || userRoleList.size() == 0) {
                            loginUser.setLoginStatus(AUTHORITY_ERROT);
                        } else {
                            logger.debug("用户角色:" + userRoleList.toString());
                            loginUser.setRoleList(userRoleList);
                            logger.debug("查询用户功能");
                            List<String> roleList = new ArrayList<String>();
                            for (UserRole userRole : userRoleList) {
                                roleList.add(userRole.getRoleId());
                            }
                            List<UserFunction> userFunctionList = loginDao.getUserFunctionListByUserId(user.getUserId());
                            logger.debug("用户功能:" + userFunctionList.toString());
                            if (userFunctionList == null || userFunctionList.size() == 0) {
                                loginUser.setLoginStatus(AUTHORITY_ERROT);
                            } else {
                                loginUser.setFunctionList(userFunctionList);
                                loginUser.setLoginStatus(LOGIN_SUCCESS);
                            }
                        }
                    }
                }
            }
            logger.debug("验证用户权限结束！");
        } catch (Exception e) {
            logger.error("验证异常：" + e.getMessage());
            e.printStackTrace();
            loginUser.setLoginStatus(LOGIN_ERROT);
        }
        return loginUser;
    }

    @Override
    public void insertLoginlog(LoginUser loginUser, String loginType) {
        LoginLog loginlog = new LoginLog();
        loginlog.setUserId(loginUser.getUserId());
        loginlog.setUserAccount(loginUser.getUserAccount());
        loginlog.setUserName(loginUser.getUserName());
        loginlog.setLoginIp("");
        loginlog.setLoginMac("");
        loginlog.setLoginType(loginType);
        loginlog.setLoginTime(new Date());
        loginLogDao.insert(loginlog);
    }

    @Override
    public LoginUser getLoginUser(String userId) {
        logger.debug("开始获取用户功能");
        LoginUser loginUser = new LoginUser();
        try {
            logger.debug("查询用户信息");
            User userQuery = new User();
            userQuery.setUserId(userId);
            User user = userDao.get(userQuery);
            logger.debug("用户信息" + user.toString());
            loginUser.setUserId(user.getUserId());
            loginUser.setUserAccount(user.getUserAccount());
            loginUser.setUserName(user.getUserName());
            loginUser.setUserPhone(user.getUserPhone());
            loginUser.setUser(user);
            logger.debug("查询用户权限");
            UserPermission userPermissionQuery = new UserPermission();
            userPermissionQuery.setUserId(user.getUserId());
            List<UserPermission> permissionList = userPermissionDao.getList(userPermissionQuery);
            logger.debug("用户权限:" + permissionList.toString());
            loginUser.setPermissionList(permissionList);
            logger.debug("查询用户角色");
            UserRole userRoleQuery = new UserRole();
            userRoleQuery.setUserId(user.getUserId());
            List<UserRole> userRoleList = userRoleDao.getList(userRoleQuery);
            logger.debug("用户角色:" + userRoleList.toString());
            loginUser.setRoleList(userRoleList);
            logger.debug("查询用户功能");
            List<String> roleList = new ArrayList<String>();
            for (UserRole userRole : userRoleList) {
                roleList.add(userRole.getRoleId());
            }
            List<UserFunction> userFunctionList = loginDao.getUserFunctionListByUserId(user.getUserId());
            logger.debug("用户功能:" + userFunctionList.toString());
            loginUser.setFunctionList(userFunctionList);
            logger.debug("获取用户功能结束！");
        } catch (Exception e) {
            logger.error("获取：" + e.getMessage());
            e.printStackTrace();
            loginUser.setLoginStatus(LOGIN_ERROT);
        }
        return loginUser;
    }

}
