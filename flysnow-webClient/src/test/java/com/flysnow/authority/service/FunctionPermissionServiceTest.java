package com.flysnow.authority.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.authority.model.FunctionPermission;
import com.flysnow.authority.service.FunctionPermissionService;

/**
 * @description 功能权限逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class FunctionPermissionServiceTest {
 
	@Autowired
	private FunctionPermissionService functionPermissionService;

 	@Test
	public void testInsert() {
		FunctionPermission functionPermission = new FunctionPermission();
		functionPermissionService.insert(functionPermission);
	}

	@Test
	public void testDelete() {
		FunctionPermission functionPermission = new FunctionPermission();
		functionPermissionService.delete(functionPermission);
	}

	@Test
	public void testUpdate() {
		FunctionPermission functionPermission = new FunctionPermission();
		functionPermissionService.update(functionPermission);
	}

	@Test
	public void testGet() {
		FunctionPermission functionPermission = new FunctionPermission();
		functionPermissionService.get(functionPermission);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		functionPermissionService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		FunctionPermission functionPermission = new FunctionPermission();
		functionPermissionService.getList(functionPermission);
	}
 
}