package com.flysnow.logmanage.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.common.base.Page;
import com.flysnow.logmanage.model.OperateLog;
import com.flysnow.logmanage.dao.OperateLogDao;

/**
 * @description 操作日志数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/logmanage-*.xml"})
public class OperateLogDaoTest {

	@Autowired
	private OperateLogDao operateLogDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		OperateLog insert = new OperateLog();
		insert = operateLogDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		OperateLog where = new OperateLog();
		where.setOperateLogId(insert.getOperateLogId());
		OperateLog query = operateLogDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		OperateLog listWhere = new OperateLog();
		List<OperateLog> entityList = operateLogDao.getList(listWhere);
		for (OperateLog entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		OperateLog update = new OperateLog();
		update.setOperateLogId(insert.getOperateLogId());
		update.setWhere(where);
		int updateCount = operateLogDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		OperateLog delete = new OperateLog();
		delete.setWhere(where);
		int deleteCount = operateLogDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		OperateLog insert = new OperateLog();
		operateLogDao.insert(insert);
	}

	@Test
	public void testDelete() {
		OperateLog delete = new OperateLog();
		operateLogDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		OperateLog update = new OperateLog();
		operateLogDao.update(update);
	}

	@Test
	public void testGet() {
		OperateLog entity = new OperateLog();
		operateLogDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = operateLogDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		OperateLog listWhere = new OperateLog();
		List<OperateLog> entityList = operateLogDao.getList(listWhere);
		for (OperateLog entity : entityList){
			System.out.println(entity);
		}
	}
}