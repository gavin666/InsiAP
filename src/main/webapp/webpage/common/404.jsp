<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>404</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<link href="<%=basePath%>/plug-in/404/css/error.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div id="container">
		<img class="png" src="<%=basePath%>/plug-in/404/images/404.png" /> <img
			class="png msg" src="<%=basePath%>/plug-in/404/images/404_msg.png" />
	</div>
	<div id="cloud" class="png"></div>
</body>