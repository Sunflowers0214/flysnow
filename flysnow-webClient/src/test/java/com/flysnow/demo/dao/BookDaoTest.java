package com.flysnow.demo.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.common.base.Page;
import com.flysnow.demo.model.Book;
import com.flysnow.demo.dao.BookDao;

/**
 * @description 图书表数据层测试
 * @author huangyongsheng
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/demo-*.xml"})
public class BookDaoTest {

	@Autowired
	private BookDao bookDao;

 	@Test
	public void testCrud() {
		System.out.println("添加");
		Book insert = new Book();
		insert = bookDao.insert(insert);
		System.out.println(insert);

		System.out.println("单个查询");
		Book where = new Book();
		where.setBookId(insert.getBookId());
		Book query = bookDao.get(where);
		System.out.println(query);

		System.out.println("列表查询");
		Book listWhere = new Book();
		List<Book> entityList = bookDao.getList(listWhere);
		for (Book entity : entityList){
			System.out.println(entity);
		}

		System.out.println("修改");
		Book update = new Book();
		update.setBookId(insert.getBookId());
		update.setWhere(where);
		int updateCount = bookDao.update(update);
		System.out.println(updateCount);

		System.out.println("删除");
		Book delete = new Book();
		delete.setWhere(where);
		int deleteCount = bookDao.delete(delete);
		System.out.println(deleteCount);

	}

	@Test
	public void testInsert() {
		Book insert = new Book();
		bookDao.insert(insert);
	}

	@Test
	public void testDelete() {
		Book delete = new Book();
		bookDao.delete(delete);
	}

	@Test
	public void testUpdate() {
		Book update = new Book();
		bookDao.update(update);
	}

	@Test
	public void testGet() {
		Book entity = new Book();
		bookDao.get(entity);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		Page page = bookDao.getListForPage(map, 1, 10);
		System.out.println(page.getTotalRows());
		List entityList = page.getDatalist();
		for (Object entity : entityList){
			System.out.println(entity);
		}
	}

	@Test
	public void testGetList() {
		Book listWhere = new Book();
		List<Book> entityList = bookDao.getList(listWhere);
		for (Book entity : entityList){
			System.out.println(entity);
		}
	}
}