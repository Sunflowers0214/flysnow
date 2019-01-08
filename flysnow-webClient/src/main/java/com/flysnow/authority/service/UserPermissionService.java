package com.flysnow.authority.service;

import com.flysnow.authority.model.UserPermission;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 用户登录权限逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface UserPermissionService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract UserPermission insert(UserPermission entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(UserPermission entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(UserPermission entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract UserPermission get(UserPermission entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(UserPermission entity);

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
