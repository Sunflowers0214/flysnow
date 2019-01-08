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
import com.flysnow.logmanage.model.LoginLog;
import com.flysnow.logmanage.dao.LoginLogDao;

/**
 * @description 登录日志数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/logmanage-*.xml"})
public class LoginLogDaoTest {

	@Autowired
	private LoginLogDao loginLogDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		LoginLog insert = new LoginLog();
		insert = loginLogDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		LoginLog where = new LoginLog();
		where.setLoginLogId(insert.getLoginLogId());
		LoginLog query = loginLogDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		LoginLog listWhere = new LoginLog();
		List<LoginLog> entityList = loginLogDao.getList(listWhere);
		for (LoginLog entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		LoginLog update = new LoginLog();
		update.setLoginLogId(insert.getLoginLogId());
		update.setWhere(where);
		int updateCount = loginLogDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		LoginLog delete = new LoginLog();
		delete.setWhere(where);
		int deleteCount = loginLogDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		LoginLog insert = new LoginLog();
		loginLogDao.insert(insert);
	}

	@Test
	public void testDelete() {
		LoginLog delete = new LoginLog();
		loginLogDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		LoginLog update = new LoginLog();
		loginLogDao.update(update);
	}

	@Test
	public void testGet() {
		LoginLog entity = new LoginLog();
		loginLogDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = loginLogDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		LoginLog listWhere = new LoginLog();
		List<LoginLog> entityList = loginLogDao.getList(listWhere);
		for (LoginLog entity : entityList){
			System.out.println(entity);
		}
	}
}