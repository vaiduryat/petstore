<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>图书列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		font-size: 10pt;
	}
	.icon {
		margin:10px;
		border: solid 1px #eee;
		width: 160px;
		height: 200px;
		text-align: center;
		float: left;
		box-shadow:1px 1px 5px #ccc;
	}
	.icon:hover{
	box-shadow:2px 2px 5px #ccc;
	}
	.icon img{
		width:160px;
		height:160px;
	}
	.icon .pname{
		display:block;
		width:100%;
		height:40px;
		text-decoration:none;
		color:#303133;
		text-align:center;
		line-height:40px;
	}
	.icon .pname:hover{
	color:#54aeeb;
	}
</style>
  </head>
  
  <body>
  <c:forEach items="${petList }" var="pet">
   <div class="icon">
    <a href="<c:url value='/admin/adminPetServlet?method=load&pid=${pet.pid }'/>"><img src="<c:url value='/${pet.image }'/>" border="0"/></a>
      <br/>
   	<a href="<c:url value='/admin/adminPetServlet?method=load&pid=${pet.pid }'/>" class='pname'>${pet.pname }</a>
  </div>
  </c:forEach>
 
</html>

