package com.flysnow.authority.service;

import com.flysnow.authority.model.Function;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 功能逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface FunctionService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract Function insert(Function entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(Function entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(Function entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract Function get(Function entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(Function entity);

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
