<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.siteforse.biz.PostBiz"%>
<%
	request.setAttribute("postList", new PostBiz().getAll());
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>

<title>论坛管理</title>
<script type="text/javascript">
function delPost(postID){
	var xmlhttp;
    if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
    	xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
  	{
	  	if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
		    if(xmlhttp.responseText=="y"){
	            alert("删除成功");
	            window.top.location.reload();
	        }else{
	       	 	alert("删除失败");
	        }
    	}
  	};
  	xmlhttp.open("POST","./DelPostServlet?postID="+postID,true);
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
                        <span class="mws-i-24 i-table-1">讨论帖</span>
                    </div>
                    <div class="mws-panel-body">
                        <table class="mws-datatable mws-table">
                            <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>标题</th>
                                    <th>发表时间</th>
                                    <th>回复数</th>
                                    <th>删除</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${postList }" var="item">
                                <tr class="gradeA">
                                	<td>${item.postID}</td>
                                    <td><a
                                        href="postDetail.jsp?postID=${item.postID}" target="_blank">${item.title }</a>
                                    </td>
                                    <td>${item.postTime}</td>
                                    <td>${item.replyCount }</td>
                                    <td><input type="button" class="mws-button red small" value="删除" onclick="delPost(${item.postID})"></input></td>
                                </tr>
                                
                            </c:forEach>
                            </tbody>
                        </table>
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
