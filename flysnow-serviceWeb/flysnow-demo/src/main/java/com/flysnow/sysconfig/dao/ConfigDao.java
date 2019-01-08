package com.flysnow.sysconfig.dao;

import com.flysnow.sysconfig.model.Config;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 全局参数数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public interface ConfigDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract Config insert(Config entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(Config entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(Config entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract Config get(Config entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(Config entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}