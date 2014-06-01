<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
    <%@ page import="java.sql.*"%>
     <%
     String drv="com.mysql.jdbc.Driver";
     String url="jdbc:mysql://localhost:3306/siteforse";
     String usr="root";
     String pwd="123456";%>
  </body>
</html>
