package com.flysnow.logmanage.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.logmanage.model.LoginLog;
import com.flysnow.logmanage.service.LoginLogService;

/**
 * @description 登录日志逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/logmanage-*.xml"})
public class LoginLogServiceTest {
 
	@Autowired
	private LoginLogService loginLogService;

 	@Test
	public void testInsert() {
		LoginLog loginLog = new LoginLog();
		loginLogService.insert(loginLog);
	}

	@Test
	public void testDelete() {
		LoginLog loginLog = new LoginLog();
		loginLogService.delete(loginLog);
	}

	@Test
	public void testUpdate() {
		LoginLog loginLog = new LoginLog();
		loginLogService.update(loginLog);
	}

	@Test
	public void testGet() {
		LoginLog loginLog = new LoginLog();
		loginLogService.get(loginLog);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		loginLogService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		LoginLog loginLog = new LoginLog();
		loginLogService.getList(loginLog);
	}
 
}