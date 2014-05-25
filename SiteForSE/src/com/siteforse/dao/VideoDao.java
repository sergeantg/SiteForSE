package com.siteforse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.siteforse.entity.Video;

public class VideoDao extends BaseDao {
	ArrayList<Video> list = new ArrayList<Video>();

	public ArrayList<Video> getList() {
		sql = "SELECT * FROM video";
		openConn();
		createPst(sql);

		try {
			query();
			while (rs.next()) {
				list.add(new Video(rs.getInt("VIDEO_ID"), rs.getString("NAME"),
						rs.getTimestamp("ADD_DATE"), rs.getString("PATH")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
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
						rs.getTimestamp("ADD_DATE"), rs.getString("PATH"));

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
		sql = "insert into video (NAME, ADD_TIME, PATH) values(?, ?, ?)";
		openConn();
		createPst(sql);

		try {
			pst.setString(1, video.getName());
			pst.setTimestamp(2, video.getAddTime());
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
