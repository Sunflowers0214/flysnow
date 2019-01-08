package com.flysnow.authority.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.authority.model.RoleFunction;
import com.flysnow.authority.service.RoleFunctionService;

/**
 * @description 角色功能逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class RoleFunctionServiceTest {
 
	@Autowired
	private RoleFunctionService roleFunctionService;

 	@Test
	public void testInsert() {
		RoleFunction roleFunction = new RoleFunction();
		roleFunctionService.insert(roleFunction);
	}

	@Test
	public void testDelete() {
		RoleFunction roleFunction = new RoleFunction();
		roleFunctionService.delete(roleFunction);
	}

	@Test
	public void testUpdate() {
		RoleFunction roleFunction = new RoleFunction();
		roleFunctionService.update(roleFunction);
	}

	@Test
	public void testGet() {
		RoleFunction roleFunction = new RoleFunction();
		roleFunctionService.get(roleFunction);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		roleFunctionService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		RoleFunction roleFunction = new RoleFunction();
		roleFunctionService.getList(roleFunction);
	}
 
}