package com.flysnow.demo.model;

import java.util.Date;

/**
 * @description 预约图书表对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class Appointment {

	private String bookId;//图书ID
	private String studentId;//学号
	private Date appointTime;//预约时间
	private Appointment where;
	
	//图书ID
	public String getBookId(){
		return bookId;
	}
	public void setBookId(String bookId){
		this.bookId =bookId;
	}
	
	//学号
	public String getStudentId(){
		return studentId;
	}
	public void setStudentId(String studentId){
		this.studentId =studentId;
	}
	
	//预约时间
	public Date getAppointTime(){
		return appointTime;
	}
	public void setAppointTime(Date appointTime){
		this.appointTime =appointTime;
	}

	//修改条件
	public Appointment getWhere() {
		return where;
	}
	public void setWhere(Appointment where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("bookId="+bookId+",");
		sb.append("studentId="+studentId+",");
		sb.append("appointTime="+appointTime+",");
		sb.append("}");
		return sb.toString();
	}
}