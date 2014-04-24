
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />

<!-- CSS styles -->
<link href="css/mentor.min.css" rel="stylesheet" />
<!--Skins: uncomment to activate-->
<link href="css/skin_blue.css" rel="stylesheet" />
<!--<link href="css/skin_orange.css" rel="stylesheet"/>-->


<!-- http://remysharp.com/2009/01/07/html5-enabling-script/ -->
<!--[if lt IE 9]>
	<script type="text/javascript">/*@cc_on'abbr article aside audio canvas details figcaption figure footer header hgroup mark meter nav output progress section summary subline time video'.replace(/\w+/g,function(n){document.createElement(n)})@*/</script>
<![endif]-->
<script type="text/javascript">
	(function(H) {
		H.className = H.className.replace(/\bno-js\b/, 'js')
	})(document.documentElement)
</script>

<!-- favicon & iSO touch icons -->
<link rel="shortcut icon" href="favicon.jpg" />