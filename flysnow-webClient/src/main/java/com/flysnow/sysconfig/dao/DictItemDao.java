package com.flysnow.sysconfig.dao;

import com.flysnow.sysconfig.model.DictItem;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 字典选项数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public interface DictItemDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract DictItem insert(DictItem entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(DictItem entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(DictItem entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract DictItem get(DictItem entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(DictItem entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}