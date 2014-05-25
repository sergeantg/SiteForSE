package com.siteforse.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.util.Streams;

import com.siteforse.biz.DocBiz;
import com.siteforse.entity.Doc;
import com.siteforse.tools.UploadImg;

public class DocUploadServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DocUploadServlet() {
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

		String fileName = "";
		DocBiz biz = new DocBiz();
		Doc doc = new Doc();
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("UTF-8");

		File saveDir = UploadImg.upImgSaveDir(request, "doc/upload");
		File tempDir = UploadImg.upImgTempDir(request, "doc/temp");
		Iterator ite = UploadImg.upImgIte(request, saveDir, tempDir);

		while (ite != null && ite.hasNext()) {
			FileItem fi = (FileItem) ite.next();

			if (fi.isFormField()) {
				if ("name".equals(fi.getFieldName())) {
					doc.setName(fi.getString("UTF-8"));
				}
			} else if (!fi.isFormField()) {
				String fileExt = fi.getName().substring(
						fi.getName().lastIndexOf("."));
				fileName = "/" + System.currentTimeMillis() + ""
						+ Math.abs((new Random()).nextInt()) + fileExt;

				BufferedInputStream in = new BufferedInputStream(
						fi.getInputStream());
				BufferedOutputStream bout = new BufferedOutputStream(
						new FileOutputStream(new File(saveDir + fileName)));
				Streams.copy(in, bout, true);

				fileName = "/SiteForSE/doc/upload" + fileName;
				doc.setPath(fileName);
			}

		}
		if (biz.add(doc) == 1) {
			out.print("<script type='text/javascript'>"
					+ "var msg='上传成功！';window.alert(msg);window.document.location.href='docUpload.jsp';"
					+ "</script>");
		} else {
			out.print("<script type='text/javascript'>"
					+ "var msg='上传失败！';window.alert(msg);window.document.location.href='docUpload.jsp';"
					+ "</script>");
		}

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
