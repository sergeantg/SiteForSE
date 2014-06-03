<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<html>

<head>
<%@include file="head.jsp"%>
<title>教师介绍</title>
</head>

<body>
	<%@include file="header.jsp"%>

	<!--main content-->
	<section class="mainContentWrap">
		<div class="container mainContent">
			
			<ul class="breadcrumb">
				<li><a>关于</a> <span class="divider">/</span></li>
				<li><a>About Us</a></li>
			</ul>


			<div class="row-fluid">


				<!--sidebar-->

				<aside class="span3 sidebar">

					<div class="well" style="padding: 16px 0;">
						<div class="row-fluid">
						<ul class="nav nav-list">
							<li class="nav-header">关于</li>
							<li><a href="teacherIntro.jsp"><i
									class="icon-user"></i> 教师介绍</a>
							</li>
							<li><a href="textbookIntro.jsp"><i class="icon-book"></i>
									教材简介</a>
							</li>
							<li  class="active"><a href="about.jsp"><i
									class="icon-info-sign"></i> About Us</a>
							</li>
							<li class="divider"></li>

						</ul>
					</div>
					</div>

				</aside>
				<!--end sidebar-->

				<!--main content-->

				<div class="span9">
					<div class="row-fluid">
						<div class="innerSpacer left">

							<div class="row-fluid pageTitle">
								<div class="span12">
									<h1>关于软件工程教学网站</h1>
								</div>
							</div>

							<div class="row-fluid">
								<div class="span12">
									<h4>概况</h4>
									<p>软件工程教学网站是一个有效实用的教育平台，在这里你可以在线查看课件，观看教学视频，提出问题参与互动，在线做练习，我们希望借此能够帮助大家更好地学习和理解软件工程。</p>
									<h4>本站禁止</h4>  
									
                                      <p>针对种族、国家、民族、宗教、性别、年龄、地缘、性取向、生理特征的歧视和仇恨言论；</p>
                                      <p>不雅词句、人身攻击、故意骚扰和恶意使用；</p>
                                      <p>色情、激进时政、意识形态方面的话题</p>
                                      
                                      <p>违反中国或我爱南开BBS成员所在地法律法规的行为和内容（相关政策法规）；</p>
                                      <p>威胁他人或我爱南开BBS成员自身的人身安全、法律安全的行为；
                                  对网站的运营安全有潜在威胁的内容</p>
                                 
								</div>
							</div>


						</div>
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
