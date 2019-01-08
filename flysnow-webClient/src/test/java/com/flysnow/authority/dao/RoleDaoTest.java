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
import com.flysnow.authority.model.Role;
import com.flysnow.authority.dao.RoleDao;

/**
 * @description 角色数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class RoleDaoTest {

	@Autowired
	private RoleDao roleDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		Role insert = new Role();
		insert = roleDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		Role where = new Role();
		where.setRoleId(insert.getRoleId());
		Role query = roleDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		Role listWhere = new Role();
		List<Role> entityList = roleDao.getList(listWhere);
		for (Role entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		Role update = new Role();
		update.setRoleId(insert.getRoleId());
		update.setWhere(where);
		int updateCount = roleDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		Role delete = new Role();
		delete.setWhere(where);
		int deleteCount = roleDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		Role insert = new Role();
		roleDao.insert(insert);
	}

	@Test
	public void testDelete() {
		Role delete = new Role();
		roleDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		Role update = new Role();
		roleDao.update(update);
	}

	@Test
	public void testGet() {
		Role entity = new Role();
		roleDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = roleDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		Role listWhere = new Role();
		List<Role> entityList = roleDao.getList(listWhere);
		for (Role entity : entityList){
			System.out.println(entity);
		}
	}
}