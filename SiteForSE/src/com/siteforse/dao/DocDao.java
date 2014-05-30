package com.siteforse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.siteforse.entity.Doc;

public class DocDao extends BaseDao {
	ArrayList<Doc> list = new ArrayList<Doc>();

	public ArrayList<Doc> getDoc(int docID) {
		sql = "SELECT * FROM doc WHERE DOC_ID=? ORDER BY ADD_DATE DESC";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, docID);
			query();
			while (rs.next()) {
				list.add(new Doc(rs.getInt("DOC_ID"), rs.getString("NAME"), rs
						.getDate("ADD_DATE"), rs.getString("PATH")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}

	public ArrayList<Doc> getAll() {
		sql = "SELECT * FROM doc";
		openConn();
		createPst(sql);
		try {
			query();
			while (rs.next()) {
				list.add(new Doc(rs.getInt("DOC_ID"), rs.getString("NAME"), rs
						.getDate("ADD_DATE"), rs.getString("PATH")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}
	
	public int getCount(){
		int count = 0;
		sql = "SELECT count(POST_ID) FROM post";
		openConn();
		createPst(sql);

		try {
			query();
			while (rs.next()) {
				count = rs.getInt(1);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return count;
	}
	
	public ArrayList<Doc> getAllByPage(int index, int pageSize) {
		sql = "SELECT * FROM doc ORDER BY ADD_DATE DESC LIMIT ?,?";
		openConn();
		createPst(sql);
		try {
			pst.setInt(1, (index-1)*pageSize);
			pst.setInt(2, index*pageSize);
			query();
			while (rs.next()) {
				list.add(new Doc(rs.getInt("DOC_ID"), rs.getString("NAME"), rs
						.getDate("ADD_DATE"), rs.getString("PATH")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}

	public int add(Doc doc) {
		int count = 0;
		sql = "insert into doc (NAME, ADD_DATE, PATH) values(?, ?, ?)";
		openConn();
		createPst(sql);

		try {
			pst.setString(1, doc.getName());
			pst.setDate(2, doc.getAddDate());
			pst.setString(3, doc.getPath());

			count = update();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return count;
	}

	public int del(int ID) {
		int count = 0;
		sql = "DELETE FROM doc where DOC_ID=?";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, ID);
			count = update();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return count;
	}
}
