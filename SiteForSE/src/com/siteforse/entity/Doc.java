package com.siteforse.entity;

import java.sql.Timestamp;

public class Doc {
	private int docID;
	private String name;
	private Timestamp addDate;
	private String path;

	public Doc(int docID, String name, Timestamp addDate, String path) {
		super();
		this.docID = docID;
		this.name = name;
		this.addDate = addDate;
		this.path = path;
	}

	public Doc() {
		super();
	}

	public int getDocID() {
		return docID;
	}

	public void setDocID(int docID) {
		this.docID = docID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Timestamp getAddDate() {
		return addDate;
	}

	public void setAddDate(Timestamp addDate) {
		this.addDate = addDate;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
