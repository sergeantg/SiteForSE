<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<html>
<head>
<%@include file="head.jsp"%></head>
<title>发帖</title>
<body>
    <%@include file="header.jsp"%>
    <section class="mainContentWrap">
        <div class="container mainContent">
            <ul class="breadcrumb">
                <li><a href="forum.jsp">互动中心</a> <span class="divider">/</span></li>
                <li><a>发帖</a></li>
            </ul>
            <div class="row-fluid">
                <div class="span2">&nbsp</div>
                <div class="span10">
                   <h3>发表新帖</h3>
                </div>
            </div>


            <form id="newPost" class="form" action="PostServlet" method="post">
                <div class="row-fluid">
                    <div class="span2">标题</div>
                            <div class="span10">
                                <div class="post-info">
                                    <label class="form-label" for="postTitle"></label> 
                                    <input type="text" name="title" id="title" class="post-title"
                                        placeholder="请在这里输入你的标题" autofocus="" required="" value=""/>
                                </div>                           
                            </div>
                </div>
                    <div class="row-fluid">
                        <div class="span2">内容</div>
                        <div class="span10">
                            <textarea class="neirong" name="content" id="content" rows="18"
                                rols="40" placeholder="请在此处输入你的内容"></textarea>
                                 <div class="form-do">
                                    <input type="submit" class="btn btn-info btn-large" value="发布"/>
                                    <a href="forum.jsp" class="btn btn-success btn-large">取消</a>
                                 </div>
                        </div>
                    </div>
                <input id="captcha" name="captcha" type="hidden" value=""/>
            </form>

        </div>
    </section>
    <%@include file="footer.jsp"%>

    <!--back to top button-->
    <a href="#top" id="peBackToTop" class="label btt disabled"><span
        class="icon-chevron-up icon-white"></span> </a>

    <!-- import minified javascript -->
    <script type="text/javascript" src="js/mentor.min.js"></script>
    <script type="text/javascript" src="preview/preview.js"></script>

</body>
</html>
