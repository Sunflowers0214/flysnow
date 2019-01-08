package com.flysnow.authority.dao;

import com.flysnow.authority.model.UserPermission;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 用户登录权限数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface UserPermissionDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract UserPermission insert(UserPermission entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(UserPermission entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(UserPermission entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract UserPermission get(UserPermission entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(UserPermission entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}