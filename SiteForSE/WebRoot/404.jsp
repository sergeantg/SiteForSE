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
			<div class="row-fluid">
				<div class="span9">
					<div class="row-fluid">
						<div class="innerSpacer">

							<!--body search widget for mobile-->
							<div class="row-fluid body-search">
								<div class="span12 widget_search">
									<form class="form-inline" action="#" method="get" role="search">
										<input type="text" class="input-medium span3"
											placeholder="Search...">
										<button class="icon-search" type="submit"></button>
									</form>
								</div>
							</div>

							<div class="row-fluid pageTitle">
								<div class="span12">
									<h1>404 Error</h1>
								</div>
							</div>

							<!--404 error-->
							<div class="row-fluid">
								<div class="span12">


									<!--alert error-->
									<div class="alert alert-block alert-error fade in">
										<h4>The Page You Are Looking For Cannot Be Found</h4>
										<br />
										<p>Anim pariatur cliche reprehenderit, enim eiusmod high
											life accusamus terry richardson ad squid. 3 wolf moon officia
											aute, non cupidatat skateboard dolor brunch. Food truck
											quinoa nesciunt laborum eiusmod.</p>
										<br />
									</div>


								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--footer-->
	<%@include file="footer.jsp"%>


	<!--back to top button-->
	<a href="#top" id="peBackToTop" class="label btt disabled"><span
		class="icon-chevron-up icon-white"></span>
	</a>

	<!-- import minified javascript -->
	<script type="text/javascript" src="js/mentor.min.js"></script>
	<script type="text/javascript" src="preview/preview.js"></script>

</body>
</html>
