package com.siteforse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.siteforse.entity.Doc;

public class DocDao extends BaseDao {

	public ArrayList<Doc> getDoc(int index) {
		sql = "SELECT * FROM doc";
		ArrayList<Doc> list = new ArrayList<Doc>();
		openConn();
		createPst(sql);

		try {
			query();
			while (rs.next()) {
				list.add(new Doc(
						rs.getInt("INDEX"),
						rs.getString("NAME"),
						rs.getTimestamp("ADD_DATE"),
						rs.getString("PATH")
						));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}
}
