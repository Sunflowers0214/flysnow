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
import com.flysnow.authority.model.UserPermission;
import com.flysnow.authority.dao.UserPermissionDao;

/**
 * @description 用户登录权限数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class UserPermissionDaoTest {

	@Autowired
	private UserPermissionDao userPermissionDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		UserPermission insert = new UserPermission();
		insert = userPermissionDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		UserPermission where = new UserPermission();
		where.setUserId(insert.getUserId());
		where.setLoginType(insert.getLoginType());
		UserPermission query = userPermissionDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		UserPermission listWhere = new UserPermission();
		List<UserPermission> entityList = userPermissionDao.getList(listWhere);
		for (UserPermission entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		UserPermission update = new UserPermission();
		update.setUserId(insert.getUserId());
		update.setLoginType(insert.getLoginType());
		update.setWhere(where);
		int updateCount = userPermissionDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		UserPermission delete = new UserPermission();
		delete.setWhere(where);
		int deleteCount = userPermissionDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		UserPermission insert = new UserPermission();
		userPermissionDao.insert(insert);
	}

	@Test
	public void testDelete() {
		UserPermission delete = new UserPermission();
		userPermissionDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		UserPermission update = new UserPermission();
		userPermissionDao.update(update);
	}

	@Test
	public void testGet() {
		UserPermission entity = new UserPermission();
		userPermissionDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = userPermissionDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		UserPermission listWhere = new UserPermission();
		List<UserPermission> entityList = userPermissionDao.getList(listWhere);
		for (UserPermission entity : entityList){
			System.out.println(entity);
		}
	}
}