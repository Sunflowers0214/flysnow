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
import com.flysnow.authority.model.RoleFunction;
import com.flysnow.authority.dao.RoleFunctionDao;

/**
 * @description 角色功能数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class RoleFunctionDaoTest {

	@Autowired
	private RoleFunctionDao roleFunctionDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		RoleFunction insert = new RoleFunction();
		insert = roleFunctionDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		RoleFunction where = new RoleFunction();
		where.setRoleId(insert.getRoleId());
		where.setFunctionId(insert.getFunctionId());
		RoleFunction query = roleFunctionDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		RoleFunction listWhere = new RoleFunction();
		List<RoleFunction> entityList = roleFunctionDao.getList(listWhere);
		for (RoleFunction entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		RoleFunction update = new RoleFunction();
		update.setRoleId(insert.getRoleId());
		update.setFunctionId(insert.getFunctionId());
		update.setWhere(where);
		int updateCount = roleFunctionDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		RoleFunction delete = new RoleFunction();
		delete.setWhere(where);
		int deleteCount = roleFunctionDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		RoleFunction insert = new RoleFunction();
		roleFunctionDao.insert(insert);
	}

	@Test
	public void testDelete() {
		RoleFunction delete = new RoleFunction();
		roleFunctionDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		RoleFunction update = new RoleFunction();
		roleFunctionDao.update(update);
	}

	@Test
	public void testGet() {
		RoleFunction entity = new RoleFunction();
		roleFunctionDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = roleFunctionDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		RoleFunction listWhere = new RoleFunction();
		List<RoleFunction> entityList = roleFunctionDao.getList(listWhere);
		for (RoleFunction entity : entityList){
			System.out.println(entity);
		}
	}
}