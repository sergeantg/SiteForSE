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
	    <a href="teacherIntro.jsp">教材简介</a> <span class="divider">/</span>
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
                <li class="active"><a href="textbookIntro.jsp"><i class="icon-book"></i> 教材简介</a></li>
                <li><a href="courseIntro.jsp"><i class="icon-star"></i>课程简介</a></li>
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
                  <div class="span12"><h1>教材简介</h1></div>
                </div>
                    <!--row 1-->
                    <div class="row-fluid">
                      <div class="span6 peIsotopeItem filter-link filter-image">
                        
                        <div class="portfolioItem">
                            <img src="img/content/se.jpg" alt="project" />
                             <span></span>
                          
                          <div class="title">
                            <span class="icon-file"></span><a href="http://s.etao.com/search?q=%C8%ED%BC%FE%B9%A4%B3%CC%A3%BA%CA%B5%BC%F9%D5%DF%B5%C4%D1%D0%BE%BF%B7%BD%B7%A8%A3%A8%D4%AD%CA%E9%B5%DA7%B0%E6%A3%A9&initiative_id=wwwetao_20140416">软件工程：实践者的研究方法（原书第7版）</a>
                          </div>
                          <p>Roger S. Pressman著，郑人杰 等译，机械工业出版社</p>
                        </div>  
                      </div>
                      
                      
                      <div class="span6 peIsotopeItem filter-image filter-lightbox filter-project">
                        
                        <div class="portfolioItem">

                            <img src="img/content/se1.png" alt="project" />
                             <span></span>
                        
                          <div class="title">
                            <span class="icon-film"></span><a href="http://s.etao.com/search?q=%C8%ED%BC%FE%B9%A4%B3%CC%A3%A8%D4%AD%CA%E9%B5%DA9%B0%E6%A3%A9&initiative_id=setao_20140416&style=grid">软件工程（原书第9版）</a>
                          </div>
                          <p>Ian Sommerville 著，程成 等译，机械工业出版社</p>
                        </div>  
                      </div>
                      
                    </div>
                    <!--end row 1-->

                    <!--row 2-->
                    <div class="row-fluid">
                      <div class="span6 peIsotopeItem">
                        
                        <div class="portfolioItem">
                            <img src="img/content/seoo.jpg" alt="project" />
                             <span></span>
              
                          <div class="title">
                            <span class="icon-picture"></span><a href="http://s.etao.com/search?q=%C3%E6%CF%F2%B6%D4%CF%F3%D3%EB%B4%AB%CD%B3%C8%ED%BC%FE%B9%A4%B3%CC&initiative_id=setao_20140416&style=grid">面向对象与传统软件工程（原书第8版)</a>
                          </div>
                          <p>Stephen R.Schach著，机械工业出版社</p>
                        </div>  
                      </div>
                      
                      
                      <div class="span6 peIsotopeItem filter-project filter-video">
                        
                        <div class="portfolioItem">
                            <img src="img/content/seitr.png" alt="project" />
                             <span></span>
                          
                          <div class="title">
                            <span class="icon-film"></span><a href="http://s.etao.com/search?q=%C8%ED%BC%FE%B9%A4%B3%CC%B5%BC%C2%DB%A3%A8%B5%DA5%B0%E6%A3%A9&initiative_id=setao_20140416&style=grid">软件工程导论（第5版）</a>
                          </div>
                          <p>张海藩著，清华大学出版社</p>
                        </div>  
                      </div>
                      
                    </div>
                    <!--end row 2-->

                
                <div class="row-fluid">
                  <div class="span12" >
                  
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
