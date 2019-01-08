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
import com.flysnow.demo.model.Appointment;
import com.flysnow.demo.service.AppointmentService;

/**
 * @description 预约图书表控制层
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
@Controller
@RequestMapping("/appointment")
public class AppointmentController extends BaseController{

	@Autowired
	private AppointmentService appointmentService;

	/**
	 * @description 分页信息查询预约图书表
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getListForPage")
	@ResponseBody
	public Result getListForPage(String data, Integer pageNo, Integer pageSize, String sort) throws Exception{
		Map map = JsonUtils.jsonToPojo(data, Map.class);
		Page page= appointmentService.getListForPage(map, pageNo, pageSize, sort);
     	return new Result(page);
	}

	/**
	 * @description 预约图书表单条信息查询
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/get")
	@ResponseBody
	public Result get(String data) throws Exception{
		Appointment queryEntity = JsonUtils.jsonToPojo(data,Appointment.class);
		Appointment entity= appointmentService.get(queryEntity);
		return new Result(entity);
	}

	/**
	 * @description 添加预约图书表数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public Result insert(String data) throws Exception{
		Appointment insertEntity = JsonUtils.jsonToPojo(data,Appointment.class);
		appointmentService.insert(insertEntity);
		return new Result(insertEntity);
	}

	/**
	 * @description 修改 预约图书表数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/modify")
	@ResponseBody
	public Result modify(String data) throws Exception{
		Appointment updateEntity = JsonUtils.jsonToPojo(data,Appointment.class);
		Appointment updateWhere = new Appointment();
		updateWhere.setBookId(updateEntity.getBookId());
		updateWhere.setStudentId(updateEntity.getStudentId());
		updateEntity.setWhere(updateWhere);
		boolean flag = appointmentService.update(updateEntity);
		return new Result(flag);
	}

	/**
	 * @description 删除预约图书表数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(String data) throws Exception{
		Appointment deleteEntity = JsonUtils.jsonToPojo(data,Appointment.class);
		Appointment deleteWhere = new Appointment();
		deleteWhere.setBookId(deleteEntity.getBookId());
		deleteWhere.setStudentId(deleteEntity.getStudentId());
		deleteEntity.setWhere(deleteWhere);
		boolean flag = appointmentService.delete(deleteEntity);
		return new Result(flag);
	}

	/**
	 * @description 不分页查询预约图书表
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getList")
	@ResponseBody
	public Result getList(String data) throws Exception{
		Appointment queryEntity = JsonUtils.jsonToPojo(data,Appointment.class);
		List datalist = appointmentService.getList(queryEntity);
		return new Result(datalist);
	}

}