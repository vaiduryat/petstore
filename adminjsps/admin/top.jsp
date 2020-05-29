<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>top</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="/petstore/font/iconfont.css">

<style type="text/css">
html{
height:40px;
}
h4{
margin:0;
padding:0;
}
body {
	background: #1a6cb9;
	height:40px;
}

a {
	text-transform: none;
	color: #fff;
	text-decoration: none;
}

.iconfont {
	color: #2e3031;
}
</style>
</head>
  
  <body style="background:#0f4679;color: white;">
<h4 style="text-align: center; ">GUANJITING宠物商城后台管理</h4>
<div style="font-size: 10pt;">
		<c:choose>
			<c:when test="${empty sessionScope.session_user}">
				<a href="<c:url value='/adminjsps/admin/user/login.jsp'/>" target="_parent">登录</a>
			</c:when>
			<c:otherwise>
			<a>您好：${sessionScope.session_user.username }&nbsp;&nbsp;|&nbsp;&nbsp;</a>
				<a href="<c:url value='/admin/adminServlet?method=quit' />"
					target="_parent">退出</a>
			</c:otherwise>
		</c:choose>


	</div>
  </body>
</html>
