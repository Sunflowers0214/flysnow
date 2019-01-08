package com.flysnow.demo.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.common.base.Page;
import com.flysnow.demo.model.Appointment;
import com.flysnow.demo.dao.AppointmentDao;

/**
 * @description 预约图书表数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/demo-*.xml"})
public class AppointmentDaoTest {

	@Autowired
	private AppointmentDao appointmentDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		Appointment insert = new Appointment();
		insert = appointmentDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		Appointment where = new Appointment();
		where.setBookId(insert.getBookId());
		where.setStudentId(insert.getStudentId());
		Appointment query = appointmentDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		Appointment listWhere = new Appointment();
		List<Appointment> entityList = appointmentDao.getList(listWhere);
		for (Appointment entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		Appointment update = new Appointment();
		update.setBookId(insert.getBookId());
		update.setStudentId(insert.getStudentId());
		update.setWhere(where);
		int updateCount = appointmentDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		Appointment delete = new Appointment();
		delete.setWhere(where);
		int deleteCount = appointmentDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		Appointment insert = new Appointment();
		appointmentDao.insert(insert);
	}

	@Test
	public void testDelete() {
		Appointment delete = new Appointment();
		appointmentDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		Appointment update = new Appointment();
		appointmentDao.update(update);
	}

	@Test
	public void testGet() {
		Appointment entity = new Appointment();
		appointmentDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = appointmentDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		Appointment listWhere = new Appointment();
		List<Appointment> entityList = appointmentDao.getList(listWhere);
		for (Appointment entity : entityList){
			System.out.println(entity);
		}
	}
}