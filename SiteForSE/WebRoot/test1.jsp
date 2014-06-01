<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="inc.jsp"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>课程测试</title>

</head>

<body style="background:url('image/3.jpg') no-repeat;">
	
	<div id="div1" style="position: absolute; left: 370px; top: 0px;">
		<a href="index.jsp">返回</a>
		<form action="proc.jsp" method="post">
			<%
				String sql = "select * from questions order by rand() limit 10";
				String str;
				Class.forName(drv).newInstance();
				Connection conn = DriverManager.getConnection(url, usr, pwd);
				Statement stm = conn.createStatement();
				ResultSet rs = stm.executeQuery(sql);
				for (int i = 0; i < 10; i++) {
					rs.next();
					out.print("<br>");
					out.print(i + 1);
					out.print(".");
					out.print(rs.getString("QuestionsContent"));
					out.print("<br>");
			%>


			<input type="radio" name="<%=rs.getString(1)%>" value="A" />A.<%=rs.getString("QuestionsAnswer_A")%>
			<br> <input type="radio" name="<%=rs.getString(1)%>" value="B" />B.<%=rs.getString("QuestionsAnswer_B")%>
			<br> <input type="radio" name="<%=rs.getString(1)%>" value="C" />C.<%=rs.getString("QuestionsAnswer_C")%>
			<br> <input type="radio" name="<%=rs.getString(1)%>" value="D" />D.<%=rs.getString("QuestionsAnswer_D")%>
			<br>
			<%
				}
			%>

			<br> <input type="submit" name="n" value="提交">
			<a href="index.jsp">返回</a>

		</form>
</body>
</html>
