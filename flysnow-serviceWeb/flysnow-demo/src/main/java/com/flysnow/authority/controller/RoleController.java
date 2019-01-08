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
import com.flysnow.authority.model.Role;
import com.flysnow.authority.service.RoleService;

/**
 * @description 角色控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/role")
public class RoleController extends BaseController{

	@Autowired
	private RoleService roleService;

	/**
	 * @description 分页信息查询角色
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= roleService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 角色单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		Role queryEntity = JsonUtils.jsonToPojo(data,Role.class);
		Role entity= roleService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加角色数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		Role insertEntity = JsonUtils.jsonToPojo(data,Role.class);
		roleService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 角色数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		Role updateEntity = JsonUtils.jsonToPojo(data,Role.class);
		Role updateWhere = new Role();
		updateWhere.setRoleId(updateEntity.getRoleId());
		updateEntity.setWhere(updateWhere);
		boolean flag = roleService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除角色数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		Role deleteEntity = JsonUtils.jsonToPojo(data,Role.class);
		Role deleteWhere = new Role();
		deleteWhere.setRoleId(deleteEntity.getRoleId());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = roleService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询角色
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		Role queryEntity = JsonUtils.jsonToPojo(data,Role.class);
		List datalist = roleService.getList(queryEntity);
		return new Result(datalist);
	}

}