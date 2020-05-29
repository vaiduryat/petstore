<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	h1,p{
	text-align:center;
	}
	form{
	box-sizing:border-box;
	padding:20px;
	width:500px;
	height:143px;
	margin:0 auto;
	border:1px solid #1a6cb9;
	}
	form .btn-default{
	background-color:#6ecae8;
	float:right;
	}
	form .btn-default:hover,form .btn-default:active,form .btn-default:focus{
	background-color:#1a6cb9;
	}
	</style>
<style type="text/css">
</style>
<link rel="stylesheet" type="text/css" href="/petstore/css/bootstrap.css">
<script src="/petstore/js/jquery.min.js"></script>
<script src="/petstore/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <h1>添加分类</h1>
    <p style="font-weight: 900; color: red">${msg }</p>
<form action='<c:url value="/admin/adminCategoryServlet"></c:url>' method="post">
    <input type="hidden" name="method" value="add">
    	<div class="form-group">
    <label for="exampleInputName2">分类名称</label>
    <input type="text" class="form-control" id="exampleInputName2" name="cname" placeholder="${category.cname }">
  </div>
    	<input type="submit" value="添加分类"/ class="btn btn-default">
    </form>
  </body>
</html>
