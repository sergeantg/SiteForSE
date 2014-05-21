package com.siteforse.entity;

import java.sql.Timestamp;

public class Post {

	private int postID;
	private int uid;
	private String title;
	private String content;
	private int replyCount;
	private Timestamp postTime;

	
	public Post() {
		super();
	}

	public Post(int postID, int uid, String title, String content, int replyCount,
			Timestamp postTime) {
		super();
		this.postID = postID;
		this.uid = uid;
		this.title = title;
		this.content = content;
		this.replyCount = replyCount;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public Timestamp getPostTime() {
		return postTime;
	}

	public void setPostTime(Timestamp postTime) {
		this.postTime = postTime;
	}

}
