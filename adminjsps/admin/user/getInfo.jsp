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
<style>
form{
width:75p%;
matgin:0 auto;
}
</style>
  </head>
 
  <body>
  <form>
  <fieldset disabled>
    <div class="form-group">
      <label for="disabledTextInput">姓名</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.username }">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">昵称</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.nickname }">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">邮箱</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.email }">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">tel</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.tel }">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">生日</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.birthday }">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">性别</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.sex }">
    </div>
    <div class="form-group">
      <label for="disabledTextInput">地址</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="${sessionScope.session_user.address }">
    </div>
  </fieldset>
</form>

</body>
</html>
