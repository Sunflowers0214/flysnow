package com.flysnow.authority.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.authority.model.UserRole;
import com.flysnow.authority.service.UserRoleService;

/**
 * @description 用户角色逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class UserRoleServiceTest {
 
	@Autowired
	private UserRoleService userRoleService;

 	@Test
	public void testInsert() {
		UserRole userRole = new UserRole();
		userRoleService.insert(userRole);
	}

	@Test
	public void testDelete() {
		UserRole userRole = new UserRole();
		userRoleService.delete(userRole);
	}

	@Test
	public void testUpdate() {
		UserRole userRole = new UserRole();
		userRoleService.update(userRole);
	}

	@Test
	public void testGet() {
		UserRole userRole = new UserRole();
		userRoleService.get(userRole);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		userRoleService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		UserRole userRole = new UserRole();
		userRoleService.getList(userRole);
	}
 
}