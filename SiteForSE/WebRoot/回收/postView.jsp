<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@include file="declar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="declar.jsp"%>
<%@ page import="com.siteforse.biz.PostBiz"%>
<%
	int postID = 0;
	if(request.getParameter("postID")!=null&&request.getParameter("postID")!=""){

		postID = Integer.parseInt(request.getParameter("postID"));
	}
	request.setAttribute("post", new PostBiz().getPost(postID));
	request.setAttribute("replyList", new PostBiz().getReply(postID));
%>

<html>
<head>
	<%@include file="head.jsp"%></head>
	<title>${post.title }</title>

	<body>
		<%@include file="header.jsp"%>
		<section class="mainContentWrap">
			<div class="container mainContent">
				<div class="row-fluid">
					<div class="span12 post full">
						<div class="well">
							<div class="row-fluid">
								<div class="span12 post-title">
									<h3>
										<a href="forum.jsp">${post.title}</a>
									</h3>
									<p class="post-meta">
										发表于${post.postTime }
									</p>
								</div>
							</div>
							<!--post image-->
							<div class="row-fluid">
								<div class="span12">
									<!--no post image--> </div>
								</div>
								<!--post content-->
								<div class="contentWrap">
									<div class="row-fluid">
										<div class="span12">
											<p>${post.content}</p>
										</div>
									</div>
									<!--end post content--> </div>
								</div>
							</div>
							<!--end share buttons--> 
						</div>
						<div class="row-fluid" id="comments">
							<div class="well">
								<div class="span12 commentsWrap">

									<!--title-->
									<div class="row-fluid">
										<div class="span12">
											<h1 id="comments-title">评论</h1>
										</div>
									</div>

									<ul class="commentlist">
									<c:forEach items="${replyList}" var="item">
										<li class="comment even depth-1">

											<!--comment body-->
											<div class="row-fluid comment-body">
												<div class="span1 comment-author vcard"><img class="avatar" src="img/content/avatar.jpg" alt="avatar"></div>

												<div class="span11">
													<cite class="fn"><a href="http://pixelentity.com/" rel="external nofollow" class="url">Username</a></cite>
													<div class="comment-meta">
														<a href="#">${item.postTime}</a>
													</div>
													<p>${item.content }</p>
												</div>
											</div>
											<!--end top level comment body-->

										</li>
									</c:forEach>
									</ul>
									<!--end commentlist-->

									<div id="respond">
										<div class="row-fluid">
											<div class="span12">
												<h3 id="reply-title">发表回复</h3>
											</div>
										</div>

										<!--comment form-->
										<div class="row-fluid">
											<div class="span12">
												<form action="ReplyServlet?postID=${post.postID}" method="post" id="commentform" class="form-horizontal">

													<div class="comment-form-comment control-group">
														<div class="controls">
															<textarea class="span7" id="comment" name="content" cols="45" rows="8" aria-required="true" placeholder="评论内容.." style="margin: 0px; width: 530px; height: 228px;"></textarea>
														</div>
														<!--<label class="control-label" for="comment">Comment</label>-->
													</div>

													<div class="form-submit">
														<div class="controls">
															<button class="btn btn-success" type="submit">回复</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<!--end comment form-->


									</div>
									<!--end respond--> 

								</div>
								<!--end comments wrap-->
							</div>
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