package com.siteforse.test;

import java.util.ArrayList;

import com.siteforse.dao.DocDao;
import com.siteforse.entity.Doc;

public class test {
	
	public static void main(String[] args){
		DocDao dao = new DocDao();
		ArrayList<Doc> list = dao.getDoc(1);
		System.out.print(list.get(1).getName());
	}

}
