package com.flysnow.common.base;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.Arrays;

/**
 * @author huangyongsheng
 * @version 1.0.0
 * @description 公用类-数据层
 * @date 2018-12-01
 */
public class OperateLogAop {

    protected Logger logger = LoggerFactory.getLogger(this.getClass());

    public void before(JoinPoint point) {
        System.out.println("前置增强......");
        System.out.println("方法名......" + point.getSignature().getName());
        System.out.println("参数......" + Arrays.asList(point.getArgs()));
    }

    public void after() {
        System.out.println("方法：after");
    }

    public void afterreturning() {
        System.out.println("方法：afterreturning");
    }

    public void afterthrowing() {
        System.out.println("方法：afterthrowing");
    }

    public Object around(ProceedingJoinPoint joinpoint) {
        Object result = null;
        try {
            System.out.println("开始：around");
            long start = System.currentTimeMillis();
            result = joinpoint.proceed();
            long end = System.currentTimeMillis();
            System.out.println("总共执行时长：" + (end - start) + " 毫秒");
            System.out.println("结束：around");
        } catch (Throwable t) {
            System.out.println("出现错误");
        }
        return result;
    }


}
