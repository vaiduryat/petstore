<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>left</title>
    <base target="body"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css"><%--
		*{
			padding:0;
			margin:0;
			font-size:10pt;
			text-align: center;
		}
		div {
			width:100%;
			background: #ccc；
			margin: 3px; 
			
		}
		a {
		padding-left: 20px;
			display:block;
			width:100%;
			text-decoration: none;
			color:#fff;
			font-size:20px;
			line-height:50px;
			text-align:left;
			box-sizing:border-box;
		}
		a:hover{
		background:#ccc;
		color:#54aeeb;
		}
	--%>
	*{
	margin:0;
	padding:0
	}
	.wrapper-250{
	width:100%;
	}

	
	</style>
	<link rel="stylesheet" type="text/css" href="/petstore/font/iconfont.css">
	<link rel="stylesheet" href="/petstore/css/style.css" type="text/css" media="screen" />
	<script type="text/javascript"  src="/petstore/js/jquery.min.js"></script>
	<script type="text/javascript">

		$(document).ready(function() {

			// Store variables

			var accordion_head = $('.accordion > li > a'),
				accordion_head_span=$('.accordion > li > a> span'),
				accordion_body = $('.accordion li > .sub-menu');

			// Open the first tab on load

			//accordion_head.first().addClass('active').next().slideDown('normal');

			// Click function
			//accordion_head_span.removeClass('icon-jiantou9');
			//accordion_head_span.eq(0).addClass('icon-jiantou9');

			accordion_head.on('click', function(event) {

				// Disable header links

				event.preventDefault();

				// Show and hide the tabs on click

				if ($(this).attr('class') != 'active'){

					accordion_body.slideUp('normal');

					$(this).next().stop(true,true).slideToggle('normal');

					accordion_head.removeClass('active');
					$(this).children('span').toggleClass('icon-jiantou9');
					$(this).children('span').toggleClass('icon-shangjiantou_huaban');
					$(this).siblings().children('span').toggleClass('icon-shangjiantou_huaban');
					$(this).siblings().children('span').toggleClass('icon-jiantou9');
					$(this).addClass('active');

				}

			});

		});

	</script>

	
  </head>
  
  <body>
  
  <div id="wrapper-250">

  <ul class="accordion">

    <li id="one" class="files"><a href="<c:url value='/PetServlet?method=findAll'/>">全部分类<span class="iconfont icon-jiantou9"></span> </a>

      <ul class="sub-menu">
      <li><a href="<c:url value='/PetServlet?method=findAll'/>" target="body1">所有宠物 </a></li>
      <c:forEach items="${categoryList }" var="category">

        <li><a href="<c:url value='/PetServlet?method=findByCid&cid=${category.cid }'/>" target="body1">${category.cname }</a></li>

</c:forEach>
      </ul>

    </li>

    <li id="two" class="mail"> <a href="#two">宝贝照顾手册<span class="iconfont icon-jiantou9"></span></a>

      <ul class="sub-menu">

        <li><a href="<c:url value='/jsps/lookAfter/index.jsp'/>" target="body1">查看手册</a></li>

      </ul>

    </li>

    <li id="three" class="cloud"> <a href="#three">个人中心<span class="iconfont icon-jiantou9"></span></a>

      <ul class="sub-menu">

        <li><a href="<c:url value='/jsps/user/info.jsp'/>" target="body1">查看个人信息</a></li>

        <li><a href="<c:url value='/jsps/user/editPre.jsp'/>" target="body1">修改个人信息</a></li>

      </ul>

    </li>

    <li id="four" class="sign"> <a href="#four">我的订单<span class="iconfont icon-jiantou9"></span></a>

      <ul class="sub-menu">

        <li><a href="<c:url value='/OrderServlet?method=FindOrdersByState&state=1'/>" target="body1">待付款</a></li>

        <li><a href="<c:url value='/OrderServlet?method=FindOrdersByState&state=2'/>" target="body1">未发货</a></li>

        <li><a href="<c:url value='/OrderServlet?method=FindOrdersByState&state=3'/>" target="body1">待收货</a></li>
		<li><a href="<c:url value='/OrderServlet?method=FindOrdersByState&state=4'/>" target="body1">交易完成</a></li>
      </ul>

    </li>

  </ul>

</div>
  </body>
</html>
