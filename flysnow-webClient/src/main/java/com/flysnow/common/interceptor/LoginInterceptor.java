package com.flysnow.common.interceptor;

import com.flysnow.common.constant.GlobalConstant;
import com.flysnow.login.model.LoginUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 拦截器
 * @createtime 2018-12-01
 */
public class LoginInterceptor implements HandlerInterceptor {

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    /**
     * 在业务处理器处理请求之前被调用
     * 如果返回false,从当前的拦截器往回执行所有拦截器的afterCompletion(),再退出拦截器链
     * 如果返回true,执行下一个拦截器,直到所有的拦截器都执行完毕
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        log.info("LoginInterceptor.preHandle");
        String requestUri = request.getRequestURI();
        String contextPath = request.getContextPath();
        String remoteAddr = request.getRemoteAddr();
        System.out.println("requestUri:" + requestUri);
        System.out.println("remoteAddr:" + remoteAddr);
        System.out.println("contextPath:" + contextPath);
        String url = requestUri.substring(contextPath.length());
        if (url.startsWith("/login/weblogin")) {
            return true;
        } else {
            LoginUser user = (LoginUser) request.getSession().getAttribute(GlobalConstant.LOGIN_USER_KEY);
            if (user == null) {
                log.info("Interceptor：跳转到login页面！");
                response.sendRedirect("login.html");
                return false;
            } else {
                return true;
            }
        }
    }

    /**
     * 在业务处理器处理请求执行完成后,生成视图之前执行的动作
     * 可在modelAndView中加入数据，比如当前时间
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        log.info("LoginInterceptor.postHandle");
        if (modelAndView != null) {  //加入当前时间
            modelAndView.addObject("haha", "测试postHandle");
        }
    }

    /**
     * 在DispatcherServlet完全处理完请求后被调用,可用于清理资源等
     * 当有拦截器抛出异常时,会从当前拦截器往回执行所有的拦截器的afterCompletion()
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        log.info("LoginInterceptor.afterCompletion");
    }
}
