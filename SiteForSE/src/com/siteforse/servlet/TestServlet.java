package com.siteforse.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Iterator;
import java.io.ByteArrayInputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.siteforse.entity.Doc;

public class TestServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public TestServlet() {
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
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		InputStream stream = request.getInputStream();
		String str = convertStreamToString(stream);
		Enumeration<String> e = request.getHeaderNames();
		while(e.hasMoreElements()){
			System.out.println("request header==>"+e.nextElement());
		}

		new ByteArrayInputStream(stream);
		Part part = request.getPart("type");
		if(part!=null)
		System.out.println("part name==>"+part.getName());
		System.out.println("request content==>"+str);
		System.out.println("type==>"+request.getContentType());
	}

	public String convertStreamToString(InputStream is) {   

		   BufferedReader reader = new BufferedReader(new InputStreamReader(is));   

		        StringBuilder sb = new StringBuilder();   

		    

		        String line = null;   

		        try {   

		            while ((line = reader.readLine()) != null) {   

		                sb.append(line + "/n");   

		            }   

		        } catch (IOException e) {   

		            e.printStackTrace();   

		        } finally {   

		            try {   

		                is.close();   

		            } catch (IOException e) {   

		                e.printStackTrace();   

		            }   

		        }   

		    

		        return sb.toString();   

		    }   
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
