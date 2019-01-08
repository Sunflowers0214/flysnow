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
import com.flysnow.authority.model.FunctionPermission;
import com.flysnow.authority.dao.FunctionPermissionDao;

/**
 * @description 功能权限数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class FunctionPermissionDaoTest {

	@Autowired
	private FunctionPermissionDao functionPermissionDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		FunctionPermission insert = new FunctionPermission();
		insert = functionPermissionDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		FunctionPermission where = new FunctionPermission();
		where.setFunctionId(insert.getFunctionId());
		where.setFunctionPermissionCode(insert.getFunctionPermissionCode());
		FunctionPermission query = functionPermissionDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		FunctionPermission listWhere = new FunctionPermission();
		List<FunctionPermission> entityList = functionPermissionDao.getList(listWhere);
		for (FunctionPermission entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		FunctionPermission update = new FunctionPermission();
		update.setFunctionId(insert.getFunctionId());
		update.setFunctionPermissionCode(insert.getFunctionPermissionCode());
		update.setWhere(where);
		int updateCount = functionPermissionDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		FunctionPermission delete = new FunctionPermission();
		delete.setWhere(where);
		int deleteCount = functionPermissionDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		FunctionPermission insert = new FunctionPermission();
		functionPermissionDao.insert(insert);
	}

	@Test
	public void testDelete() {
		FunctionPermission delete = new FunctionPermission();
		functionPermissionDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		FunctionPermission update = new FunctionPermission();
		functionPermissionDao.update(update);
	}

	@Test
	public void testGet() {
		FunctionPermission entity = new FunctionPermission();
		functionPermissionDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = functionPermissionDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		FunctionPermission listWhere = new FunctionPermission();
		List<FunctionPermission> entityList = functionPermissionDao.getList(listWhere);
		for (FunctionPermission entity : entityList){
			System.out.println(entity);
		}
	}
}