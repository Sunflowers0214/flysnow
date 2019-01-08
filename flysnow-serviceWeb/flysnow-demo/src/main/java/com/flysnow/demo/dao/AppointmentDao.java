package com.flysnow.demo.dao;

import com.flysnow.demo.model.Appointment;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 预约图书表数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface AppointmentDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract Appointment insert(Appointment entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(Appointment entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(Appointment entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract Appointment get(Appointment entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(Appointment entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}