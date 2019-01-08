package com.flysnow.authority.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.authority.model.Department;
import com.flysnow.authority.service.DepartmentService;

/**
 * @description 部门逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class DepartmentServiceTest {
 
	@Autowired
	private DepartmentService departmentService;

 	@Test
	public void testInsert() {
		Department department = new Department();
		departmentService.insert(department);
	}

	@Test
	public void testDelete() {
		Department department = new Department();
		departmentService.delete(department);
	}

	@Test
	public void testUpdate() {
		Department department = new Department();
		departmentService.update(department);
	}

	@Test
	public void testGet() {
		Department department = new Department();
		departmentService.get(department);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		departmentService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		Department department = new Department();
		departmentService.getList(department);
	}
 
}