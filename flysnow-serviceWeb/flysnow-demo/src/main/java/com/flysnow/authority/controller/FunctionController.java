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
import com.flysnow.authority.model.Function;
import com.flysnow.authority.service.FunctionService;

/**
 * @description 功能控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/function")
public class FunctionController extends BaseController{

	@Autowired
	private FunctionService functionService;

	/**
	 * @description 分页信息查询功能
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= functionService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 功能单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		Function queryEntity = JsonUtils.jsonToPojo(data,Function.class);
		Function entity= functionService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加功能数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		Function insertEntity = JsonUtils.jsonToPojo(data,Function.class);
		functionService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 功能数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		Function updateEntity = JsonUtils.jsonToPojo(data,Function.class);
		Function updateWhere = new Function();
		updateWhere.setFunctionId(updateEntity.getFunctionId());
		updateEntity.setWhere(updateWhere);
		boolean flag = functionService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除功能数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		Function deleteEntity = JsonUtils.jsonToPojo(data,Function.class);
		Function deleteWhere = new Function();
		deleteWhere.setFunctionId(deleteEntity.getFunctionId());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = functionService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询功能
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		Function queryEntity = JsonUtils.jsonToPojo(data,Function.class);
		List datalist = functionService.getList(queryEntity);
		return new Result(datalist);
	}

}