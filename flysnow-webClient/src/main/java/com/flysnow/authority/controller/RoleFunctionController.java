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
import com.flysnow.authority.model.RoleFunction;
import com.flysnow.authority.service.RoleFunctionService;

/**
 * @description 角色功能控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/roleFunction")
public class RoleFunctionController extends BaseController{

	@Autowired
	private RoleFunctionService roleFunctionService;

	/**
	 * @description 分页信息查询角色功能
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= roleFunctionService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 角色功能单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		RoleFunction queryEntity = JsonUtils.jsonToPojo(data,RoleFunction.class);
		RoleFunction entity= roleFunctionService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加角色功能数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		RoleFunction insertEntity = JsonUtils.jsonToPojo(data,RoleFunction.class);
		roleFunctionService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 角色功能数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		RoleFunction updateEntity = JsonUtils.jsonToPojo(data,RoleFunction.class);
		RoleFunction updateWhere = new RoleFunction();
		updateWhere.setRoleId(updateEntity.getRoleId());
		updateWhere.setFunctionId(updateEntity.getFunctionId());
		updateEntity.setWhere(updateWhere);
		boolean flag = roleFunctionService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除角色功能数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		RoleFunction deleteEntity = JsonUtils.jsonToPojo(data,RoleFunction.class);
		RoleFunction deleteWhere = new RoleFunction();
		deleteWhere.setRoleId(deleteEntity.getRoleId());
		deleteWhere.setFunctionId(deleteEntity.getFunctionId());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = roleFunctionService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询角色功能
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		RoleFunction queryEntity = JsonUtils.jsonToPojo(data,RoleFunction.class);
		List datalist = roleFunctionService.getList(queryEntity);
		return new Result(datalist);
	}

}