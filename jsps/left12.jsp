<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
		*{
			font-size:10pt;
			text-align: center;
		}
		div {
			background: #000000；
			margin: 3px; 
			padding: 3px;
		}
		a {
			text-decoration: none;
			color:#303133;
			font-size:20px;
			line-height:50px;
		}
	</style>
</head>
<body>
<div>
	<a href="<c:url value='/PetServlet?method=findAll'/>">全部分类</a>
</div>

<c:forEach items="${categoryList }" var="category">
<div>
	<a href="<c:url value='/PetServlet?method=findByCid&cid=${category.cid }'/>">${category.cname }</a>
</div>
</c:forEach>
</body>
</html>