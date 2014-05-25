<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>

<title>视频添加</title>

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
                        <span class="mws-i-24 i-pencil">添加视频</span>
                    </div>
                    <div class="mws-panel-body">
                        <form class="mws-form" action="/SiteForSE/admin/VideoUploadServlet"
                            method="post">
                            <div class="mws-form-row">
                                <label>视频名称</label>
                                <div class="mws-form-item large">
                                    <input type="text" name="name" class="mws-textinput small" />
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <label>视频地址</label>
                                <div class="mws-form-item large">
                                    <input type="text" name="path" class="mws-textinput small" />
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
