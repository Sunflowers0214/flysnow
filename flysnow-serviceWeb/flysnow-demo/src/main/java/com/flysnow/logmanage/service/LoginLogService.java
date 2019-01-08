package com.flysnow.logmanage.service;

import com.flysnow.logmanage.model.LoginLog;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 登录日志逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public interface LoginLogService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract LoginLog insert(LoginLog entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(LoginLog entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(LoginLog entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract LoginLog get(LoginLog entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(LoginLog entity);

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
