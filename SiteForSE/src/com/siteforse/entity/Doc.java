package com.siteforse.entity;

import java.sql.Timestamp;

public class Doc {
	private int index;
	private String name;
	private Timestamp addDate;
	private String path;
	
	
	public Doc(int index, String name, Timestamp addDate, String path) {
		super();
		this.index = index;
		this.name = name;
		this.addDate = addDate;
		this.path = path;
	}
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getAddDate() {
		return addDate;
	}
	public void setAddDate(Timestamp addDate) {
		this.addDate = addDate;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	
	

}
