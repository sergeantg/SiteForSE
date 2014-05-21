package com.siteforse.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siteforse.biz.PostBiz;

public class AdminReplyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AdminReplyServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Integer postID = 0;
		String content = "";
		if (request.getParameter("postID") != null&&request.getParameter("postID")!="") {
			postID = Integer.parseInt(request.getParameter("postID"));
		}
		if (request.getParameter("content") != null) {
			content = request.getParameter("content");
		}
		PostBiz biz = new PostBiz();
		if (biz.addReplyAdimin(postID, content) == 1) {
			//out.print("y");
			out.print("<script type='text/javascript'>window.alert('发表成功！');"
					+ "window.document.location.href='postDetail.jsp?postID="+postID+"';</script>");
		} else
			//out.print("n");
			out.print("<script type='text/javascript'>window.alert('发表失败！');"
					+ "window.document.location.href='postDetail.jsp?postID="+postID+"';</script>");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
