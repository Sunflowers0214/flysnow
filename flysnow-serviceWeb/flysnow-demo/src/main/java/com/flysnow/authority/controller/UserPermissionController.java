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
import com.flysnow.authority.model.UserPermission;
import com.flysnow.authority.service.UserPermissionService;

/**
 * @description 用户登录权限控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/userPermission")
public class UserPermissionController extends BaseController{

	@Autowired
	private UserPermissionService userPermissionService;

	/**
	 * @description 分页信息查询用户登录权限
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= userPermissionService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 用户登录权限单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		UserPermission queryEntity = JsonUtils.jsonToPojo(data,UserPermission.class);
		UserPermission entity= userPermissionService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加用户登录权限数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		UserPermission insertEntity = JsonUtils.jsonToPojo(data,UserPermission.class);
		userPermissionService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 用户登录权限数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		UserPermission updateEntity = JsonUtils.jsonToPojo(data,UserPermission.class);
		UserPermission updateWhere = new UserPermission();
		updateWhere.setUserId(updateEntity.getUserId());
		updateWhere.setLoginType(updateEntity.getLoginType());
		updateEntity.setWhere(updateWhere);
		boolean flag = userPermissionService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除用户登录权限数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		UserPermission deleteEntity = JsonUtils.jsonToPojo(data,UserPermission.class);
		UserPermission deleteWhere = new UserPermission();
		deleteWhere.setUserId(deleteEntity.getUserId());
		deleteWhere.setLoginType(deleteEntity.getLoginType());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = userPermissionService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询用户登录权限
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		UserPermission queryEntity = JsonUtils.jsonToPojo(data,UserPermission.class);
		List datalist = userPermissionService.getList(queryEntity);
		return new Result(datalist);
	}

}