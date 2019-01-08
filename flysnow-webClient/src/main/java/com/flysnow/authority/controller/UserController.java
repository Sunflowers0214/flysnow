package com.flysnow.authority.controller;

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
import com.flysnow.authority.model.User;
import com.flysnow.authority.service.UserService;

/**
 * @description 用户控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController{

	@Autowired
	private UserService userService;

	/**
	 * @description 分页信息查询用户
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= userService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 用户单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		User queryEntity = JsonUtils.jsonToPojo(data,User.class);
		User entity= userService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加用户数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		User insertEntity = JsonUtils.jsonToPojo(data,User.class);
		userService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 用户数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		User updateEntity = JsonUtils.jsonToPojo(data,User.class);
		User updateWhere = new User();
		updateWhere.setUserId(updateEntity.getUserId());
		updateEntity.setWhere(updateWhere);
		boolean flag = userService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除用户数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		User deleteEntity = JsonUtils.jsonToPojo(data,User.class);
		User deleteWhere = new User();
		deleteWhere.setUserId(deleteEntity.getUserId());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = userService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询用户
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		User queryEntity = JsonUtils.jsonToPojo(data,User.class);
		List datalist = userService.getList(queryEntity);
		return new Result(datalist);
	}

}