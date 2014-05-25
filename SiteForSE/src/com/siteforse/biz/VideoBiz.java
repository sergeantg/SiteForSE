package com.siteforse.biz;

import java.util.ArrayList;
import java.sql.Date;

import com.siteforse.dao.VideoDao;
import com.siteforse.entity.Video;

public class VideoBiz {

	int pageSize;
	private VideoDao dao;

	public VideoBiz() {
		pageSize = 20;
		dao = new VideoDao();
	}

	public VideoBiz(int pageSize) {
		this.pageSize = pageSize;
		dao = new VideoDao();
	}
	
	public Video get(int id) {
		return dao.get(id);
	}

	public int add(Video video) {
		video.setAddDate(new Date(System.currentTimeMillis()));
		return dao.add(video);
	}

	public int getCount(){
		return dao.getCount();
	}
	
	public ArrayList<Video> getList() {
		return dao.getList();
	}

	public ArrayList<Video> getAllByPage(int index){
		return dao.getAllByPage(index, pageSize);
	}
	
	public int del(int id) {
		return dao.del(id);
	}
}
