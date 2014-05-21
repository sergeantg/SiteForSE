<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
			<ul class="breadcrumb">
				<li><a href="#">关于</a> <span class="divider">/</span></li>
				<li><a href="teacherIntro.jsp">教师介绍</a> <span class="divider">/</span>
				</li>
			</ul>

			<div class="row-fluid">
				<!--sidebar-->
				<aside class="span3 sidebar">

					<div class="well" style="padding: 16px 0;">
						<ul class="nav nav-list">
							<li class="nav-header">关于</li>
							<li><a href="teacherIntro.jsp"><i class="icon-user"></i>
									教师介绍</a>
							</li>
							<li><a href="textbookIntro.jsp"><i class="icon-book"></i>
									教材简介</a>
							</li>
							<li class="active"><a href="courseIntro.jsp"><i
									class="icon-star"></i> 课程简介</a>
							</li>
							<li><a href="about.jsp"><i
									class="icon-info-sign"></i> About Us</a>
							</li>
							<li class="divider"></li>
						</ul>
					</div>


				</aside>
				<!--end sidebar-->

				<!--main content-->

				<div class="span9">
					<div class="row-fluid">
						<div class="innerSpacer left">

							<!--body search widget for mobile-->
							<div class="row-fluid pageTitle">
								<div class="span12">
									<h1>课程简介</h1>
								</div>
							</div>
							<div class="row-fluid">
								<div class="span12">
									<p>软件工程是是以工程化的思想和方法来指导软件开发的整个过程的学科，具有鲜明的实践性。近年来在计算机和信息管理等领域中，它的地位显得越来越重要。不仅大型
										软件项目离不开它，就是一般的，甚至小型软件项目也必须运用它的概念、原则和方法。近年来，软件工程学科发生了巨大变化，从传统的结构化技术占主导地位，发展到面向对象技术占主导地位，继而发展到基于构件的技术成为开发技术主流。

									</p>
									<p>软件工程课程要求学生掌握软件工程的基础知识和理论，分析大型软件开发过程中出现的问题，了解软件开发生命周期中常用的技术，掌握软件开发过程的结构化方法和面向对象方法，学会运用面向对象的软件工程方法进行软件需求分析、系统设计、实现和测试，并通过课程实践，实际运用软件工程的思想和技术，掌握软件项目管理和
										团队开发的工作方法，重点要求学生学会分析问题的思想和方法，直接指导软件开发工作，提高软件开发能力，为今后深更深入地学习和今后从事软件工程实践打下良好的基础

									</p>
									<p>Software engineering is the branch of computer science
										that creates practical, cost-effective solutions to computing
										and information processing problems, preferentially by
										applying scientific knowledge, developing software systems in
										the service of mankind. This course covers the fundamentals of
										software engineering, including understanding system
										requirements, finding appropriate engineering compromises,
										effective methods of design, coding, and testing, team
										software development, and the application of engineering
										tools. The course will combine a strong technical focus with a
										capstone project providing the opportunity to practice
										engineering knowledge, skills, and practices in a realistic
										development setting with a real client</p>

									<div class="divider dotted clearfix">
										<span></span>
									</div>

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
