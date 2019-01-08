package com.flysnow.authority.service;

import com.flysnow.authority.model.FunctionPermission;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 功能权限逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface FunctionPermissionService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract FunctionPermission insert(FunctionPermission entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(FunctionPermission entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(FunctionPermission entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract FunctionPermission get(FunctionPermission entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(FunctionPermission entity);

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
