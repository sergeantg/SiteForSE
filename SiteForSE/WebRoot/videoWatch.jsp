<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<html>

<head>
<%@include file="head.jsp"%>
</head>
<body>

	<%@include file="header.jsp"%>

	<div>
		<video src="G:/电影/水果猎人.The.Fruit.Hunters.中英字幕.WEBrip.720x400.mp4"
			controls="controls">
		</video>
	</div>
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
