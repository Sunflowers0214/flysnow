package com.flysnow.authority.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.authority.model.UserPermission;
import com.flysnow.authority.service.UserPermissionService;

/**
 * @description 用户登录权限逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class UserPermissionServiceTest {
 
	@Autowired
	private UserPermissionService userPermissionService;

 	@Test
	public void testInsert() {
		UserPermission userPermission = new UserPermission();
		userPermissionService.insert(userPermission);
	}

	@Test
	public void testDelete() {
		UserPermission userPermission = new UserPermission();
		userPermissionService.delete(userPermission);
	}

	@Test
	public void testUpdate() {
		UserPermission userPermission = new UserPermission();
		userPermissionService.update(userPermission);
	}

	@Test
	public void testGet() {
		UserPermission userPermission = new UserPermission();
		userPermissionService.get(userPermission);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		userPermissionService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		UserPermission userPermission = new UserPermission();
		userPermissionService.getList(userPermission);
	}
 
}