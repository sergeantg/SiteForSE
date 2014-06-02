<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.sina.util.SaeUserInfo"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
     <%
     String drv="com.mysql.jdbc.Driver";
     String url="jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_siteforse?characterEncoding=utf8";//"jdbc:mysql://localhost:3306/siteforse";
     String usr=SaeUserInfo.getAccessKey();//"root";
     String pwd=SaeUserInfo.getSecretKey();//"";
     %>
  </body>
</html>
