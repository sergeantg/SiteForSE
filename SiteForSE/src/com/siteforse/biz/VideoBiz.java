package com.siteforse.biz;

import java.util.ArrayList;

import com.siteforse.dao.VideoDao;
import com.siteforse.entity.Video;

public class VideoBiz {

	private VideoDao dao;

	public VideoBiz() {
		dao = new VideoDao();
	}

	public Video get(int id) {
		return dao.get(id);
	}

	public int add(Video video) {
		return dao.add(video);
	}

	public ArrayList<Video> getList() {
		return dao.getList();
	}

	public int del(int id) {
		return dao.del(id);
	}
}
