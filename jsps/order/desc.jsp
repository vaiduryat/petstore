<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>订单详细</title>
    
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
	div {
		border: solid 2px gray;
		width: 75px;
		height: 75px;
		text-align: center;
	}
	li {
		margin: 10px;
	}
	h4{
	text-align:center;
	}
	table{
	margin:0 auto;
	}
	form{
	width:95%;
	margin:0 auto;
	}
	#pay {
	
		display: inline-block;
		margin-left: 30px;
		height: 36px;
		width: 146px;
		
		box-sizing:border-box;
		color:#fff;
		background:#b4d7ef;
		border:none;
		margin-top:15px;
	}
	#pay:HOVER {
		display: inline-block;
		margin-left: 30px;
		height: 36px;
		width: 146px;
		color:#fff;
		background:#7bbeec;
		
		
	}
</style>
  </head>
  
  <body>
<h4>当前订单</h4>

<table width="95%" background="#aed4ee" class="table-bordered">
	<tr bgcolor="#aed4ee" bordercolor="gray">
		<td colspan="6">
			订单编号：${order.oid }　成交时间：<fmt:formatDate value="${order.ordertime }" pattern="yyyy-MM-dd HH:mm:ss"/>　
			金额：<font color="red"><b>${order.total }元</b></font>
		</td>
	</tr>
<c:forEach items="${order.orderItems }" var="orderItem">
	<tr bordercolor="gray" align="center">
		<td width="15%">
			<div><img src="<c:url value='/${orderItem.pet.image }'/>" height="75"/></div>
		</td>
		<td>书名：${orderItem.pet.pname }</td>
		<td>单价：${orderItem.pet.price }元</td>
		<td>详细信息：${orderItem.pet.desc }</td>
		<td>数量：${orderItem.count }</td>
		<td>小计：${orderItem.subtotal }元</td>
	</tr>
</c:forEach>
</table>
<br/>
<form method="post" action="<c:url value='/OrderServlet'></c:url>" id="form" target="_parent">
<input type="hidden" name="method" value="pay"  />
<input type="hidden" name="oid" value="${order.oid }" />
	收货地址：<input type="text" name="address" size="50" placeholder="广东省广州市白云区广东警官学院" class="form-control"/><br/>

	选择银行：<br/>
	<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行
	<img src="/petstore/bank_img/icbc.bmp" align="middle"/>
	<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
	<img src="/petstore/bank_img/bc.bmp" align="middle"/><br/><br/>
	<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
	<img src="/petstore/bank_img/abc.bmp" align="middle"/>
	<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
	<img src="/petstore/bank_img/ccb.bmp" align="middle"/><br/><br/>
	<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
	<img src="/petstore/bank_img/bcc.bmp" align="middle"/><br/>
</form>
<a id="pay" href='javascript:document.getElementById("form").submit();' class="btn btn-default">付款</a>

  </body>
</html>

