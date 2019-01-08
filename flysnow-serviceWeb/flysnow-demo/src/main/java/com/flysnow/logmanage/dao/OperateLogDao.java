package com.flysnow.logmanage.dao;

import com.flysnow.logmanage.model.OperateLog;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 操作日志数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public interface OperateLogDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract OperateLog insert(OperateLog entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(OperateLog entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(OperateLog entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract OperateLog get(OperateLog entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(OperateLog entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}