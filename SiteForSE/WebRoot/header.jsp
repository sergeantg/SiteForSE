<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <title>Site For SE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta name="description" content="study site" />
    <meta name="author" content="" />

    <!-- CSS styles -->
    <link href="css/mentor.min.css" rel="stylesheet"/>
    <!--Skins: uncomment to activate-->
    <link href="css/skin_blue.css" rel="stylesheet"/>
    <!--<link href="css/skin_orange.css" rel="stylesheet"/>-->


	<!-- http://remysharp.com/2009/01/07/html5-enabling-script/ -->
	<!--[if lt IE 9]>
		<script type="text/javascript">/*@cc_on'abbr article aside audio canvas details figcaption figure footer header hgroup mark meter nav output progress section summary subline time video'.replace(/\w+/g,function(n){document.createElement(n)})@*/</script>
	<![endif]-->
	<script type="text/javascript">(function(H){H.className=H.className.replace(/\bno-js\b/,'js')})(document.documentElement)</script>

    <!-- favicon & iSO touch icons -->
    <link rel="shortcut icon" href="favicon.jpg" />
</head>
  
  <body>
    <!--header and menu-->
    <header class="navbar navbar-fixed-top" id="top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="btnTitle">Menu</span>
					<span class="icon-chevron-down icon-white"></span>
				</a>
				<a class="brand" href="index.html" title="Home"><img src="img/content/logo.png" alt="mentor" /></a>
				<div class="nav-collapse">
					
				  <!--social media icons-->
                  <div class="smedia">
                      
                    <span>Call Us +44 123 456 78</span>
                    <a href="#" data-rel="tooltip" data-position="bottom" title="Get RSS Feed"  class="sm-icon sm-icon-rss"></a>
                    <a href="contact.html" data-rel="tooltip" data-position="bottom" title="Quick Email"  class="sm-icon sm-icon-email"></a>
                    <a href="https://twitter.com/#!/pixelentity" data-position="bottom" data-rel="tooltip" title="Follow Us"  class="sm-icon sm-icon-twitter"></a>
                      
                  </div>
					
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
  </body>
</html>
