package com.siteforse.biz;

import com.siteforse.entity.Admin;
import com.siteforse.dao.AdminDao;

public class AdminBiz{
	private AdminDao dao = new AdminDao();

	public int validate(String password){
		if(password.equals(dao.getAdmin().getPassword()))
			return 1;
		return 0;
	}

	public int changePsw(String oldPsw, String newPsw){
		if(validate(oldPsw)==1){
			dao.setPassword(newPsw);
			return 1;
		}
		return 0;
	}
}