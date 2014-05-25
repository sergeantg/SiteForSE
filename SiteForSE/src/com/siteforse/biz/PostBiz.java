package com.siteforse.biz;

import java.util.ArrayList;

import com.siteforse.dao.PostDao;
import com.siteforse.entity.Post;
import com.siteforse.entity.Reply;

public class PostBiz {

	private int pageSize;
	private PostDao dao;

	public PostBiz(){
		super();
		pageSize = 20;
		dao = new PostDao();
	}
	public PostBiz(int size){
		super();
		pageSize = size;
		dao = new PostDao();
	}
	public Post getPost(int ID) {
		ArrayList<Post> temp = new ArrayList<Post>();
		temp = dao.get(ID);
		if(!temp.isEmpty())
			return temp.get(0);
		return new Post();
	}

	public int getCount(){
		return dao.getCount();
	}
	public ArrayList<Post> getAll(){
		return dao.getAll();
	}
	
	public ArrayList<Post> getAllByPage(int index){
		return dao.getAllByPage(index, pageSize);
	}
	
	public ArrayList<Reply> getReply(int ID) {
		return dao.getReply(ID);
	}

	public int addPost(String title, String content) {
		Post tem = new Post();
		tem.setUid(0);
		tem.setTitle(title);
		tem.setContent(content);
		return dao.add(tem);
	}
	
	public int addPostAdmin(String title, String content) {
		Post tem = new Post();
		tem.setUid(1);
		tem.setTitle(title);
		tem.setContent(content);
		return dao.add(tem);
	}

	public int addReply(int postID, String content) {
		Reply tem = new Reply();
		tem.setUid(0);
		tem.setPostID(postID);
		tem.setContent(content);
		return dao.addReply(tem);
	}
	
	public int addReplyAdimin(int postID, String content) {
		Reply tem = new Reply();
		tem.setUid(1);
		tem.setPostID(postID);
		tem.setContent(content);
		return dao.addReply(tem);
	}
	
	public int delPost(int ID) {
		return dao.del(ID);
	}
}
