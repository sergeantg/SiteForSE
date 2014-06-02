<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>
<%@ page import="com.siteforse.biz.VideoBiz"%>
<%
	request.setAttribute("video", new VideoBiz().get(Integer.parseInt(request.getParameter("id"))));
%>
<html>

<head>
<%@include file="head.jsp"%>
<title>正在播放 ${video.name}</title>
</head>
<body>

	<%@include file="header.jsp"%>

	<section class="mainContentWrap">
		<div class="container mainContent">
		<ul class="breadcrumb">
				<li><a >正在播放</a> <span class="divider">/</span>
				</li>
				<li><a >${video.name }</a></span>
				</li>
			</ul>
			<div class="row-fluid">

				<div  id="video" class="span12" align ="center">




						<iframe id="tudou"  width=100%  height=100% src="${video.path }" frameborder=0 allowfullscreen ></iframe>	

					</div>
				</div>
<!-- 				<div class="span12">
	<video src="1.mp4" width=100% height=100% controls="controls"></video>
</div>
                 -->



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

        document.getElementById("tudou").src="${video.path }";
        document.getElementById("tudou").height=document.body.clientWidth/2.2;

        //播放本地服务器视频的实现
        // var nvideo=document.createElement("video");
        // var src1=document.createElement("source");
        // var src2=document.createElement("source");
   
        // document.getElementById("video").appendChild(nvideo);
        // document.getElementsByTagName("video")[0].appendChild(src1);
        // document.getElementsByTagName("video")[0].appendChild(src2);
        // src1.src="1.mp4";
        // src2.src="3.webm";
        // nvideo.controls="controls";
        // var parent=document.getElementById("div1");
        // var child=document.getElementById("p1");
        // parent.removeChild(child);
        
        

    </script>


</body>
</html>