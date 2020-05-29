<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'msg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="/petstore/css/bootstrap.css">
<script src="/petstore/js/jquery.min.js"></script>
<script src="/petstore/js/bootstrap.min.js"></script>
  </head>
<style>
.list-group{
width:50%;
margin:30px auto;
border:1px solid #0f4679;
}
.list-group>a{
text-align:center;
}
</style>
  <body>
<div class="list-group">
  <a href="#" class="list-group-item active">
    ${msg }
  </a>
  <a href="<c:url value='/index.jsp'/>" class="list-group-item">首页</a>
  <a href="<c:url value='/jsps/user/login.jsp'/>" class="list-group-item">登录</a>
  <a href="<c:url value='/jsps/user/regist.jsp'/>" class="list-group-item">注册</a>
</div>
  </body>
</html>
