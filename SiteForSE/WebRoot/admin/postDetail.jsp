<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.siteforse.biz.PostBiz"%>
<%
	int postID = 0;
	if (request.getParameter("postID") != null
			&& request.getParameter("postID") != "")
		postID = Integer.parseInt(request.getParameter("postID"));
	request.setAttribute("post", new PostBiz().getPost(postID));
	request.setAttribute("replyList", new PostBiz().getReply(postID));
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>

<title>${post.title}</title>

<script type="text/javascript">
	function reply(posttID) {
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		var content = document.getElementById("content");
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				if (xmlhttp.responseText == "y") {
					alert("回复成功");
					window.top.location.reload();
				} else {
					alert("回复失败");
					window.top.location.reload();
				}
			}
		};
		xmlhttp.open("POST", "ReplyServlet?postID=" + postID + "&content="
				+ content.value, true);
		xmlhttp.send();
	}
</script>
</head>

<body>

	<!-- Themer -->
	<%@include file="themer.html"%>
	<!-- Themer End -->


	<!-- Header Wrapper -->
	<%@include file="header.jsp"%>

	<!-- Main Wrapper -->
	<div id="mws-wrapper">
		<!-- Necessary markup, do not remove -->
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>

		<!-- Sidebar Wrapper -->
		<%@include file="sidebar.jsp"%>


		<!-- Container Wrapper -->
		<div id="mws-container" class="clearfix">

			<!-- Main Container -->
			<div class="container">
				<div class="mws-panel grid_8">
					<div class="mws-panel-header">
						<span class="mws-i-24 i-create">帖子</span>
					</div>
					<div class="mws-panel-body">
						<div class="mws-panel-content">
							<h1>${post.title}</h1>
							<p>${post.content}</p>
						</div>
					</div>
				</div>

                <div class="mws-panel grid_8">
                    <div class="mws-panel-header">
                        <span class="mws-i-24 i-create">回复</span>
                    </div>
                    <div class="mws-panel-body">
                        <div class="mws-panel-content">
                            <c:forEach items="${replyList }" var="item">
                                <h5>${item.postTime}</h5>
                                <c:if test="${item.uid==1}">
                                <h3>管理员</h3>
                                </c:if>
                                <p>${item.content}</p>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <div class="mws-panel grid_8">
                    <div class="mws-panel-header">
                        <span class="mws-i-24 i-create">回复</span>
                    </div>
                    <div class="mws-panel-body">
                            <form class="mws-form" action="ReplyServlet?postID=${post.postID}"
                            method="post">
                            <div class="mws-form-inline">
                                <div class="mws-form-row">
                                    <label>回复</label>
                                    <div class="mws-form-item large">
                                        <textarea name="content" rows="100%" cols="100%"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-button-row">
                                <input type="submit"  class="mws-button blue small" value="回复">
                            </div>
                        </form>
                    </div>
                </div>

			</div>
		</div>
		<!-- End Container Wrapper -->

		<!-- Footer -->
		<%@include file="footer.html"%>
		<!-- End Footer -->

	</div>
    <!-- End Main Container -->
	

	</div>
	<!-- End Main Wrapper -->
</body>
</html>
