
package com.flysnow.common.auth;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class AuthFilter implements Filter {

    private Authorization authorization;
    private String loginURL;
    private String authClass;
    private String noFilterURLs[];
    private boolean checkAuth;
    private final Logger log = LoggerFactory.getLogger(AuthFilter.class);

    public AuthFilter() {
        checkAuth = false;
    }

    public void destroy() {
        loginURL = null;
        authClass = null;
        checkAuth = false;
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        if (isExpiredSession(request)) {
            if (isNoFilterURL(request.getServletPath())) {
                filterChain.doFilter(request, response);
            } else {
                request.getSession().invalidate();
                response.sendRedirect((new StringBuilder(String.valueOf(request.getContextPath()))).append(loginURL).toString());
            }
        } else {
            if (checkAuth) {
                int userid = authorization.getUserID(request);
                String funcDefine = getFuncDefine(request);
                if (!authorization.hasFunction(userid, funcDefine))
                    response.sendRedirect(loginURL);
                String acParam = authorization.getFunctionParam(userid, funcDefine);
                request.getSession().setAttribute("AcParam", acParam);
            }
            filterChain.doFilter(request, response);
        }
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        loginURL = filterConfig.getInitParameter("loginURL");
        authClass = filterConfig.getInitParameter("authClass");
        noFilterURLs = filterConfig.getInitParameter("noFilterURL").split(",");
        String checkAuthValue = filterConfig.getInitParameter("checkAuth");
        if (checkAuthValue == null)
            checkAuth = false;
        else if (checkAuthValue.equalsIgnoreCase("true"))
            checkAuth = true;
        else if (checkAuthValue.equalsIgnoreCase("yes"))
            checkAuth = true;
        else
            checkAuth = false;
        try {
            if (log.isDebugEnabled())
                log.debug("==========new Authorization instance start===========");
            authorization = (Authorization) (Authorization) Class.forName(authClass).newInstance();
            if (log.isDebugEnabled())
                log.debug("==========new Authorization instance end=============");
        } catch (Exception ex) {
            log.error(ex.getMessage());
            throw new ServletException(ex);
        }
    }

    private boolean isExpiredSession(HttpServletRequest httpRequest) {
        HttpSession session = httpRequest.getSession(false);
        boolean firststep = false;
        if (session == null || session.getAttribute(authorization.getUserSessionKey()) == null)
            firststep = true;
        return firststep;
    }

    private String getFuncDefine(HttpServletRequest request) {
        return (new StringBuilder(String.valueOf(request.getServletPath()))).append("?method=").append(request.getParameter("method")).toString();
    }

    private boolean isNoFilterURL(String currURL) {
        int flag = 0;
        for (int i = 0; i < noFilterURLs.length; i++) {
            if (currURL.indexOf(noFilterURLs[i]) <= 0)
                continue;
            flag = 1;
            break;
        }

        return flag == 1;
    }
}
