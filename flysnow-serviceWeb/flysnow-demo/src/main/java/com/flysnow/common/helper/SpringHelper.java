package com.flysnow.common.helper;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * created on 2016年9月6日 
 *
 * 加载spring容器
 *
 * @author  huangyongsheng
 * @version  1.0.0
 */
public class SpringHelper {
	public static ApplicationContext context;
	static{
		context = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
	}
}
