package com.siteforse.entity;

import java.sql.Timestamp;

public class Video {

	private int videoID;
	private String name;
	private Timestamp addTime;
	private String path;

	public Video(int videoID, String name, Timestamp addTime, String path) {
		super();
		this.videoID = videoID;
		this.name = name;
		this.addTime = addTime;
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

	public Timestamp getAddTime() {
		return addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
