package com.flysnow.sysconfig.service;

import com.flysnow.sysconfig.model.Dict;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 字典逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public interface DictService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract Dict insert(Dict entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(Dict entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(Dict entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract Dict get(Dict entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(Dict entity);

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
