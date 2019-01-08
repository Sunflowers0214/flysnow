
package com.flysnow.common.auth;

import javax.servlet.http.HttpServletRequest;


public class AuthorizationImpl implements Authorization {

    public AuthorizationImpl() {
    }

    public String getUserSessionKey() {
        return "userKey_user";
    }

    public int getUserID(HttpServletRequest request) {
        return 0;
    }

    public boolean hasFunction(int userid, String functionDefine) {
        return true;
    }

    public String getFunctionParam(int userid, String functionDefine) {
        return "";
    }
}
