package com.flysnow.sysconfig.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.sysconfig.model.DictItem;
import com.flysnow.sysconfig.service.DictItemService;

/**
 * @description 字典选项逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/sysconfig-*.xml"})
public class DictItemServiceTest {
 
	@Autowired
	private DictItemService dictItemService;

 	@Test
	public void testInsert() {
		DictItem dictItem = new DictItem();
		dictItemService.insert(dictItem);
	}

	@Test
	public void testDelete() {
		DictItem dictItem = new DictItem();
		dictItemService.delete(dictItem);
	}

	@Test
	public void testUpdate() {
		DictItem dictItem = new DictItem();
		dictItemService.update(dictItem);
	}

	@Test
	public void testGet() {
		DictItem dictItem = new DictItem();
		dictItemService.get(dictItem);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		dictItemService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		DictItem dictItem = new DictItem();
		dictItemService.getList(dictItem);
	}
 
}