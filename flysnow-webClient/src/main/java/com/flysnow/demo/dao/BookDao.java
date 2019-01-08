package com.flysnow.demo.dao;

import com.flysnow.demo.model.Book;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 图书表数据层接口
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public interface BookDao{

	/**
	 * @description 增加
	 * @param entity
	 * @return
	 */
	public abstract Book insert(Book entity);

	/**
	 * @description 删除
	 * @param entity
	 * @return
	 */
	public abstract int delete(Book entity);

	/**
	 * @description 修改
	 * @param entity
	 * @return
	 */
	public abstract int update(Book entity);

	/**
	 * @description 查询单条
	 * @param entity
	 * @return
	 */
	public abstract Book get(Book entity);

	/**
	 * @description 多条查询
	 * @param entity
	 * @return
	*/
	public abstract List getList(Book entity);

	/**
	 * @description 分页查询
	 * @param map
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public abstract Page getListForPage(Map map, int pageNo, int pageSize);

}