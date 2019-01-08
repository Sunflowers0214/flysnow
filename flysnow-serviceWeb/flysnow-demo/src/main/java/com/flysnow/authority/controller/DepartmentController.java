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
import com.flysnow.authority.model.Department;
import com.flysnow.authority.service.DepartmentService;

/**
 * @description 部门控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/department")
public class DepartmentController extends BaseController{

	@Autowired
	private DepartmentService departmentService;

	/**
	 * @description 分页信息查询部门
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= departmentService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 部门单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		Department queryEntity = JsonUtils.jsonToPojo(data,Department.class);
		Department entity= departmentService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加部门数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		Department insertEntity = JsonUtils.jsonToPojo(data,Department.class);
		departmentService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 部门数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		Department updateEntity = JsonUtils.jsonToPojo(data,Department.class);
		Department updateWhere = new Department();
		updateWhere.setDepartId(updateEntity.getDepartId());
		updateEntity.setWhere(updateWhere);
		boolean flag = departmentService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除部门数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		Department deleteEntity = JsonUtils.jsonToPojo(data,Department.class);
		Department deleteWhere = new Department();
		deleteWhere.setDepartId(deleteEntity.getDepartId());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = departmentService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询部门
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		Department queryEntity = JsonUtils.jsonToPojo(data,Department.class);
		List datalist = departmentService.getList(queryEntity);
		return new Result(datalist);
	}

}