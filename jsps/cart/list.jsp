<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>购物车列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="/petstore/css/bootstrap.css">
<script src="/petstore/js/jquery.min.js"></script>
<script src="/petstore/js/bootstrap.min.js"></script>
<style type="text/css">
	* {
		font-size: 11pt;
	}
	.noCartItems{
	margin:100px auto;
	border:none;
	}
	div {
		margin:20px;
		border: solid 2px gray;
		width: 100px;
		height: 100px;
		text-align: center;
		vertical-align:baseline;
	}
	div>img{
		width:100px;
	}
	table{
	margin:30px auto;
	}
	li {
		margin: 10px;
	}
	tr>th{
	text-align:center;
	}
	#buy {
		display: inline-block;
		
		margin-left: 30px;
		height: 36px;
		width: 146px;
	}
	#buy:HOVER {
		display: inline-block;
		margin-left: 30px;
		height: 36px;
		width: 146px;
	}
</style>
  </head>
  
  <body>
<c:choose>
<c:when test="${empty cart or fn:length(cart.cartItems) eq 0}">
<div class='noCartItems'>
<img src='<c:url value="/images/cart.png"></c:url>' />
<h4>购物车空空如也.........</h4>
</div>
</c:when>
<c:otherwise>
	<table class='table-bordered table-hover'>
	<tr>
		<td colspan="7" align="right" style="font-size: 15pt; font-weight: 900">
			<a href='<c:url value="/CartServlet?method=clear"></c:url>'>清空购物车</a>
		</td>
	</tr>
	
	<tr class="info" style="background:#b4d7ef">
		<th>图片</th>
		<th>宠物</th>
		<th>描述</th>
		<th>单价</th>
		<th>数量</th>
		<th>小计</th>
		<th>操作</th>
	</tr>
	<c:forEach items='${cart.cartItems }' var='cartItem'>
	<tr>
		<td><div><img src="<c:url value='/${cartItem.pet.image }'/>"/></div></td>
		<td>${cartItem.pet.pname }</td>
		<td>${cartItem.pet.desc }</td>
		<td>${cartItem.pet.price }元</td>
		<td>${cartItem.count}</td>
		<td>${cartItem.subTotal }</td>
		<td><a href="<c:url value='/CartServlet?method=delete&pid=${cartItem.pet.pid }'></c:url>">删除</a></td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="7" align="right" style="font-size: 15pt;">
			合计：${cart.total }元
		</td>
	</tr>
	<tr>
		<td colspan="7" align="right" style="font-size: 15pt; font-weight: 900">
			<a id="buy" href="<c:url value='/OrderServlet?method=add'/>" class="btn btn-info">一键购买</a>
		</td>
	</tr>
</table>
</c:otherwise>
</c:choose>

  </body>
</html>
