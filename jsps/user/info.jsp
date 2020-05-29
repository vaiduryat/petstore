<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'info.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="/petstore/css/bootstrap.css">
<script src="/petstore/js/jquery.min.js"></script>
<script src="/petstore/js/bootstrap.min.js"></script>
  </head>
  
  <body>
  <form>
  <fieldset disabled>
    <div class="form-group">
      <label for="disabledTextInput">昵称</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.username }">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">邮箱</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.email }">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">状态</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="<c:choose>
<c:when test='${sessionScope.session_user.state eq true }'>已激活</c:when>
<c:otherwise>未激活</c:otherwise>
</c:choose>">
    </div>
  </fieldset>
</form>

</body>
</html>
