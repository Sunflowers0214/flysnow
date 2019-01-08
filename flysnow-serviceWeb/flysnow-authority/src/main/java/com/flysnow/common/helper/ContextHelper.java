package com.flysnow.common.helper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 * 这是一个web应用工具类,能活去相关的上下文对象，包括ServletContext、WebApplicationContext、HttpSession、spring中的bean
 *
 * @author qinghongwu
 */
public class ContextHelper implements ApplicationContextAware {

    // 日志
    private final static Logger log = LoggerFactory.getLogger(ContextHelper.class);
    // Spring上下文环境
    private static ApplicationContext applicationContext;

    /**
     * 实现ApplicationContextAware接口的回调方法，设置上下文环境
     *
     * @param applicationContext
     * @throws BeansException
     */
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        log.info("==> 初始化Spring上下文环境");
        ContextHelper.applicationContext = applicationContext;
    }

    /**
     * 获取对象
     *
     * @param name
     * @return
     * @throws BeansException
     */
    public static Object getBean(String name) throws BeansException {
        return applicationContext.getBean(name);
    }

    /**
     * 从WebApplicationContext中获取bean对象
     *
     * @param name bean的id
     * @return Object对象，调用者可自行转换为具体对象
     */
    public static Object getWebBean(String name) {
        WebApplicationContext webApplicationContext = ContextLoader.getCurrentWebApplicationContext();
        return webApplicationContext.getBean(name);
    }

    /**
     * SpringMvc下获取request
     *
     * @return
     */
    public static HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
    }

    /**
     * 获取session对象
     *
     * @return HttpSession对象
     */
    public static HttpSession getSession() {
        return getRequest().getSession();
    }

    /**
     * 获取session对象
     *
     * @return HttpSession对象
     */
    public static HttpSession getSession(boolean flag) {
        return getRequest().getSession(flag);
    }

}
