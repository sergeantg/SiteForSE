package com.siteforse.biz;

import java.util.ArrayList;

import com.siteforse.dao.*;
import com.siteforse.entity.*;

public class DocBiz {
	private DocDao dao;
	private Doc doc;
	ArrayList<Doc> list;

	public DocBiz() {
		super();
		dao = new DocDao();
		doc = new Doc();
		list = new ArrayList<Doc>();
	}

	public Doc getDoc(int docID) {
		return dao.getDoc(docID).get(0);
	}

	public ArrayList<Doc> getDocList() {
		list = dao.getAll();
		return list;
	}
}
