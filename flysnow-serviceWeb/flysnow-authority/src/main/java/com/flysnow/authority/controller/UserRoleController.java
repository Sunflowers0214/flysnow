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
import com.flysnow.authority.model.UserRole;
import com.flysnow.authority.service.UserRoleService;

/**
 * @description 用户角色控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/userRole")
public class UserRoleController extends BaseController{

	@Autowired
	private UserRoleService userRoleService;

	/**
	 * @description 分页信息查询用户角色
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= userRoleService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 用户角色单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		UserRole queryEntity = JsonUtils.jsonToPojo(data,UserRole.class);
		UserRole entity= userRoleService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加用户角色数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		UserRole insertEntity = JsonUtils.jsonToPojo(data,UserRole.class);
		userRoleService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 用户角色数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		UserRole updateEntity = JsonUtils.jsonToPojo(data,UserRole.class);
		UserRole updateWhere = new UserRole();
		updateWhere.setUserId(updateEntity.getUserId());
		updateWhere.setRoleId(updateEntity.getRoleId());
		updateEntity.setWhere(updateWhere);
		boolean flag = userRoleService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除用户角色数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		UserRole deleteEntity = JsonUtils.jsonToPojo(data,UserRole.class);
		UserRole deleteWhere = new UserRole();
		deleteWhere.setUserId(deleteEntity.getUserId());
		deleteWhere.setRoleId(deleteEntity.getRoleId());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = userRoleService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询用户角色
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		UserRole queryEntity = JsonUtils.jsonToPojo(data,UserRole.class);
		List datalist = userRoleService.getList(queryEntity);
		return new Result(datalist);
	}

}