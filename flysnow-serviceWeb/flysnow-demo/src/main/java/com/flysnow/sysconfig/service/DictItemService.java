package com.flysnow.sysconfig.service;

import com.flysnow.sysconfig.model.DictItem;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 字典选项逻辑层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public interface DictItemService{

	/**
	 * 增加
	 * @param entity
	 * @return
	 */
	public abstract DictItem insert(DictItem entity);

	/**
	 * 删除
	 * @param entity
	 * @return
	 */
	public abstract boolean delete(DictItem entity);

	/**
	 * 修改
	 * @param entity
	 * @return
	 */
  	public abstract boolean update(DictItem entity);

	/**
	 * 查询单条
	 * @param entity
	 * @return
	 */
  	public abstract DictItem get(DictItem entity);

	/**
	 * 多条查询
	 * @param entity
	 * @return
	 */
  	public abstract List getList(DictItem entity);

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
