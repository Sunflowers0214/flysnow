package com.flysnow.demo.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import java.util.HashMap;
import java.util.Map;
import com.flysnow.demo.model.Book;
import com.flysnow.demo.service.BookService;

/**
 * @description 图书表逻辑层测试
 * @author huangyongsheng	 
 * @createtime 2018-12-09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:config/spring/spring-service.xml", "classpath:config/spring/spring-mybatis.xml","classpath:config/spring/demo-*.xml"})
public class BookServiceTest {
 
	@Autowired
	private BookService bookService;

 	@Test
	public void testInsert() {
		Book book = new Book();
		bookService.insert(book);
	}

	@Test
	public void testDelete() {
		Book book = new Book();
		bookService.delete(book);
	}

	@Test
	public void testUpdate() {
		Book book = new Book();
		bookService.update(book);
	}

	@Test
	public void testGet() {
		Book book = new Book();
		bookService.get(book);
	}

	@Test
	public void testGetListForPage() {
		Map map = new HashMap();
		bookService.getListForPage(map, 1, 10, "");
	}

	@Test
	public void testGetList() {
		Book book = new Book();
		bookService.getList(book);
	}
 
}