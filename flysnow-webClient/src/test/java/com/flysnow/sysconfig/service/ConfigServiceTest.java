package com.flysnow.sysconfig.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.sysconfig.model.Config;
import com.flysnow.sysconfig.service.ConfigService;

/**
 * @description 全局参数逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/sysconfig-*.xml"})
public class ConfigServiceTest {
 
	@Autowired
	private ConfigService configService;

 	@Test
	public void testInsert() {
		Config config = new Config();
		configService.insert(config);
	}

	@Test
	public void testDelete() {
		Config config = new Config();
		configService.delete(config);
	}

	@Test
	public void testUpdate() {
		Config config = new Config();
		configService.update(config);
	}

	@Test
	public void testGet() {
		Config config = new Config();
		configService.get(config);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		configService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		Config config = new Config();
		configService.getList(config);
	}
 
}