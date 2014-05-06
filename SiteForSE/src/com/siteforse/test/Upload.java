package com.siteforse.test;


import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.*;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;

import com.siteforse.entity.Doc;
import com.sun.xml.internal.stream.Entity;

public class Upload {
	public static void main(String[] args) throws IOException, Exception{
		HttpClient httpclient = new DefaultHttpClient();
		HttpPost httppost = new HttpPost("http://sergeantg-pc:8080/SiteForSE/TestServlet");

		try 
		{
			Doc doc = new Doc(1,"test", null, null);
		    StringEntity entity = new StringEntity(doc.toString(), ContentType.create("text/plain", "UTF-8"));
		    String str = "nihao";;
		    httppost.setEntity(entity);
		    HttpResponse response = httpclient.execute(httppost);
		} 
		catch (ClientProtocolException e) {} 
		catch (IOException e) {}

	}
	
	
}
	
