package com.siteforse.dao;

import java.sql.SQLException;

import com.siteforse.entity.Admin;

public class AdminDao extends BaseDao{
	public Admin getAdmin(){
		sql = "select * from admin";
		openConn();
		createPst(sql);
		Admin ad = new Admin();
		try{
			query();
			rs.next();
			ad.setPassword(rs.getString("password"));
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			closeConn();
		}
		return ad;
	}

	public void setPassword(String password){
		sql = "update admin set password=?";

		openConn();
		createPst(sql);
		try{
			pst.setString(1,password);
			update();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			closeConn();
		}
	}
}