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
import com.flysnow.authority.model.FunctionPermission;
import com.flysnow.authority.service.FunctionPermissionService;

/**
 * @description 功能权限控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/functionPermission")
public class FunctionPermissionController extends BaseController{

	@Autowired
	private FunctionPermissionService functionPermissionService;

	/**
	 * @description 分页信息查询功能权限
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= functionPermissionService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 功能权限单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		FunctionPermission queryEntity = JsonUtils.jsonToPojo(data,FunctionPermission.class);
		FunctionPermission entity= functionPermissionService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加功能权限数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		FunctionPermission insertEntity = JsonUtils.jsonToPojo(data,FunctionPermission.class);
		functionPermissionService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 功能权限数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		FunctionPermission updateEntity = JsonUtils.jsonToPojo(data,FunctionPermission.class);
		FunctionPermission updateWhere = new FunctionPermission();
		updateWhere.setFunctionId(updateEntity.getFunctionId());
		updateWhere.setFunctionPermissionCode(updateEntity.getFunctionPermissionCode());
		updateEntity.setWhere(updateWhere);
		boolean flag = functionPermissionService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除功能权限数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		FunctionPermission deleteEntity = JsonUtils.jsonToPojo(data,FunctionPermission.class);
		FunctionPermission deleteWhere = new FunctionPermission();
		deleteWhere.setFunctionId(deleteEntity.getFunctionId());
		deleteWhere.setFunctionPermissionCode(deleteEntity.getFunctionPermissionCode());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = functionPermissionService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询功能权限
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		FunctionPermission queryEntity = JsonUtils.jsonToPojo(data,FunctionPermission.class);
		List datalist = functionPermissionService.getList(queryEntity);
		return new Result(datalist);
	}

}