<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="declar.jsp"%>
<%@ page import="com.siteforse.biz.PostBiz"%>
<%
	request.setAttribute("postList", new PostBiz().getAll());
%>
<html>
<head>
<%@include file="head.jsp"%></head>

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
				<c:forEach items="${postList }" var="item">
					<li>
						<h3 class="discuss-title">
						 <a href="postDetail.jsp?postID=${item.postID }"
								target="_blank"
								data-gaevent="post_list-list-title:v3.0.0.0:academy">${item.title}</a> 
								<span class="icon-jing"></span>
						</h3> 
						<span class="discuss-num">${item.replyCount }</span> 
						<span class="discuss-time">${item.postTime }</span>
					</li>
				</c:forEach>
			</ul>
		</div>
		<ul class="pagination">
			<li class="active"><span>1</span></li>
			<li><a href="http://mooc.guokr.com/post/?page=2">2</a></li>
			<li><a href="http://mooc.guokr.com/post/?page=3">3</a></li>
			<li><a href="http://mooc.guokr.com/post/?page=4">4</a></li>
			<li><a href="http://mooc.guokr.com/post/?page=5">5</a></li>
			<li><span>...</span></li>
			<li><a href="http://mooc.guokr.com/post/?page=2">下一页</a></li>
			<li><a href="http://mooc.guokr.com/post/?page=154">末页</a></li>
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