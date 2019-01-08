package com.flysnow.login.model;

import com.flysnow.authority.model.UserFunction;
import com.flysnow.authority.model.UserPermission;
import com.flysnow.authority.model.UserRole;
import com.flysnow.common.constant.LoginStatus;

import java.util.List;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 用户身份信息
 * @createtime 2018-12-01
 */
public class LoginFuntion implements java.io.Serializable {
    private static final long serialVersionUID = 1L;

    private String userId;//用户ID
    private String userAccount;//用户账号
    private String userName;//用户名称
    private String userPhone;//手机号
    private LoginStatus loginStatus;//登陆状态
    private List<UserPermission> permissionList;// 权限列表
    private List<UserRole> roleList;// 角色列表
    private List<UserFunction> functionList;// 功能列表

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public LoginStatus getLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(LoginStatus loginStatus) {
        this.loginStatus = loginStatus;
    }

    public List<UserPermission> getPermissionList() {
        return permissionList;
    }

    public void setPermissionList(List<UserPermission> permissionList) {
        this.permissionList = permissionList;
    }

    public List<UserRole> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<UserRole> roleList) {
        this.roleList = roleList;
    }

    public List<UserFunction> getFunctionList() {
        return functionList;
    }

    public void setFunctionList(List<UserFunction> functionList) {
        this.functionList = functionList;
    }
}