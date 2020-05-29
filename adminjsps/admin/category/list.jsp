<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>分类列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	table {font-family: 宋体; font-size: 11pt; border-color: rgb(78,78,78);  width: 60%;}
	#th {background: #1a6cb9;}
	td{
	text-align:center;}
	a{
	text-decoration:none;
	color:black;
	}
	a:hover,a:focus,a:active{
	color:#1a6cb9;
	}
	.tr:hover{
	background:#edf4fb;
	}
</style>
  </head>
  
  <body>
    <h2 style="text-align: center;">分类列表</h2>
    <h5 style="color:red;text-align:center">${msg }</h5>
    <table align="center" border="1" cellpadding="0" cellspacing="0">
    	<tr id="th" bordercolor="rgb(78,78,78)">
    		<th>分类名称</th>
    		<th>操作</th>
    	</tr>
<c:forEach items="${categoryList }" var="category">   
    	<tr bordercolor="rgb(78,78,78)"  class='tr'>
    		<td>${category.cname }</td>
    		<td>
    		  <a href="<c:url value='/admin/adminCategoryServlet?method=preEdit&cid=${category.cid }'/>">修改</a> |
    		  <a href="<c:url value='/admin/adminCategoryServlet?method=del&cid=${category.cid }'/>">删除</a>
    		</td>
    	</tr>
</c:forEach> 
    </table>
  </body>
</html>
