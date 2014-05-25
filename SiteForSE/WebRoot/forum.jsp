<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.siteforse.biz.PostBiz"%>
<%@ page import="com.siteforse.entity.Page"%>

<%@ include file="declar.jsp"%>

<%
	int index = 1;
	Page myPage = new Page();
	if (request.getAttribute("page") != null) {
		myPage = (Page) request.getAttribute("page");
	} else {
		myPage = new Page(20, new PostBiz(20).getCount());
	}
	if (request.getParameter("index") != null
			&& request.getParameter("index") != "") {

		index = Integer.parseInt(request.getParameter("index"));
	}
	request.setAttribute("postList", new PostBiz(20).getAllByPage(index));
%>
<html>
<head>
<%@include file="head.jsp"%></head>
<title>互动中心</title>
<body>
	<%@include file="header.jsp"%>
	<section class="mainContentWrap">
		<div class="container mainContent">
			<div class="row-fluid">
				<div class="newpost">
					<a class="btn btn-large btn-info" href="post.jsp"> <i
						class="icon-pencil icon-white"></i> 发新帖 </a>
				</div>

				<div class="psearch">
					<div class="row-fluid body-search">
						<div class="span12 widget_search">
							<form class="form-inline" action="#" method="get" role="search">
								<input type="text" class="input-medium span3"
									placeholder="Search...">
								<button class="icon-search" type="submit"></button>
							</form>
						</div>
					</div>
				</div>

			</div>

			<ul class="discuss_list">
				<li>
					<h3 class="discuss-title">
						【标题】 <span class="icon-jing"></span>
					</h3> <span class="discuss-num">回复数</span> <span class="discuss-time">发表时间</span>
				</li>
				<c:forEach items="${postList }" var="item">
					<li>
						<h3 class="discuss-title">
							<a href="postDetail.jsp?postID=${item.postID }" target="_blank"
								data-gaevent="post_list-list-title:v3.0.0.0:academy">【${item.title}】</a>
							<span class="icon-jing"></span>
						</h3> <span class="discuss-num">${item.replyCount }</span> <span
						class="discuss-time">${item.postTime }</span></li>
				</c:forEach>
			</ul>
		</div>
		<ul class="pagination">
			<li><a href="forum.jsp?index=1">首页</a>
			</li>
			<li><a href="forum.jsp?index=<%=myPage.prePage(index)%>">上一页</a>
			</li>
			<%
				for (int i = 1; i <= myPage.getPageCount(); i++) {
					if (index == i) {
			%>
			<li class="active"><span><%=i%></span></li>
			<%
				} else {
			%>
			<li><a href="forum.jsp?index=<%=i%>"><%=i%></a></li>
			<%
				}
				}
			%>
			<li><a href="forum.jsp?index=<%=myPage.nextPage(index)%>">下一页</a>
			</li>
			<li><a href="forum.jsp?index=<%=myPage.getPageCount()%>">末页</a>
			</li>
		</ul>

	</section>
	<%@include file="footer.jsp"%></body>
</html>