package com.siteforse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.siteforse.entity.Video;

public class VideoDao extends BaseDao {
	ArrayList<Video> list = new ArrayList<Video>();

	public ArrayList<Video> getList() {
		sql = "SELECT * FROM video ORDER BY ADD_DATE DESC";
		openConn();
		createPst(sql);

		try {
			query();
			while (rs.next()) {
				list.add(new Video(rs.getInt("VIDEO_ID"), rs.getString("NAME"),
						rs.getDate("ADD_DATE"), rs.getString("PATH")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}

	public ArrayList<Video> getAllByPage(int index, int pageSize) {
		sql = "SELECT * FROM video ORDER BY ADD_DATE DESC LIMIT ?,?";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, (index-1)*pageSize);
			pst.setInt(2, index*pageSize);
			query();
			while (rs.next()) {
				list.add(new Video(rs.getInt("VIDEO_ID"), rs.getString("NAME"),
						rs.getDate("ADD_DATE"), rs.getString("PATH")));

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
	
	public Video get(int id) {
		sql = "SELECT * FROM video WHERE VIDEO_ID=?";

		openConn();
		createPst(sql);

		try {
			pst.setInt(1, id);
			query();
			while (rs.next()) {
				return new Video(rs.getInt("VIDEO_ID"), rs.getString("NAME"),
						rs.getDate("ADD_DATE"), rs.getString("PATH"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return null;
	}

	public int add(Video video) {
		int count = 0;
		sql = "insert into video (NAME, ADD_DATE, PATH) values(?, ?, ?)";
		openConn();
		createPst(sql);

		try {
			pst.setString(1, video.getName());
			pst.setDate(2, video.getAddDate());
			pst.setString(3, video.getPath());

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
		sql = "DELETE FROM video where VIDEO_ID=?";
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
