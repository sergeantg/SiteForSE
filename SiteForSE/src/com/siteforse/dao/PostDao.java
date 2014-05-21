package com.siteforse.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.siteforse.entity.Post;
import com.siteforse.entity.Reply;

public class PostDao extends BaseDao {
	private ArrayList<Post> list = new ArrayList<Post>();
	private ArrayList<Reply> rlist = new ArrayList<Reply>();

	public ArrayList<Post> get(int ID) {
		sql = "SELECT * FROM post WHERE POST_ID=?";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, ID);
			query();
			while (rs.next()) {
				list.add(new Post(rs.getInt("POST_ID"), rs.getInt("UID"), rs.getString("TITLE"),
						rs.getString("CONTENT"), rs.getInt("REPLY_COUNT"), rs
								.getTimestamp("POST_TIME")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}

	public ArrayList<Post> getOverview(int ID) {
		sql = "SELECT * FROM post WHERE POST_ID=?";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, ID);
			query();
			while (rs.next()) {
				list.add(new Post(rs.getInt("POST_ID"), rs.getInt("UID"), rs.getString("TITLE"),
						rs.getString("CONTENT"), rs.getInt("REPLY_COUNT"), rs
								.getTimestamp("POST_TIME")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}

	public ArrayList<Post> getAll() {
		sql = "SELECT * FROM post";
		openConn();
		createPst(sql);

		try {
			query();
			while (rs.next()) {
				list.add(new Post(rs.getInt("POST_ID"), rs.getInt("UID"), rs.getString("TITLE"),
						rs.getString("CONTENT"), rs.getInt("REPLY_COUNT"), rs
								.getTimestamp("POST_TIME")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return list;
	}

	public ArrayList<Reply> getReply(int ID) {
		sql = "SELECT * FROM reply WHERE POST_ID=?";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, ID);
			query();
			while (rs.next()) {
				rlist.add(new Reply(rs.getInt("POST_ID"), rs.getInt("UID"), rs
						.getString("CONTENT"), rs.getTimestamp("POST_TIME")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return rlist;
	}

	public int add(Post p) {
		int count = 0;
		sql = "insert into post (UID, TITLE, CONTENT) values (?,?, ?)";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, p.getUid());
			pst.setString(2, p.getTitle());
			pst.setString(3, p.getContent());

			count = update();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConn();
		}
		return count;
	}
	
	public int addReply(Reply r){
		int count = 0;
		sql = "insert into reply (POST_ID, UID, CONTENT) values (?, ?, ?)";
		openConn();
		createPst(sql);

		try {
			pst.setInt(1, r.getPostID());
			pst.setInt(2, r.getUid());
			pst.setString(3, r.getContent());

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
		sql = "DELETE FROM post where POST_ID=?";
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
