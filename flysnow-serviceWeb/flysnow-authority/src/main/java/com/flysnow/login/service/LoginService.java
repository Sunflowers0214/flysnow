package com.flysnow.login.service;

import com.flysnow.login.model.LoginFuntion;
import com.flysnow.login.model.LoginUser;

import java.util.Date;
import java.util.Map;

public interface LoginService {

    /**
     * 验证用户权限
     *
     * @param userAccount 用户账号
     * @param password    密码
     * @param password    令牌
     * @return
     */
    LoginUser checkUserAuth(String userAccount, String password, String token);


    void insertLoginlog(LoginUser loginUser, String loginType);

    LoginUser getLoginUser(String userId);

}
