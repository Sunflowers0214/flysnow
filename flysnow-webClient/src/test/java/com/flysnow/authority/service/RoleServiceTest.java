package com.flysnow.authority.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.authority.model.Role;
import com.flysnow.authority.service.RoleService;

/**
 * @description 角色逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class RoleServiceTest {
 
	@Autowired
	private RoleService roleService;

 	@Test
	public void testInsert() {
		Role role = new Role();
		roleService.insert(role);
	}

	@Test
	public void testDelete() {
		Role role = new Role();
		roleService.delete(role);
	}

	@Test
	public void testUpdate() {
		Role role = new Role();
		roleService.update(role);
	}

	@Test
	public void testGet() {
		Role role = new Role();
		roleService.get(role);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		roleService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		Role role = new Role();
		roleService.getList(role);
	}
 
}