package com.flysnow.authority.service;

import com.flysnow.authority.model.Department;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 部门逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface DepartmentService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract Department insert(Department entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(Department entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(Department entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract Department get(Department entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(Department entity);

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
