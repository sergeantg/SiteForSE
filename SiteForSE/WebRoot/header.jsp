<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!--header and menu-->
<header class="navbar navbar-fixed-top" id="top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="btnTitle">菜单</span>
				<span class="icon-chevron-down icon-white"></span>
			</a>
			<a class="brand" href="index.jsp" title="Home"><img src="img/content/logo.png" alt="mentor" /></a>
			<div class="nav-collapse">
				
				<!--main nav-->
				<ul class="nav">
					<li><a href="index.jsp">主页</a></li>
					<li><a href="videoList.jsp">课程视频</a></li>
					<li><a href="docList.jsp">课程课件</a></li>
					<li><a href="forum.jsp">互动中心</a></li>
					<li class="dropdown">
						<a href="#">关于<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="teacherIntro.jsp">教师介绍</a></li>
							<li><a href="textbookIntro.jsp">教材介绍</a></li>
							<li><a href="courseIntro.jsp">课程简介</a></li>
						</ul>
					</li>
				</ul>
				<!--end main nav-->
				
			</div><!--end main menu-->
				
		</div>
	</div>
</header>
