package com.flysnow.demo.dao.impl;

import java.util.List;
import java.util.Map;
import com.flysnow.demo.dao.BookDao;
import com.flysnow.demo.model.Book;
import com.flysnow.common.util.UUIDUtil;
import com.flysnow.common.base.BaseDao;
import com.flysnow.common.base.Page;

/**
 * @description 图书表数据层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class BookDaoImpl extends BaseDao implements BookDao {

	private static final String NAMESPACE = BookDao.class.getName() + ".";

	@Override
	public Book insert(Book entity){
		entity.setBookId(UUIDUtil.genKey());
		super.insert(NAMESPACE + "insertBook", entity);
		return entity;
	}

	@Override
	public int delete(Book entity){
		return super.delete(NAMESPACE + "deleteBook", entity);
	}

	@Override
	public int update(Book entity){
		return super.update(NAMESPACE + "updateBook", entity);
	}

	@Override
	public Book get(Book entity){
		return (Book)super.queryForObject(NAMESPACE + "getBook", entity);
	}

	@Override
	public List getList(Book entity){
		return super.queryForList(NAMESPACE + "getBookList", entity);
	}

	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize){
		return super.queryForPageHelper(NAMESPACE + "getBookListPage", map, pageNo,pageSize);
	}

}
