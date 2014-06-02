<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.siteforse.biz.DocBiz"%>
<%@ page import="com.siteforse.entity.Page"%>
<%
	int index = 1;
	Page myPage = new Page();
	if (request.getAttribute("page") != null) {
		myPage = (Page)request.getAttribute("page");
	}else{
		myPage = new Page(20, new DocBiz().getCount());
	}
	if (request.getParameter("index") != null
			&& request.getParameter("index") != "") {

		index = Integer.parseInt(request.getParameter("index"));	
	}

	request.setAttribute("docList", new DocBiz().getAllByPage(index));
%>

<html>

<head>

<%@include file="head.jsp"%>
<title>课程课件</title>
</head>

<body>
	<%@include file="header.jsp"%>

	<!--main content-->
	<section class="mainContentWrap">
		<div class="container mainContent">
			<ul class="breadcrumb">
				<li><a>课程课件</a></li>
			</ul>
			<div class="row-fluid">
				<div class="span12">
					<h3>课件列表</h3>
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
										href="js/web/viewer.jsp?p=${item.path}" target="_blank">${item.name }</a>
									</td>
									<td>${item.addDate}</td>
									<td><a href="${item.path}">下载</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>
		<ul class="pagination">
			<li><a href="docList.jsp?index=1">首页</a>
			</li>
			<li><a href="docList.jsp?index=<%=myPage.prePage(index)%>">上一页</a>
			</li>
			<%
				for (int i = 1; i <= myPage.getPageCount(); i++) {
					if (index == i) {
			%>
			<li class="active"><span><%=i%></span></li>
			<%
				} else {
			%>
			<li><a href="docList.jsp?index=<%=i%>"><%=i%></a></li>
			<%
				}
				}
			%>
			<li><a href="docList.jsp?index=<%=myPage.nextPage(index)%>">下一页</a>
			</li>
			<li><a href="docList.jsp?index=<%=myPage.getPageCount()%>">末页</a>
			</li>
		</ul>
	</section>
	<%@include file="footer.jsp"%>

	    <a href="#top" id="peBackToTop" class="label btt disabled"><span
        class="icon-chevron-up icon-white"></span> </a>

    <!-- import minified javascript -->
    <script type="text/javascript" src="js/mentor.min.js"></script>
    <script type="text/javascript" src="preview/preview.js"></script>

</body>

</html>