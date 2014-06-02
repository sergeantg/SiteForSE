<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="test1.jsp"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>在线测试系统</title>

</head>

<body>
	<div class="container mainContent">
	<div class="row-fluid">
	<div class="span9">
	<div id="div2" style="width:180px; height:185px; border:2px dashed #000;margin-bottom:10px;">
		<%
			rs.beforeFirst();
			for (int i = 0; i < 10; i++) {
				rs.next();
				String answer = request.getParameter(rs.getString(1));
				if (answer != null && answer.equals(rs.getString(7))) {
					out.print(i + 1);
					out.print(".");

					out.println("正确，正确答案是");
					out.print(rs.getString(7));
					out.print("<br>");
				}

				else {
					out.print(i + 1);
					out.print(".");
					out.println("错误，正确答案是");
					out.print(rs.getString(7));
					out.print("<br>");
				}

			}
		%>
	</div>
</div>
</div>
</div>

</body>
</html>
