<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>

<script type="text/javascript">
    $(document).ready(function() {
        $("div#mws-login .mws-login-back").mouseover(function(event) {
            $(this).find("a").animate({'left':0})
        }).mouseout(function(event) {
            $(this).find("a").animate({'left':70})
        });
    });
</script>

<title>登陆SiteForSE</title>

</head>

<body>

	<div id="mws-login">
        <h1>登陆</h1>
        <div class="mws-login-lock"><img src="css/icons/24/locked-2.png" alt="" /></div>
        <div id="mws-login-form">
            <form class="mws-form" action="AdminLoginServlet" method="post">
                <div class="mws-form-row">
                    <div class="mws-form-item large">
                        <input name="password" type="password" class="mws-login-password mws-textinput" placeholder="password" />
                    </div>
                </div>
                <div class="mws-form-row">
                    <input type="submit" value="Login" class="mws-button green mws-login-button" />
                </div>
            </form>
        </div>
    </div>

</body>
</html>
