<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<html>

<head>
<%@include file="head.jsp"%>
<title>软件工程在线学习</title>
<link href="slide.css" media="screen, projection" rel="stylesheet" type="text/css" />
</head>

<body>

	<%@include file="header.jsp"%>
	<!--main content-->
      <section class="mainContentWrap">
		<div class="container mainContent">
		 			<div class="row-fluid">
				         <div class="span12">



                          <a href="#"><img src="img/content/SoftwareEngineering.jpg" alt="Image" /></a>



					      </div>





					      	<input checked="" type="radio" name="respond" id="desktop">
	<input type="radio" name="respond" id="tablet">
	<input type="radio" name="respond" id="mobile">
	
	<article id="slider">
		

		<!-- MaxWidth Options -->
		
		<div class="respond">
		
			<label class="desktop" for="desktop"></label>
			<label class="tablet" for="tablet"></label>
			<label class="mobile" for="mobile"></label>
			<p><strong>Important:</strong> If you want to resize the window manually, leave at desktop resolution. Or you can just click an icon.</p>
		
		</div> <!-- .respond -->
		
	
		<!-- Slider Setup -->
	
		<input checked="" type="radio" name="slider" id="slide1">
		<input type="radio" name="slider" id="slide2">
		<input type="radio" name="slider" id="slide3">
		<input type="radio" name="slider" id="slide4">
		<input type="radio" name="slider" id="slide5">
	
	
		<!-- The Slider -->
		
		<div id="slides">
		
			<div id="overflow">
			
				<div class="inner">
				
					<article>
						<div class="info"><h3>Cloud Dragon</h3> by <a href="http://voyager3.tumblr.com">Brendan Zabarauskas</a></div>
						<img src="img/content/port10.jpg">
					</article>
					
					<article>
						<div class="info"><h3>Mountain Fort</h3> by <a href="http://voyager3.tumblr.com">Brendan Zabarauskas</a></div>
						<img src="img/content/proj01.jpg">
					</article>
					
					<article>
						<div class="info"><h3>Mountain Outpost</h3> by <a href="http://voyager3.tumblr.com">Brendan Zabarauskas</a></div>
						<img src="img/content/proj04.jpg">
					</article>
					
					<article>
						<div class="info"><h3>Cliffs</h3> by <a href="http://voyager3.tumblr.com">Brendan Zabarauskas</a></div>
						<img src="img/content/proj03.jpg">
					</article>
					
					<article>
						<div class="info"><h3>Hill Fort</h3> by <a href="http://voyager3.tumblr.com">Brendan Zabarauskas</a></div>
						<img src="img/content/proj02.jpg">
					</article>
					
				</div> <!-- .inner -->
				
			</div> <!-- #overflow -->
		
		</div> <!-- #slides -->
	
	
		<!-- Controls and Active Slide Display -->
	
		<div id="controls">

			<label for="slide1"></label>
			<label for="slide2"></label>
			<label for="slide3"></label>
			<label for="slide4"></label>
			<label for="slide5"></label>
		
		</div> <!-- #controls -->
		
		<div id="active">

			<label for="slide1"></label>
			<label for="slide2"></label>
			<label for="slide3"></label>
			<label for="slide4"></label>
			<label for="slide5"></label>
			
		</div> <!-- #active -->











				    </div>
			</div>
	
	</section>



	<!--footer-->
	<%@include file="footer.jsp"%>


	<!--back to top button-->
	<a href="#top" id="peBackToTop" class="label btt disabled"><span
		class="icon-chevron-up icon-white"></span> </a>

	<!-- import minified javascript -->
	<script type="text/javascript" src="js/mentor.min.js"></script>
	<script type="text/javascript" src="preview/preview.js"></script>

</body>
</html>
