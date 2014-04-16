<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
  <head>
    
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta name="description" content="" />
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
    <%@include file="header.jsp" %>
    
    <!--main content-->
    <section class="mainContentWrap">
    <div class="container mainContent">
      <ul class="breadcrumb">
	    <li>
	    <a href="#">关于</a> <span class="divider">/</span>
	    </li>
	    <li>
	    <a href="teacherIntro.jsp">教师介绍</a> <span class="divider">/</span>
	    </li>
	  </ul>
	  </div>
      <div class="container mainContent">
      
        <div class="row-fluid">
          
          
          <!--sidebar-->
          
          <aside class="span3 sidebar">
            
            <div class="well" style="padding: 8px 0;">
              <ul class="nav nav-list">
                <li class="nav-header">关于</li>
                <li><a href="teacherIntro.jsp"><i class="icon-user"></i> 教师介绍</a></li>
                <li><a href="textbookIntro.jsp"><i class="icon-book"></i> 教材简介</a></li>
                <li class="active"><a href="courseIntro.jsp"><i class="icon-star"></i>课程简介</a></li>
                <li ><a href="#"><i class="icon-white icon-info-sign"></i> About Us</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="icon-flag"></i> Help</a></li>
                
              </ul>
            </div>
            
            
            <!--social media widget-->
            
            <div class="widget widget_social">
              <h3>Social Media Widget</h3>
              <a href="#" data-rel="tooltip" title="Pinterest" class="sm-icon sm-icon-pinterest"></a>
              <a href="#" data-rel="tooltip" title="Dribbble" class="sm-icon sm-icon-dribbble"></a>
              <a href="#" data-rel="tooltip" title="Skype" class="sm-icon sm-icon-skype"></a>
              <a href="#" data-rel="tooltip" title="facebook" class="sm-icon sm-icon-facebook"></a>
              <a href="#" data-rel="tooltip" title="Vimeo" class="sm-icon sm-icon-vimeo"></a>
            </div>
            
            
            <!--categories widget-->
            
            <div class="widget widget_categories">
              <h3>Categories</h3>
              <ul>
                <li class="cat-item">
                  <a title="View all posts filed under Business 101" href="#">Business 101</a>(6)
                </li>
                <li class="cat-item">
                  <a title="View all posts filed under Strategy" href="#">Strategy</a>(11)
                </li>
                <li class="cat-item">
                  <a title="View all posts filed under Profit & Loss" href="#">Profit & Loss</a>(25)
                </li>
                <li class="cat-item">
                  <a title="View all posts filed under Startup" href="#">Startup</a>(1)
                </li>
              </ul>
            </div>
            
            
            <!--text widget-->
            
            <div class="widget widget_text">
              <h3>Text Widget 1</h3>
              <div class="textwidget"><p>Lorem ipsum dolor sit amet, consec tetuer adipiscing elit. Phasellus hen drerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapi bus id, mattis vel, nisi. Sed pretium.</p></div> <a href="#"><span class="label">Read More</span></a>
            </div>
            
            
            
            
            
          </aside> <!--end sidebar-->
          
          <!--main content-->
          
          <div class="span9">
            <div class="row-fluid">
              <div class="innerSpacer left">
                
                <!--body search widget for mobile-->
                <div class="row-fluid body-search">
                  <div class="span12 widget_search">
                    <form class="form-inline" action="#" method="get" role="search">
                        <input type="text" class="input-medium span3"  placeholder="Search...">
                        <button class="icon-search" type="submit"></button>
                    </form>
                  </div>  
                </div>
                
                <div class="row-fluid pageTitle">
                  <div class="span12"><h1>课程简介</h1></div>
                </div>
                <div class="row-fluid">
                  <div class="span12" >
                   <p>软件工程是是以工程化的思想和方法来指导软件开发的整个过程的学科，具有鲜明的实践性。近年来在计算机和信息管理等领域中，它的地位显得越来越重要。不仅大型
                    软件项目离不开它，就是一般的，甚至小型软件项目也必须运用它的概念、原则和方法。近年来，软件工程学科发生了巨大变化，从传统的结构化技术占主导地位，发展到面向对象技术占主导地位，继而发展到基于构件的技术成为开发技术主流。

                    </p>
                    <p>软件工程课程要求学生掌握软件工程的基础知识和理论，分析大型软件开发过程中出现的问题，了解软件开发生命周期中常用的技术，掌握软件开发过程的结构化方法和面向对象方法，学会运用面向对象的软件工程方法进行软件需求分析、系统设计、实现和测试，并通过课程实践，实际运用软件工程的思想和技术，掌握软件项目管理和
                    团队开发的工作方法，重点要求学生学会分析问题的思想和方法，直接指导软件开发工作，提高软件开发能力，为今后深更深入地学习和今后从事软件工程实践打下良好的基础

                    </p>
                    <p>Software engineering is the branch of computer science that creates practical, cost-effective solutions to computing and information processing problems, preferentially by applying scientific knowledge, developing software systems in the service of mankind.  This course covers the fundamentals of software engineering, including understanding system requirements, finding appropriate engineering compromises, effective methods of design, coding, and testing, team software development, and the application of engineering tools.  The course will combine a strong technical focus with a capstone project providing the opportunity to practice engineering knowledge, skills, and practices in a realistic development setting with a real client


                </p>
                  
                  <div class="divider dotted clearfix"><span></span></div>
                  
                  </div>
                </div>
            
                
              </div>
            </div>
          </div>
            
          
        </div>
      </div>
    </section>
    <%@include file="footer.jsp" %>
  </body>
</html>
