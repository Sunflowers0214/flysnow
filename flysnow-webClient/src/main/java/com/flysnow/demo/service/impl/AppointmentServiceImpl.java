package com.flysnow.demo.service.impl;

import com.flysnow.demo.model.Appointment;
import com.flysnow.demo.dao.AppointmentDao;
import com.flysnow.demo.service.AppointmentService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 预约图书表逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class AppointmentServiceImpl extends BaseService implements AppointmentService {

	private AppointmentDao appointmentDao;

	public void setAppointmentDao(AppointmentDao appointmentDao) {
		this.appointmentDao = appointmentDao;
	}

	@Override
	public Appointment insert(Appointment entity){
		try {
			return appointmentDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("预约图书表添加异常", e);
		}
	}

	@Override
	public boolean delete(Appointment entity){
		try {
			return appointmentDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("预约图书表删除异常", e);
		}
	}

	@Override
	public boolean update(Appointment entity){
		try {
			return appointmentDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("预约图书表修改异常", e);
		}
	}

	@Override
	public Appointment get(Appointment entity){
		try {
			return (Appointment)appointmentDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("预约图书表查询异常", e);
		}
	}


	@Override
	public List getList(Appointment entity){
		try {
			return appointmentDao.getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("预约图书表查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return appointmentDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("预约图书表查询异常", e);
		}
	}

}

