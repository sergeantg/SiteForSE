package com.siteforse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.siteforse.entity.Doc;

public class DocDao extends BaseDao {
	ArrayList<Doc> list = new ArrayList<Doc>();

	public ArrayList<Doc> getDoc(int docID) {
		sql = "SELECT * FROM doc WHERE DOC_ID=?";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, docID);
			query();
			while (rs.next()) {
				list.add(new Doc(rs.getInt("DOC_ID"), rs.getString("NAME"), rs
						.getTimestamp("ADD_DATE"), rs.getString("PATH")));

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
			Doc tem = new Doc();
			while (rs.next()) {
				list.add(new Doc(rs.getInt("DOC_ID"), rs.getString("NAME"), rs
						.getTimestamp("ADD_DATE"), rs.getString("PATH")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}
}
