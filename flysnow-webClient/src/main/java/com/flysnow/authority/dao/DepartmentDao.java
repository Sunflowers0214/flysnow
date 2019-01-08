package com.flysnow.authority.dao;

import com.flysnow.authority.model.Department;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 部门数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface DepartmentDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract Department insert(Department entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(Department entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(Department entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract Department get(Department entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(Department entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}