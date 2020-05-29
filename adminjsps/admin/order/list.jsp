<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>订单列表</title>

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

div>img {
	width: 75px;
}

li {
	margin: 10px;
}

#buy {
	background: url(< c : url value = '/images/all.png'/ >) no-repeat;
	display: inline-block;
	background-position: 0 -902px;
	margin-left: 30px;
	height: 36px;
	width: 146px;
}

#buy:HOVER {
	background: url(< c : url value = '/images/all.png'/ >) no-repeat;
	display: inline-block;
	background-position: 0 -938px;
	margin-left: 30px;
	height: 36px;
	width: 146px;
}

.noOrders {
	margin: 100px auto;
	border: 0;
}
.noOrders>span{
font-size:40px;
}
.items>td{
line-height:75px;
}
</style>
</head>

<body>
	<c:choose>
		<c:when test='${not empty orderList}'>
			<c:forEach items="${orderList }" var="order">
				<table class="table table-hover table-bordered">
					<tr class="info">
						<td colspan="6">订单编号：${order.oid } 成交时间：${order.ordertime }
							金额：<font><b>${order.total }</b> </font> 
								<c:choose>
								<c:when test="${order.state eq 1 }">未付款</c:when>
								<c:when test="${order.state eq 2 }">未发货 </c:when>
								<c:when test="${order.state eq 3 }">未收货</c:when>
								<c:when test="${order.state eq 4 }">交易成功</c:when>
							</c:choose>
							</td>
					</tr>
					<c:forEach items="${order.orderItems }" var="orderItem">
						<tr bordercolor="gray" align="center" class='items'>
							<td width="15%">
								<div>
									<img src="<c:url value='/${orderItem.pet.image }'/>" height="75" />
								</div></td>
							<td style="line-height:75px;">宠物名：${orderItem.pet.pname }</td>
							<td style="line-height:75px;">单价：${orderItem.pet.price }元</td>
							<td style="line-height:75px;">数量：${orderItem.count}</td>
							<td style="line-height:75px;">小计：${orderItem.subtotal }元</td>
						</tr>
					</c:forEach>
				</table>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class='noOrders'>
				<span class="iconfont icon-meiyoudingdan-01"></span>
				<c:choose>
					<c:when test="${_state eq 1 }">
						<h4>没有未付款的订单哦!</h4>
					</c:when>
					<c:when test="${_state eq 2 }"><h4>没有未发货的订单哦!</h4> </c:when>
					<c:when test="${_state eq 3 }">
						<h4>没有待收货的订单哦!</h4>
					</c:when>
					<c:when test="${_state eq 4 }"><h4>没有交易完成的定单哦!</h4></c:when>
				</c:choose>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>
