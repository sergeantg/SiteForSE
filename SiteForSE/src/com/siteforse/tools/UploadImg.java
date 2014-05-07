package com.siteforse.tools;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;

public class UploadImg {
	@SuppressWarnings({ "deprecation", "rawtypes" })
	public static String uploadimg(HttpServletRequest request,String saveurl,String tempurl){
		String fileName = null;
		File saveDir = new File(request.getRealPath("/") + saveurl);
		File tempDir = new File(request.getRealPath("/") + tempurl);
		File file = null;
		if(!saveDir.exists()){
			saveDir.mkdirs();
		}
		if(!tempDir.exists()){
			tempDir.mkdirs();
		}
		
		if (ServletFileUpload.isMultipartContent(request)) {
			//request.setCharacterEncoding("UTF-8");
			DiskFileItemFactory dfif = new DiskFileItemFactory();
			dfif.setRepository(tempDir);
			dfif.setSizeThreshold(1 * 1024);
			ServletFileUpload sfu = new ServletFileUpload(dfif);
			sfu.setFileSizeMax(300 * 1024);  
			sfu.setSizeMax(30 * 1024 * 1024);

			List items = null;
			try {
				items = sfu.parseRequest(request);
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
//				e.printStackTrace();
				fileName = null;
				return fileName;
			}
			Iterator ite = null;
			if (items != null) {
				ite = items.iterator();
			}
			
			while (ite != null && ite.hasNext()) {
				FileItem fi = (FileItem) ite.next();
				if (!fi.isFormField()) {
					String fileExt = fi.getName().substring(fi.getName().lastIndexOf("."));
					fileName = "/"+System.currentTimeMillis()+""+Math.abs((new Random()).nextInt())+fileExt;
					
					BufferedInputStream in;
					try {
						in = new BufferedInputStream(
								fi.getInputStream());
						file = new File(saveDir + fileName);
						BufferedOutputStream out = new BufferedOutputStream(
								new FileOutputStream(file));
						Streams.copy(in, out, true);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			}
		}
		return fileName;
	}
	
	@SuppressWarnings("deprecation")
	public static File upImgSaveDir(HttpServletRequest request,String saveurl){
		File saveDir = new File(request.getRealPath("/") + saveurl);
		if(!saveDir.exists()){
			saveDir.mkdirs();
		}
		return saveDir;
	}
	@SuppressWarnings("deprecation")
	public static File upImgTempDir(HttpServletRequest request,String tempurl){
		File tempDir = new File(request.getRealPath("/") + tempurl);
		if(!tempDir.exists()){
			tempDir.mkdirs();
		}
		return tempDir;
	}
	@SuppressWarnings("rawtypes")
	public static Iterator upImgIte(HttpServletRequest request,File saveDir,File tempDir){
		Iterator ite = null;
		if (ServletFileUpload.isMultipartContent(request)) {
			DiskFileItemFactory dfif = new DiskFileItemFactory();
			dfif.setRepository(tempDir);
			dfif.setSizeThreshold(1 * 1024);
			ServletFileUpload sfu = new ServletFileUpload(dfif);
			sfu.setFileSizeMax(30000 * 1024);  
			sfu.setSizeMax(256 * 1024 * 1024); 

			List items = null;
			try {
				items = sfu.parseRequest(request);
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (items != null) {
				ite = items.iterator();
			}
		}
		return ite;
	}
}