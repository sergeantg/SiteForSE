package com.siteforse.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siteforse.biz.VideoBiz;
import com.siteforse.entity.Video;

public class VideoUploadServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public VideoUploadServlet() {
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		VideoBiz biz = new VideoBiz();

		String name = "";
		String path = "";

		if (request.getParameter("name") != null)
			name = request.getParameter("name");
		if (request.getParameter("path") != null) {
			path = request.getParameter("path");
			int begin = path.indexOf("src=\"") + 5;
			int end = path.indexOf("\"", begin);
			path = path.substring(begin, end);
		}

		if (biz.add(new Video(1, name, null, path)) == 1) {
			out.print("<script type='text/javascript'>"
					+ "var msg='上传成功！';window.alert(msg);window.document.location.href='videoList.jsp';"
					+ "</script>");
		} else {
			out.print("<script type='text/javascript'>"
					+ "var msg='上传失败！';window.alert(msg);window.document.location.href='videoUpload.jsp';"
					+ "</script>");
		}
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
