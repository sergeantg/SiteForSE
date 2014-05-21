<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<%@include file="head.jsp"%>

	<title>密码修改</title>
	<script type="text/javascript">
	function changePsw() {
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		var oldPsw = document.getElementById("oldPsw");
		var newPsw = document.getElementById("newPsw");
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				if (xmlhttp.responseText == "y") {
					alert("修改成功");
				} else {
					alert("修改失败");
					window.top.location.reload();
				}
			}
		};
		xmlhttp.open("POST", "./ChangePswServlet?oldPsw=" + oldPsw.value+"&newPsw="+newPsw.value, true);
		xmlhttp.send();
	}
	
	function checkpwd(){
		var userpwd = document.getElementById("newPwd");
		var userpwds = document.getElementById("newPwdb");
		var error = document.getElementById("erroruserpwd");
		var errors = document.getElementById("erroruserpwds");
		var ppwd = /^\S{6,12}$/;
		if(userpwd.value==""){
			error.innerHTML = "请输入密码！";
			return false;}
			else if(userpwds.value==""){
				errors.innerHTML = "请再次输入密码！";
				return false;}
				else if(!ppwd.test(userpwd.value)){
					error.innerHTML = "密码为6-12位，其中不能含有空格！";
				}
				else if(!ppwd.test(userpwds.value)){
					errors.innerHTML = "密码为6-12位，其中不能含有空格！";
				}
				else if (userpwds.value==userpwd.value){
					error.innerHTML = "正确！";
					errors.innerHTML = "正确！";
					return true;}
					else {errors.innerHTML = "密码不一致！";
					return false;}
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
								<span class="mws-i-24 i-pencil">修改密码</span>
							</div>

							<div class="mws-panel-body">
								<form class="mws-form">

									<div class="mws-form-row">
										<label>当前密码</label>
										<div class="mws-form-item large">
											<input id="oldPsw" type="password" class="mws-textinput" />
										</div>
									</div>
									<div class="mws-form-row">
										<label>新密码</label>
										<div class="mws-form-item large">
											<input id="newPsw" type="password" class="mws-textinput" onblur="checkpwd()" />
											<td id="erroruserpwd">*&nbsp;&nbsp;6-12位非空字符</td>
										</div>
									</div>
									<div class="mws-form-row">
										<label>请再次输入</label>
										<div class="mws-form-item large">
											<input id="newPswb"type="password" class="mws-textinput" onblur="checkpwd()" />
											<td id="erroruserpwds">*&nbsp;&nbsp;6-12位非空字符</td>
										</div>
									</div>
									<div class="mws-button-row">
										<input type="button" value="确认" onclick="changePsw()"
										class="mws-button green" />
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
