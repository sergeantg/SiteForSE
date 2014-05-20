<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@include file="head.jsp"%>

    <title>发帖</title>

    <script type="text/javascript">
        function reply(posttID) {
            var xmlhttp;
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        var title = document.getElementById("title");
        var content = document.getElementById("content");
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                if (xmlhttp.responseText == "y") {
                    alert("发表成功");
                    window.top.location.reload();
                } else {
                    alert("发表失败");
                    window.top.location.reload();
                }
            }
        };
        xmlhttp.open("POST", "./admin/AdminPostServlet?title=" + title.value +"&content=" + content.value, true);
        xmlhttp.send();
    }
</script>
</head>

<body>

    <!-- Themer -->  
    <%@include file="themer.html"%>
    <!-- Themer End -->
    

    <!-- Header Wrapper -->
    <%@include file="header.jsp"%>
    
    <!-- Main Wrapper -->
    <div id="mws-wrapper">
        <!-- Necessary markup, do not remove -->
        <div id="mws-sidebar-stitch"></div>
        <div id="mws-sidebar-bg"></div>
        
        <!-- Sidebar Wrapper -->
        <%@include file="sidebar.jsp"%>
        
        
        <!-- Container Wrapper -->
        <div id="mws-container" class="clearfix">

            <!-- Main Container -->
            <div class="container">
                <div class="mws-panel grid_8">
                    <div class="mws-panel-header">
                        <span class="mws-i-24 i-table-1">发帖</span>
                    </div>
                    <div class="mws-panel-body">
                        <form class="mws-form" action="PostServlet" method="post">
                            <div class="mws-form-block">
                                <div class="mws-form-row">
                                    <label>标题</label>
                                    <div class="mws-form-item large">
                                        <input type="text" name="title" class="mws-textinput" />
                                    </div>
                                </div>
                                <div class="mws-form-row">
                                    <label>内容</label>
                                    <div class="mws-form-item large">
                                        <textarea name="content" rows="100%" cols="100%" ></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-button-row">
                                <input type="submit" value="提交" class="mws-button green" />
                            </div>
                        </form>
                    </div> 
                </div>     
            </div>
            <!-- End Main Container -->
            
            <!-- Footer -->
            <%@include file="footer.html"%>
            <!-- End Footer -->
            
        </div>
        <!-- End Container Wrapper -->
        
    </div>
    <!-- End Main Wrapper -->
</body>
</html>