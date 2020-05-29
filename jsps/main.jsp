<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>main</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%--<link rel="stylesheet" type="text/css" href="/petstore/css/bootstrap.css">
<script src="/petstore/js/jquery.min.js"></script>
<script src="/petstore/js/bootstrap.min.js"></script>
	--%><style type="text/css">
		*{
			font-size:10pt;
		}
		body{
		width:100%;
			margin:0;
			padding:0;
			text-align:center;
			background:#f6f6f6;
		}
		.table{
		padding:0;
			width:100%;
			height:100%;
			border:1px solid #b4d7ef;/*固定边框,1像素*/
		    border-collapse: collapse;/*单线的列表边框*/
		    background:#fff;
		}
		.table tr{
		width:100%;
		}
		.table td{
		padding:0;
		border:1px solid #b4d7ef;/*固定边框,1像素*/
		}
		iframe {
			width: 100%;
			height: 100%;
		}
		.table>tbody>tr>td{
		padding:0;
		}
	</style>
  </head>
  
  <body>
<table class="table" align="center">
	<tr style="background: #b4d7ef; height: 40px; ">
		<td colspan="2" align="center">
			<iframe frameborder="0" src="<c:url value='/jsps/top.jsp'/>" name="top" style="height:40px"></iframe>
		</td>
	</tr>
	<tr>
		<td width="120" align="center" valign="top">
			<iframe frameborder="0" width="120" src="<c:url value='/CategoryServlet?method=findAll'/>" name="left"></iframe>
		</td>
		<td>
			<iframe frameborder="0" src="<c:url value='/PetServlet?method=findAll'/>" name="body1"></iframe>
		</td>
	</tr>
</table>
  </body>
</html>
