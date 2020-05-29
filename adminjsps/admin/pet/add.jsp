<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加宠物</title>
    
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
<style type="text/css">
	h1,p{
	text-align:center;
	}
	form{
	box-sizing:border-box;
	padding:20px;
	width:500px;
	height:395px;
	margin:0 auto;
	border:1px solid #1a6cb9;
	}
	input[type=submit]{
	float:right;
	margin-right:20px;
	}
</style>
  </head>
  
  <body>
    <h1>添加宠物</h1>
    <p style="font-weight: 900; color: red">${msg }</p>
    <form action='<c:url value="/admin/adminAddServlet"></c:url>' method="post" enctype="multipart/form-data">
    	宠物名称：<input  type="text" name="pname" class="form-control" /><br/>
    	宠物图片：<input type="file" name="image"/><br/>
    	单价：<input  type="text" name="price" class="form-control" /><br/>
		宠物描述：<input  type="text" name="desc" class="form-control" /><br/>
    	宠物分类：
    	<select style="width: 150px; height: 20px;" name="cid">
    		<c:forEach items="${categoryList }" var="category">
    			<option value="${category.cid }">${category.cname }</option>
			</c:forEach>
    	</select>
    	<br/><br/>
    	<input type="submit" value="添加宠物" class="btn btn-primary" />
    </form>
    </body>
</html>
