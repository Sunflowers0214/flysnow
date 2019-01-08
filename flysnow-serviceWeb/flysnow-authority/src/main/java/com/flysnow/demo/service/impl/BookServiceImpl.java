package com.flysnow.demo.service.impl;

import com.flysnow.demo.model.Book;
import com.flysnow.demo.dao.BookDao;
import com.flysnow.demo.service.BookService;
import com.flysnow.common.exception.FrameworkException;
import com.flysnow.common.base.BaseService;
import com.flysnow.common.base.Page;
import java.util.List;
import java.util.Map;

/**
 * @description 图书表逻辑层实现
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class BookServiceImpl extends BaseService implements BookService {

	private BookDao bookDao;

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	@Override
	public Book insert(Book entity){
		try {
			return bookDao.insert(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("图书表添加异常", e);
		}
	}

	@Override
	public boolean delete(Book entity){
		try {
			return bookDao.delete(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("图书表删除异常", e);
		}
	}

	@Override
	public boolean update(Book entity){
		try {
			return bookDao.update(entity)>0;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("图书表修改异常", e);
		}
	}

	@Override
	public Book get(Book entity){
		try {
			return (Book)bookDao.get(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("图书表查询异常", e);
		}
	}


	@Override
	public List getList(Book entity){
		try {
			return bookDao.getList(entity);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("图书表查询异常", e);
		}
	}


	@Override
	public Page getListForPage(Map map, int pageNo,int pageSize,String sort){
		try {
			return bookDao.getListForPage(map,pageNo,pageSize);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
			throw new FrameworkException("图书表查询异常", e);
		}
	}

}

