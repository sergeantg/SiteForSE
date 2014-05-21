<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<html>

<head>
<%@include file="head.jsp"%>
</head>
<body>

	<%@include file="header.jsp"%>

	<section class="mainContentWrap">
		<div class="container mainContent">
			<div class="row-fluid">

				<div id="video" class="span12" align ="center">
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
	<script type="text/javascript">
	    var t =  '<iframe height=498 width=510  src="http://player.youku.com/embed/XNzEwNzY4NzUy" frameborder=0 allowfullscreen></iframe>';
        document.getElementById('video').innerHTML= t;
    </script>

</body>
</html>
