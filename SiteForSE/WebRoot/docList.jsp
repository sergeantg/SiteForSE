<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="declar.jsp"%>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
	<%@include file="header.jsp"%>

	<!--main content-->
	<section class="mainContentWrap">
		<div class="container mainContent">

			<div class="row-fluid">
				<div class="span12">
					<h3>Tables</h3>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>名称</th>
								<th>添加日期</th>
								<th>下载</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${docList }" var="item">
								<tr>
									<td class="muted"><a
										href="DocViewServlet?docID=${item.docID}">${item.name }</a>
									</td>
									<td>${item.addDate}</td>
									<td><a href="<%=basePath%>${item.path}">下载</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</section>
	<%@include file="footer.jsp"%>
</body>
</html>