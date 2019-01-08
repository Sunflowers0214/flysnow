package com.flysnow.authority.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.authority.dao.DepartmentDao;
import com.flysnow.authority.model.Department;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 部门数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class DepartmentDaoImpl extends BaseDao implements DepartmentDao {

	private static final String NAMESPACE = DepartmentDao.class.getName() + ".";

	@Override
	public Department insert(Department entity){
		entity.setDepartId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertDepartment", entity);
		return entity;
	}

	@Override
	public int delete(Department entity){
		return super.delete(NAMESPACE + "deleteDepartment", entity);
	}

	@Override
	public int update(Department entity){
		return super.update(NAMESPACE + "updateDepartment", entity);
	}

	@Override
	public Department get(Department entity){
		return (Department)super.queryForObject(NAMESPACE + "getDepartment", entity);
	}

	@Override
	public List getList(Department entity){
		return super.queryForList(NAMESPACE + "getDepartmentList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getDepartmentListPage", map, pageNo,pageSize);
	}

}
