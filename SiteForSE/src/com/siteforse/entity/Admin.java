package com.siteforse.entity;

public class Admin{
	private String password;
	public Admin(String password){
		this.password = password;
	}
	public Admin() {
		super();
	}
	public String getPassword(){
		return password;	
	}

	public void setPassword(String password){
		this.password = password;
	}
}