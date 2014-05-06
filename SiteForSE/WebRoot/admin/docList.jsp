<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.siteforse.biz.DocBiz"  %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>

<title>讨论帖</title>

</head>

<body>

<%
DocBiz biz = new DocBiz();
ArrayList<com.siteforse.entity.Doc> list = biz.getDocList();
request.setAttribute("docList", list);
%>
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
                        <span class="mws-i-24 i-table-1">Data Table with Numbered Pagination</span>
                    </div>
                    <div class="mws-panel-body">
                        <table class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
                                    <th>名称</th>
									<th>添加日期</th>
									<th>下载</th>
									<th>删除</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${docList }" var="item">
								<tr>
									<td class="muted"><a
										href="DocViewServlet?docID=${item.docID}">${item.name }</a>
									</td>
									<td>${item.addDate}</td>
									<td><a href="<%=basePath%>${item.path}">下载</a></td>
									<td><form action="DelDoc?id=${item.docID }">删除</form></td>
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
