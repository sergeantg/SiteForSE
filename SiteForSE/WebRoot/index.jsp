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
				<div class="span12">


					<!--alert error-->
					<div class="alert alert-block alert-error fade in">
						<h4>The Page You Are Looking For Cannot Be Found</h4>
						<br />
						<p>Anim pariatur cliche reprehenderit, enim eiusmod high life
							accusamus terry richardson ad squid. 3 wolf moon officia aute,
							non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
							laborum eiusmod.</p>
						<br /> <a href="contact.html" class="btn btn-danger">Home</a> <a
							href="contact.html" class="btn btn-danger">Contact</a>
					</div>


				</div>
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
