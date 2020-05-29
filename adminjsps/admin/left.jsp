<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style>
*{ margin: 0; padding: 0; }
		img{border:0;}
        ul,li{list-style-type:none;}
		a {color:#00007F;text-decoration:none;}
		a:hover {color:#bd0a01;text-decoration:underline;}
		.treebox{ width: 100%; margin: 0 auto; background-color:#1a6cb9; }
		.menu{ overflow: hidden; border-color: #ddd; border-style: solid ; border-width: 0 1px 1px ; }
		/*第一层*/
		.menu li.level1>a{ 
			display:block;
			height: 45px;
			line-height: 45px;
			color: #fff;
			padding-left: 50px;
			border-bottom: 1px solid #000; 
			font-size: 16px;
			position: relative;
			transition:all .5s ease 0s;
		 }
		 .menu li.level1 a:hover{ text-decoration: none;background-color:#326ea5;   }
		 .menu li.level1 a.current{ background: #0f4679; }

		/*============修饰图标*/
		 .ico{ width: 20px; height: 20px; display:block;   position: absolute; left: 20px; top: 10px; background-repeat: no-repeat; background-image: url(/petstore/images/ico1.png); }

		 /*============小箭头*/
		 .level1 i{ width: 20px; height: 10px; background-image:url(/petstore/images/arrow.png); background-repeat: no-repeat; display: block; position: absolute; right: 20px; top: 20px; }
		.level1 i.down{ background-position: 0 -10px; }

		 .ico1{ background-position: 0 0; }
		 .ico2{ background-position: 0 -20px; }
		 .ico3{ background-position: 0 -40px; }
		 .ico4{ background-position: 0 -60px; }
                 .ico5{ background-position: 0 -80px; }

		 /*第二层*/
		 .menu li ul{ overflow: hidden; }
		 .menu li ul.level2{ display: none;background: #0f4679;  }
		 .menu li ul.level2 li a{
		 	display: block;
			height: 45px;
			line-height: 45px;
			color: #fff;
			text-indent: 60px;
			/*border-bottom: 1px solid #ddd; */
			font-size: 14px;
			 transition:all 1s ease 0s;
		 }

	</style>

  <head>
    <title>菜单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
<div class="treebox">
		<ul class="menu">
			<li class="level1">
				<a href="#none"><em class="ico ico1"></em>分类管理<i class="down"></i></a>
				<ul class="level2">
					<li><a href="<c:url value='/admin/adminCategoryServlet?method=findAll'/>" target="body">查看分类</a></li>
					<li><a href="<c:url value='/adminjsps/admin/category/add.jsp'/>" target="body">添加分类</a></li>
				</ul>
			</li>
			<li class="level1">
				<a href="#none"><em class="ico ico2"></em>宠物管理<i></i></a>
				<ul class="level2">
					<li><a href="<c:url value='/admin/adminPetServlet?method=findAll'/>" target="body">查看所有宠物</a></li>
					<li><a href="<c:url value='/admin/adminPetServlet?method=addPre'/>" target="body">添加宠物</a></li>
				</ul>
			</li>
			<li class="level1">
				<a href="#none"><em class="ico ico3"></em>订单管理<i></i></a>
				<ul class="level2">
					<li><a href="<c:url value='/admin/adminOrderServlet?method=findOrders'/>" target="body">所有订单</a></li>
					<li><a href="<c:url value='/admin/adminOrderServlet?method=findOrdersByState&state=1'/>" target="body">未付款订单</a></li>
					<li><a href="<c:url value='/admin/adminOrderServlet?method=findOrdersByState&state=2'/>" target="body">已付款订单</a></li>
					<li><a href="<c:url value='/admin/adminOrderServlet?method=findOrdersByState&state=3'/>" target="body">未收货订单</a></li>
					<li><a href="<c:url value='/admin/adminOrderServlet?method=findOrdersByState&state=4'/>" target="body">已完成订单</a></li>
				</ul>
			</li>
			<li class="level1">
				<a href="#none"><em class="ico ico4"></em>个人中心<i></i></a>
				<ul class="level2">
					<li><a href="<c:url value='/adminjsps/admin/user/getInfo.jsp' />" target='body'>查看个人信息</a></li>
					<li><a href="<c:url value='/adminjsps/admin/user/editPre.jsp' />" target='body'>修改个人信息</a></li>
				</ul>
			</li>
                        <li class="level1">
				<a href="#none"><em class="ico ico5"></em>导航一<i></i></a>
				<ul class="level2">
					<li><a href="javascript:;">导航选项</a></li>
					<li><a href="javascript:;">导航选项</a></li>
					<li><a href="javascript:;">导航选项</a></li>
					<li><a href="javascript:;">导航选项</a></li>
				</ul>
			</li>
		</ul>
	</div>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="/petstore/js/easing.js"></script>
<script>
//等待dom元素加载完毕.
	$(function(){
		$(".treebox .level1>a").click(function(){
			$(this).addClass('current')   //给当前元素添加"current"样式
			.find('i').addClass('down')   //小箭头向下样式
			.parent().next().slideDown('slow','easeOutQuad')  //下一个元素显示
			.parent().siblings().children('a').removeClass('current')//父元素的兄弟元素的子元素去除"current"样式
			.find('i').removeClass('down').parent().next().slideUp('slow','easeOutQuad');//隐藏
			 return false; //阻止默认时间
		});
	})
</script>

</body>
</html>
