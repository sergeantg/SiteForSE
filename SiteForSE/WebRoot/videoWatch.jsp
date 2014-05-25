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
		<ul class="breadcrumb">
				<li><a >视频观看</a> <span class="divider">/</span>
				</li>
			</ul>
			<div class="row-fluid">

				<div  id="video" class="span12" align ="center">

					    				
						

						<iframe id="tudou"  width=100%  height=100% src="http://www.tudou.com/programs/view/html5embed.action?type=0&code=MNliYqY7R_s&lcode=&resourceId=323281014_06_05_99" frameborder=0 allowfullscreen ></iframe>	

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
/*	    var t =  '<iframe height=100% width=100% src="http://player.youku.com/embed/XNzEwNzY4NzUy" frameborder=0 allowfullscreen></iframe>';
        document.getElementById('video').innerHTML= t;*/
        /*document.getElementById('video').src="http://player.youku.com/embed/XNzEwNzY4NzUy";

*/

        document.getElementById("tudou").src="http://player.youku.com/embed/XNzEwNzY4NzUy";
        document.getElementById("tudou").height=document.body.clientWidth/2.2;

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


        var t="<iframe src="http://www.tudou.com/programs/view/html5embed.action?type=2&code=FNipbkFDN7s&lcode=jWSNic77QEY&resourceId=323281014_06_05_99" allowtransparency="true" scrolling="no" border="0" frameborder="0" style="width:480px;height:400px;"></iframe>"

        alert(t.substr("));

        
        

    </script>


</body>
</html>
