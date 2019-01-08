package com.flysnow.authority.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.authority.model.Function;
import com.flysnow.authority.service.FunctionService;

/**
 * @description 功能逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class FunctionServiceTest {
 
	@Autowired
	private FunctionService functionService;

 	@Test
	public void testInsert() {
		Function function = new Function();
		functionService.insert(function);
	}

	@Test
	public void testDelete() {
		Function function = new Function();
		functionService.delete(function);
	}

	@Test
	public void testUpdate() {
		Function function = new Function();
		functionService.update(function);
	}

	@Test
	public void testGet() {
		Function function = new Function();
		functionService.get(function);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		functionService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		Function function = new Function();
		functionService.getList(function);
	}
 
}