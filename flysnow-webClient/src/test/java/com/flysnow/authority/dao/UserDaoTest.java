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
import com.flysnow.authority.model.User;
import com.flysnow.authority.dao.UserDao;

/**
 * @description 用户数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/authority-*.xml"})
public class UserDaoTest {

	@Autowired
	private UserDao userDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		User insert = new User();
		insert = userDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		User where = new User();
		where.setUserId(insert.getUserId());
		User query = userDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		User listWhere = new User();
		List<User> entityList = userDao.getList(listWhere);
		for (User entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		User update = new User();
		update.setUserId(insert.getUserId());
		update.setWhere(where);
		int updateCount = userDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		User delete = new User();
		delete.setWhere(where);
		int deleteCount = userDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		User insert = new User();
		userDao.insert(insert);
	}

	@Test
	public void testDelete() {
		User delete = new User();
		userDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		User update = new User();
		userDao.update(update);
	}

	@Test
	public void testGet() {
		User entity = new User();
		userDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = userDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		User listWhere = new User();
		List<User> entityList = userDao.getList(listWhere);
		for (User entity : entityList){
			System.out.println(entity);
		}
	}
}