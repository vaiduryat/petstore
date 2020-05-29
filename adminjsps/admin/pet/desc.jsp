<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'bookdesc.jsp' starting page</title>
    
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
	body {
		font-size: 10pt;
	}
	h1{
	text-align:center;
	}
	form{
	box-sizing:border-box;
	padding:20px;
	width:500px;
	height:323px;
	margin:0 auto;
	border:1px solid #1a6cb9;
	}
	div {
		margin:20 auto;
		border: solid 2px gray;
		width: 150px;
		height: 150px;
		text-align: center;
	}
	div>img{
		width:150px;
	}
	li {
		margin: 10px;
	}
	input[type=submit]{
	float:right;
	margin-right:20px;
	}
</style>
<script type="text/javascript">
function setMethod(method){
	document.getElementById("method").value=method;
}
</script>
  </head>
  
  <body>
  <h1>${msg }</h1>
  <div>
    <img src="<c:url value='/${pet.image }'/>" border="0"/>
  </div>
  <form id="form" action='<c:url value="/admin/adminPetServlet"></c:url>' method="post">
  <input type="hidden" name="method" id="method">
  <input type="hidden" name="pid" value="${pet.pid }">
  <input type="hidden" name="image" value="${pet.image }">
  	宠物名称：<input type="text" name="pname" value="${pet.pname }"/ class="form-control"><br/>
  	宠物单价：<input type="text" name="price" value="${pet.price }"/ class="form-control"><br/>
  	宠物描述：<input type="text" name="desc" value="${pet.desc }"/ class="form-control"><br>
  	宠物分类：
  	<select style="width: 150px; height: 20px;" name="cid">
  			<c:forEach items="${categoryList }" var="category">
     		<option value="${category.cid }" <c:if test="${category.cid eq pet.category.cid}">selected</c:if> />${category.cname }</option>
     		</c:forEach>
    	</select><br/><br>
  	<input type="submit" name="method" value="修改" onclick="setMethod('edit')"/ class="btn btn-primary">
  	<input type="submit" name="method" value="删除" onclick="setMethod('delete')"/ class="btn btn-default">
  </form>
  </body>
</html>
