package com.siteforse.biz;

import java.sql.Date;
import java.util.ArrayList;

import com.siteforse.dao.*;
import com.siteforse.entity.*;

public class DocBiz {
	int pageSize;
	private DocDao dao;
	private Doc doc;
	ArrayList<Doc> list;

	public DocBiz() {
		super();
		pageSize = 20;
		dao = new DocDao();
		doc = new Doc();
		list = new ArrayList<Doc>();
	}

	public Doc getDoc(int docID) {
		return dao.getDoc(docID).get(0);
	}

	public int getCount(){
		return dao.getCount();
	}
	
	public ArrayList<Doc> getDocList() {
		list = dao.getAll();
		return list;
	}
	
	public ArrayList<Doc> getAllByPage(int index){
		return dao.getAllByPage(index, pageSize);
	}
	
	public int add(Doc doc){
		doc.setAddDate(new Date(System.currentTimeMillis()));
		return dao.add(doc);
	}
	
	public int del(int ID){
		return dao.del(ID);
	}
	
	public int changeName(int ID, String name){
		Doc doc = dao.getDoc(ID).get(0);
		dao.del(ID);
		doc.setName(name);
		return dao.add(doc);
	}
}
