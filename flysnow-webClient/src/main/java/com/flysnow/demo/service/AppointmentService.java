package com.flysnow.demo.service;

import com.flysnow.demo.model.Appointment;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 预约图书表逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface AppointmentService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract Appointment insert(Appointment entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(Appointment entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(Appointment entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract Appointment get(Appointment entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(Appointment entity);

	/**
	 * 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @param sort
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize, String sort);

}
