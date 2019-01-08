package com.flysnow.authority.dao;

import com.flysnow.authority.model.UserRole;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 用户角色数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface UserRoleDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract UserRole insert(UserRole entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(UserRole entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(UserRole entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract UserRole get(UserRole entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(UserRole entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}