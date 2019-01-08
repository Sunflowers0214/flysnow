package com.flysnow.authority.dao;

import com.flysnow.authority.model.RoleFunction;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 角色功能数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface RoleFunctionDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract RoleFunction insert(RoleFunction entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(RoleFunction entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(RoleFunction entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract RoleFunction get(RoleFunction entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(RoleFunction entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}