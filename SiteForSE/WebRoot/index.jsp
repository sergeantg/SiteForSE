<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<html>

<head>
<%@include file="head.jsp"%>
<title>软件工程在线学习</title>
<link href="css/slide.css" media="screen, projection" rel="stylesheet" type="text/css" />
</head>

<body>

<%@include file="header.jsp"%>
<!--main content-->
<section class="mainContentWrap">
	<div class="container mainContent">
		<div class="row-fluid">
			<div class="span12">

				<article id="slider">
					<!-- Slider Setup -->

					<input checked="" type="radio" name="slider" id="slide1">
					<input type="radio" name="slider" id="slide2">
					<input type="radio" name="slider" id="slide3">
					<input type="radio" name="slider" id="slide4">

					<!-- The Slider -->

					<div id="slides">

						<div id="overflow">

							<div class="inner">

								<article>

									<img src="img/content/What-is-Software-Engineering-11.jpg"></article>

								<article>

									<img src="img/content/newLogo.GIF"></article>

								<article>

									<img src="img/content/software_engineering_explained.jpg"></article>

								<article>

									<img src="img/content/image_4.png"></article>

							</div>
							<!-- .inner -->

						</div>
						<!-- #overflow -->

					</div>
					<!-- #slides -->

					<!-- Controls and Active Slide Display -->

					<div id="controls">

						<label for="slide1"></label>
						<label for="slide2"></label>
						<label for="slide3"></label>
						<label for="slide4"></label>

					</div>
					<!-- #controls -->

					<div id="active">

						<label for="slide1"></label>
						<label for="slide2"></label>
						<label for="slide3"></label>
						<label for="slide4"></label>

					</div>
					<!-- #active -->
				</article>

				</div>
			</div>
	</div>

</section>

		<!--footer-->
		<%@include file="footer.jsp"%>

		<!--back to top button-->
		<a href="#top" id="peBackToTop" class="label btt disabled">
			<span class="icon-chevron-up icon-white"></span>
		         
		</a>

		<!-- import minified javascript -->
		<script type="text/javascript" src="js/mentor.min.js"></script>
		<script type="text/javascript" src="preview/preview.js"></script>

</body>
</html>
