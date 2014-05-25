package com.siteforse.entity;

public class Page {
	private int pageCount;
	private int pageSize;
	private int count;
	private int prePage;
	private int nextPage;

	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Page(int pageSize, int count) {
		super();

		this.pageSize = pageSize;
		this.count = count;

		if (count % pageSize == 0)
			pageCount = count / pageSize;
		else
			pageCount = count / pageSize + 1;
	}

	public int prePage(int pageNum) {
		if (pageNum <= 1) {
			return 1;
		} else
			return pageNum - 1;
	}

	public int nextPage(int pageNum) {
		if (pageNum >= pageCount) {
			return pageCount;
		} else
			return pageNum + 1;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
}