package com.flysnow.demo.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.demo.dao.AppointmentDao;
import com.flysnow.demo.model.Appointment;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 预约图书表数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class AppointmentDaoImpl extends BaseDao implements AppointmentDao {

	private static final String NAMESPACE = AppointmentDao.class.getName() + ".";

	@Override
	public Appointment insert(Appointment entity){
		entity.setBookId(UUIDUtil.genKey());
		entity.setStudentId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertAppointment", entity);
		return entity;
	}

	@Override
	public int delete(Appointment entity){
		return super.delete(NAMESPACE + "deleteAppointment", entity);
	}

	@Override
	public int update(Appointment entity){
		return super.update(NAMESPACE + "updateAppointment", entity);
	}

	@Override
	public Appointment get(Appointment entity){
		return (Appointment)super.queryForObject(NAMESPACE + "getAppointment", entity);
	}

	@Override
	public List getList(Appointment entity){
		return super.queryForList(NAMESPACE + "getAppointmentList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getAppointmentListPage", map, pageNo,pageSize);
	}

}
