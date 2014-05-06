<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>

<title>MWS Admin - Dashboard</title>

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
                        <span class="mws-i-24 i-table-1">Data Table with Numbered Pagination</span>
                    </div>
                    <div class="mws-panel-body">
                        <table class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
                                    <th>Rendering engine</th>
                                    <th>Browser</th>
                                    <th>Platform(s)</th>
                                    <th>Engine version</th>
                                    <th>CSS grade</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="gradeU">
                                    <td>Other browsers</td>
                                    <td>All others</td>
                                    <td>-</td>
                                    <td class="center">-</td>
                                    <td class="center">U</td>
                                </tr>
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
