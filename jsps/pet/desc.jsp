<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>宠物详细</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" type="text/css" href="/petstore/font/iconfont.css">
<style type="text/css">
	body {
		font-size: 15px;
		color:#666666;
	}
	a{
	text-decoration:none;
	color:#b4d7ef;
	}
	*{
	padding:0;
	margin:0;'
	}
	div {
	float:left;
		margin:20px;
		margin-right:0;
		width: 150px;
		height: 150px;
		text-align: center;
	}
	div>img{
		width:150px;
		box-shadow:2px 2px 5px #ccc;
	}
	ul{
	margin:20px 0 0 20px;
	float:left;
	list-style:none;
	}
	li {
	font-size: 10px;
	margin: 10px;
	}
	li>.tabel{
	text-algin:center;
	display:inline-block;
	width:33px;
	background:#b4d7ef;
	color:#fff;
	boder-radius:2px;
	font-size:8px;
	vertical-align:middle;
	line-height:15px;
	}
	li:nth-of-type(3){
	background:#f3f3f3;
	font-sizing:10px;
	line-height:30px;
	}
	li:nth-of-type(3)>span{
	color:#e53e4e;
	font-size:15px;
	}
	li:nth-of-type(3)>a{
	text-decoration:none;
	color:#6db9ed;
	}
	li:nth-of-type(4)>span{
	color:#e53e4e;
	font-size:15px;
	}
	form{
	display:inline;
	}
	form>input{
	margin-top:158px;
	margin-left:-342px;
	outline:none;
	}
	.submit {
	margin-top:19px;
		text-decoration:none;
		text-align:center;
		line-height:36px;
		display:block;
		margin-left: 23px;
		height: 36px;
		width: 146px;
		background:#b4d7ef;
		color:#fff;
		border-radius:5px;
		box-sizing:border-box;
	}
	.submit:hover{
	background:#fff;
	border:1px solid #b4d7ef;
	color:#b4d7ef;
	box-shadow:2px 2px 5px #ccc;
	}
</style>
  </head>
  
  <body>
  <div>
    <img src="<c:url value='/${pet.image }'/>" border="0"/>
  </div>
  <ul>
    <li><span class='tabel'>萌宠之家</span>${pet.desc }</li>
    <li>品种：${pet.pname }</li>
    <li>萌 宠 价：<span>￥${pet.price }</span>   <a href='javasrcipt:;'>降价通知</a></li>
    <li>服务支持：<span class="iconfont icon-aixin">放心购</span>   <a href='javascript:;'>送运费险</a>   <a href='javascript:;' style='color:#666'>闪电退款</a>
       <a href='javascript:;'>极速审核</a></li>
  </ul>
  <form id="form" action="<c:url value='/CartServlet'/>" method="post">
  <input type="text" name="method" value="add" hidden />
  <input type="text" name="pid" value="${pet.pid }" hidden />
  <input type="text" size="3" name="count" value="1"/>
  </form>
  <a href="javascript:document.getElementById('form').submit();" class='submit'>加入购物车</a>
  </body>
</html>
