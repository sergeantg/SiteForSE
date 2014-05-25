package com.siteforse.entity;

import java.sql.Date;

public class Video {

	private int videoID;
	private String name;
	private Date addDate;
	private String path;

	public Video(int videoID, String name, Date addDate, String path) {
		super();
		this.videoID = videoID;
		this.name = name;
		this.addDate = addDate;
		this.path = path;
	}

	public int getVideoID() {
		return videoID;
	}

	public void setVideoID(int videoID) {
		this.videoID = videoID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getAddDate() {
		return addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
