package com.flysnow.demo.model;

import java.util.Date;

/**
 * @description 图书表对象
 * @author huangyongsheng
 * @version 1.0.0
 * @createtime 2018-12-09
 */
public class Book {

	private String bookId;//图书ID
	private String bookName;//图书名称
	private Integer bookNumber;//馆藏数量
	private Book where;
	
	//图书ID
	public String getBookId(){
		return bookId;
	}
	public void setBookId(String bookId){
		this.bookId =bookId;
	}
	
	//图书名称
	public String getBookName(){
		return bookName;
	}
	public void setBookName(String bookName){
		this.bookName =bookName;
	}
	
	//馆藏数量
	public Integer getBookNumber(){
		return bookNumber;
	}
	public void setBookNumber(Integer bookNumber){
		this.bookNumber =bookNumber;
	}

	//修改条件
	public Book getWhere() {
		return where;
	}
	public void setWhere(Book where) {
		this.where = where;
	}

	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("{");
		sb.append("bookId="+bookId+",");
		sb.append("bookName="+bookName+",");
		sb.append("bookNumber="+bookNumber+",");
		sb.append("}");
		return sb.toString();
	}
}