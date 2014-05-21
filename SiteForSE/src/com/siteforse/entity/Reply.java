package com.siteforse.entity;

import java.sql.Timestamp;

public class Reply {

	private int postID;
	private int uid;
	private String content;
	private Timestamp postTime;

	public Reply(){}
	public Reply(int postID, int uid, String content, Timestamp postTime) {
		super();
		this.uid = uid;
		this.postID = postID;
		this.content = content;
		this.postTime = postTime;
	}

	public int getPostID() {
		return postID;
	}

	public void setPostID(int postID) {
		this.postID = postID;
	}
	
	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getPostTime() {
		return postTime;
	}

	public void setPostTime(Timestamp postTime) {
		this.postTime = postTime;
	}

}
