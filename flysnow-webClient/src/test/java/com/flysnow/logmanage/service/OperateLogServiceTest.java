package com.flysnow.logmanage.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.logmanage.model.OperateLog;
import com.flysnow.logmanage.service.OperateLogService;

/**
 * @description 操作日志逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/logmanage-*.xml"})
public class OperateLogServiceTest {
 
	@Autowired
	private OperateLogService operateLogService;

 	@Test
	public void testInsert() {
		OperateLog operateLog = new OperateLog();
		operateLogService.insert(operateLog);
	}

	@Test
	public void testDelete() {
		OperateLog operateLog = new OperateLog();
		operateLogService.delete(operateLog);
	}

	@Test
	public void testUpdate() {
		OperateLog operateLog = new OperateLog();
		operateLogService.update(operateLog);
	}

	@Test
	public void testGet() {
		OperateLog operateLog = new OperateLog();
		operateLogService.get(operateLog);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		operateLogService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		OperateLog operateLog = new OperateLog();
		operateLogService.getList(operateLog);
	}
 
}