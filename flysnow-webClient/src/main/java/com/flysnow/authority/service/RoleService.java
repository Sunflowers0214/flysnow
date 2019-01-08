package com.flysnow.authority.service;

import com.flysnow.authority.model.Role;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 角色逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface RoleService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract Role insert(Role entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(Role entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(Role entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract Role get(Role entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(Role entity);

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
