package com.siteforse.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public abstract class BaseDao {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/siteforse?characterEncoding=utf8";
	private static final String USER = "root";
	private static final String PWD = "123456";
	
	protected String sql;
	protected Connection conn;
	protected PreparedStatement pst;
	protected ResultSet rs;
	
	protected void openConn(){
		try {
			if(conn==null||this.conn.isClosed()){
				try {
					Class.forName(DRIVER);
					this.conn = DriverManager.getConnection(URL, USER, PWD);
				} catch (ClassNotFoundException e) {
					 
					e.printStackTrace();
				} catch (SQLException e) {
					 
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
	}
	
	protected void createPst(String sql){
		try {
			if(this.conn!=null||this.conn.isClosed()){
				try {
					this.pst = conn.prepareStatement(sql);
				} catch (SQLException e) {
					 
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
	}
	
	protected void query(){
		try {
			this.rs = pst.executeQuery();
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
	}
	
	protected int update(){
		try{
			return pst.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return 0;
	}
	
	protected void closeConn(){
		try {
			if(conn!=null&&!conn.isClosed()){
				try {
					this.conn.close();
				} catch (SQLException e) {
					 
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
	}
}
