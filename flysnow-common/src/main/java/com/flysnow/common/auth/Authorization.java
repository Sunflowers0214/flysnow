

package com.flysnow.common.auth;

import javax.servlet.http.HttpServletRequest;

public interface Authorization {

    public abstract String getUserSessionKey();

    public abstract int getUserID(HttpServletRequest httpservletrequest);

    public abstract boolean hasFunction(int i, String s);

    public abstract String getFunctionParam(int i, String s);

}
