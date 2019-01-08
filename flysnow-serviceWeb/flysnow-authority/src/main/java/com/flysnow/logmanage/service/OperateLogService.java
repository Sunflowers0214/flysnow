package com.flysnow.logmanage.service;

import com.flysnow.logmanage.model.OperateLog;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 操作日志逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public interface OperateLogService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract OperateLog insert(OperateLog entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(OperateLog entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(OperateLog entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract OperateLog get(OperateLog entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(OperateLog entity);

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
