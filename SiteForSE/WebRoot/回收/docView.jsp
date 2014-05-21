<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@include file="declar.jsp"%>
<%@ page import="com.siteforse.biz.DocBiz"%>
<%
	if (request.getParameter("docID") != null
			&& request.getParameter("docID") != "") {
		int docID = Integer.parseInt(request.getParameter("docID"));

		request.setAttribute("doc", new DocBiz().getDoc(docID));
	}
%>
<html>
<head>
<%@include file="head.jsp"%>
<title>${doc.name}</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<!--main content-->
	<section class="mainContentWrap">
		<div class="container mainContent">
			<iframe id="viewer" src="js/web/viewer.jsp?p=${doc.path}"
				width='1024' height='1024' allowfullscreen webkitallowfullscreen></iframe>
		</div>
	</section>
	<%@include file="footer.jsp"%>
</body>
</html>
