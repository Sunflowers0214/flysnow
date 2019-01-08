package com.flysnow.authority.dao;

import com.flysnow.authority.model.FunctionPermission;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 功能权限数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface FunctionPermissionDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract FunctionPermission insert(FunctionPermission entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(FunctionPermission entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(FunctionPermission entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract FunctionPermission get(FunctionPermission entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(FunctionPermission entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}