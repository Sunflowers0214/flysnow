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
import com.flysnow.authority.model.UserRole;
import com.flysnow.authority.dao.UserRoleDao;

/**
 * @description 用户角色数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class UserRoleDaoTest {

	@Autowired
	private UserRoleDao userRoleDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		UserRole insert = new UserRole();
		insert = userRoleDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		UserRole where = new UserRole();
		where.setUserId(insert.getUserId());
		where.setRoleId(insert.getRoleId());
		UserRole query = userRoleDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		UserRole listWhere = new UserRole();
		List<UserRole> entityList = userRoleDao.getList(listWhere);
		for (UserRole entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		UserRole update = new UserRole();
		update.setUserId(insert.getUserId());
		update.setRoleId(insert.getRoleId());
		update.setWhere(where);
		int updateCount = userRoleDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		UserRole delete = new UserRole();
		delete.setWhere(where);
		int deleteCount = userRoleDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		UserRole insert = new UserRole();
		userRoleDao.insert(insert);
	}

	@Test
	public void testDelete() {
		UserRole delete = new UserRole();
		userRoleDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		UserRole update = new UserRole();
		userRoleDao.update(update);
	}

	@Test
	public void testGet() {
		UserRole entity = new UserRole();
		userRoleDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = userRoleDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		UserRole listWhere = new UserRole();
		List<UserRole> entityList = userRoleDao.getList(listWhere);
		for (UserRole entity : entityList){
			System.out.println(entity);
		}
	}
}