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
                <li class="active"><a href="teacherIntro.jsp"><i class="icon-user"></i> 教师介绍</a></li>
                <li><a href="textbookIntro.jsp"><i class="icon-book"></i> 教材简介</a></li>
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
                  <div class="span12"><h1>Left Sidebar Template</h1></div>
                </div>
                <img src="img/hanzhi.jpg" alt="韩智">
                
                <div class="row-fluid">
                  <div class="span12"><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilisis libero dolor a purus. Sed vel lacus. Mauris nibh felis, adipiscing varius, adipiscing in, lacinia vel, tellus. Suspendisse ac urna. Etiam pellentesque mauris ut lectus. Nunc tellus ante, mattis eget, gravida vitae, ultricies ac, leo. Integer leo pede, ornare a, lacinia eu, vulputate vel, nisl. Suspendisse mauris. Fusce accumsan mollis eros. Pellentesque a diam sit amet mi ullamcorper vehicula. Integer adipiscing risus a sem. Nullam quis massa sit amet nibh viverra malesuada. Nunc sem lacus, accumsan quis, faucibus non, congue vel, arcu. Ut scelerisque hendrerit tellus. Integer sagittis. Vivamus a mauris eget arcu gravida tristique. Nunc iaculis mi in ante. Vivamus imperdiet nibh feugiat est.</p>
                  
                  <div class="divider dotted clearfix"><span></span></div>
                  
                  </div>
                </div>
                
                <div class="row-fluid">
                  <div class="span6"><h3>Column 1/2</h3><p>Ut convallis, sem sit amet interdum consectetuer, odio augue aliquam leo, nec dapibus tortor nibh sed augue. Integer eu magna sit amet metus fermentum posuere. Morbi sit amet nulla sed dolor elementum imperdiet. Quisque fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque adipiscing eros ut libero. Ut condimentum mi vel tellus. Suspendisse laoreet. Fusce ut est sed dolor gravida convallis. Morbi vitae ante. Vivamus ultrices luctus nunc. Suspendisse et dolor. Etiam dignissim. Proin malesuada adipiscing lacus. Donec metus. Curabitur gravida.</p></div>
                  
                  <div class="span6"><h3>Column 1/2</h3><p>Ut convallis, sem sit amet interdum consectetuer, odio augue aliquam leo, nec dapibus tortor nibh sed augue. Integer eu magna sit amet metus fermentum posuere. Morbi sit amet nulla sed dolor elementum imperdiet. Quisque fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque adipiscing eros ut libero. Ut condimentum mi vel tellus. Suspendisse laoreet. Fusce ut est sed dolor gravida convallis. Morbi vitae ante. Vivamus ultrices luctus nunc. Suspendisse et dolor. Etiam dignissim. Proin malesuada adipiscing lacus. Donec metus. Curabitur gravida.</p></div>
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
