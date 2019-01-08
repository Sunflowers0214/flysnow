package com.flysnow.demo.controller;

import java.util.List;
import java.util.Map;
import com.flysnow.common.base.Page;
import com.flysnow.common.base.Result;
import com.flysnow.common.util.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.flysnow.common.base.BaseController;
import com.flysnow.demo.model.Book;
import com.flysnow.demo.service.BookService;

/**
 * @description 图书表控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/book")
public class BookController extends BaseController{

	@Autowired
	private BookService bookService;

	/**
	 * @description 分页信息查询图书表
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= bookService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 图书表单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		Book queryEntity = JsonUtils.jsonToPojo(data,Book.class);
		Book entity= bookService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加图书表数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		Book insertEntity = JsonUtils.jsonToPojo(data,Book.class);
		bookService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 图书表数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		Book updateEntity = JsonUtils.jsonToPojo(data,Book.class);
		Book updateWhere = new Book();
		updateWhere.setBookId(updateEntity.getBookId());
		updateEntity.setWhere(updateWhere);
		boolean flag = bookService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除图书表数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		Book deleteEntity = JsonUtils.jsonToPojo(data,Book.class);
		Book deleteWhere = new Book();
		deleteWhere.setBookId(deleteEntity.getBookId());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = bookService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询图书表
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		Book queryEntity = JsonUtils.jsonToPojo(data,Book.class);
		List datalist = bookService.getList(queryEntity);
		return new Result(datalist);
	}

}