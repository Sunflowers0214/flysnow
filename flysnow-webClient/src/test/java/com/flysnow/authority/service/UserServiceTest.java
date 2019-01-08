package com.flysnow.authority.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.authority.model.User;
import com.flysnow.authority.service.UserService;

/**
 * @description 用户逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class UserServiceTest {
 
	@Autowired
	private UserService userService;

 	@Test
	public void testInsert() {
		User user = new User();
		userService.insert(user);
	}

	@Test
	public void testDelete() {
		User user = new User();
		userService.delete(user);
	}

	@Test
	public void testUpdate() {
		User user = new User();
		userService.update(user);
	}

	@Test
	public void testGet() {
		User user = new User();
		userService.get(user);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		userService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		User user = new User();
		userService.getList(user);
	}
 
}