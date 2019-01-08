package com.flysnow.common.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description session过滤器，修改response对象，设置session超时标识
 * @createtime 2018-12-01
 */
public class SessionFilter implements Filter {

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        System.out.println(request.getRequestURL());
        System.out.println(request.getRequestURI());
        System.out.println(request.getRemoteAddr());
        String uri = request.getRequestURI();
        /*if (uri.endsWith("login.html") || uri.endsWith("login")) {
            filterChain.doFilter(request, servletResponse);
        } else {
            Object user = request.getSession().getAttribute(GlobalConstant.LOGIN_USER_KEY);
            if (user == null) {
                System.out.println("尚未登录，调到登录页面");
                response.sendRedirect("login.html");
            }
        }*/
        filterChain.doFilter(request, servletResponse);
    }

    @Override
    public void destroy() {
        // TODO Auto-generated method stub
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub
    }
}
