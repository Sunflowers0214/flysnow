package com.flysnow.sysconfig.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.common.base.Page;
import com.flysnow.sysconfig.model.Config;
import com.flysnow.sysconfig.dao.ConfigDao;

/**
 * @description 全局参数数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/sysconfig-*.xml"})
public class ConfigDaoTest {

	@Autowired
	private ConfigDao configDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		Config insert = new Config();
		insert = configDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		Config where = new Config();
		where.setConfigId(insert.getConfigId());
		Config query = configDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		Config listWhere = new Config();
		List<Config> entityList = configDao.getList(listWhere);
		for (Config entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		Config update = new Config();
		update.setConfigId(insert.getConfigId());
		update.setWhere(where);
		int updateCount = configDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		Config delete = new Config();
		delete.setWhere(where);
		int deleteCount = configDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		Config insert = new Config();
		configDao.insert(insert);
	}

	@Test
	public void testDelete() {
		Config delete = new Config();
		configDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		Config update = new Config();
		configDao.update(update);
	}

	@Test
	public void testGet() {
		Config entity = new Config();
		configDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = configDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		Config listWhere = new Config();
		List<Config> entityList = configDao.getList(listWhere);
		for (Config entity : entityList){
			System.out.println(entity);
		}
	}
}