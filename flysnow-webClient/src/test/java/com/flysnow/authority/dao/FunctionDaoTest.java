package com.flysnow.authority.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.common.base.Page;
import com.flysnow.authority.model.Function;
import com.flysnow.authority.dao.FunctionDao;

/**
 * @description 功能数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class FunctionDaoTest {

	@Autowired
	private FunctionDao functionDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		Function insert = new Function();
		insert = functionDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		Function where = new Function();
		where.setFunctionId(insert.getFunctionId());
		Function query = functionDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		Function listWhere = new Function();
		List<Function> entityList = functionDao.getList(listWhere);
		for (Function entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		Function update = new Function();
		update.setFunctionId(insert.getFunctionId());
		update.setWhere(where);
		int updateCount = functionDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		Function delete = new Function();
		delete.setWhere(where);
		int deleteCount = functionDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		Function insert = new Function();
		functionDao.insert(insert);
	}

	@Test
	public void testDelete() {
		Function delete = new Function();
		functionDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		Function update = new Function();
		functionDao.update(update);
	}

	@Test
	public void testGet() {
		Function entity = new Function();
		functionDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = functionDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		Function listWhere = new Function();
		List<Function> entityList = functionDao.getList(listWhere);
		for (Function entity : entityList){
			System.out.println(entity);
		}
	}
}