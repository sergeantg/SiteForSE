<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.siteforse.biz.videoBiz"%>

<%
	request.setAttribute("videoList", new VideoBiz().getList());
%>

<html>
<head>
<%@include file="head.jsp"%>
<title>课程视频</title>
</head>
<body>
	<%@include file="header.jsp"%>

	<!--main content-->
	<section class="mainContentWrap">
		<div class="container mainContent">
			<div class="row-fluid">
				<div class="span12">
					<h3>视频列表</h3>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>名称</th>
								<th>添加日期</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${videoList }" var="item">
								<tr>
									<td class="muted"><a
										href="videoWatch.jsp?p=${item.path}" target="_blank">${item.name }</a>
									</td>
									<td>${item.addDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<%@include file="footer.jsp"%>
	<!--back to top button-->
	<a href="#top" id="peBackToTop" class="label btt disabled"><span
		class="icon-chevron-up icon-white"></span> </a>

	<!-- import minified javascript -->
	<script type="text/javascript" src="js/mentor.min.js"></script>
	<script type="text/javascript" src="preview/preview.js"></script>
</body>
</html>