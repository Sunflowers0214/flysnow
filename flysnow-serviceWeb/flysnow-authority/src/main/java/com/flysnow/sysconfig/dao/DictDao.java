package com.flysnow.sysconfig.dao;

import com.flysnow.sysconfig.model.Dict;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 字典数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-03
 */
public interface DictDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract Dict insert(Dict entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(Dict entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(Dict entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract Dict get(Dict entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(Dict entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}