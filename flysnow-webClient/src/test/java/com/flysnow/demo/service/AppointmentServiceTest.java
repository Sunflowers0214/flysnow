package com.flysnow.demo.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.demo.model.Appointment;
import com.flysnow.demo.service.AppointmentService;

/**
 * @description 预约图书表逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/demo-*.xml"})
public class AppointmentServiceTest {
 
	@Autowired
	private AppointmentService appointmentService;

 	@Test
	public void testInsert() {
		Appointment appointment = new Appointment();
		appointmentService.insert(appointment);
	}

	@Test
	public void testDelete() {
		Appointment appointment = new Appointment();
		appointmentService.delete(appointment);
	}

	@Test
	public void testUpdate() {
		Appointment appointment = new Appointment();
		appointmentService.update(appointment);
	}

	@Test
	public void testGet() {
		Appointment appointment = new Appointment();
		appointmentService.get(appointment);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		appointmentService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		Appointment appointment = new Appointment();
		appointmentService.getList(appointment);
	}
 
}