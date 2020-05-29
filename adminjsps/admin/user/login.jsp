<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style>
body{
background:#0f4679;
}
div{
box-sizing:border-box;
width:500px;
height:300px;
background:#fff;
margin:100px auto 0;
position:relative;
border:1px solid #fff;
border-radius:5px;
}
div>h1{
color:#fff;
width:100px;
height:100px;
background:#0f4679;
border-radius:50%;
text-align:center;
line-height:100px;
position:absolute;
left:50%;
top:-50px;
margin:0;
transform:translateX(-50%);
box-sizing:border-box;
border:2px solid #fff;
}
div>p{
width:100%;
position:absolute;
top:60px;
text-align:center;
}
div form{
width:100%;
margin-top:85px;
padding-left:10px;
}
div .text{
outline:none;
border:none;
border:1px solid #b4d7ef;
width:95%;
height:50px;
margin-top:20px;
padding-left:20px;
color:#333;
font-size:16px;
}
div .text:focus{
border:1px solid #3da3ea;
}
div input[type=submit],div input[type=reset]{
position:absolute;
bottom:20px;
right:100px;
border:0;
background:#3da3ea;
width:70px;
height:40px;
border-radius:5px;
}
div input[type=reset]{
background:#ccc;
right:20px;
}
.iconfont{
position:absolute;
left:14px;
color:#777;
}
.icon-ren{
top:121px;
}
.icon-icon_suo-{
top:191px;
}
</style>
  <head>
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="/petstore/font/iconfont.css">
  </head>
  
  <body>
  <div>
  <h1>登录</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/admin/adminServlet'/>" method="post" target="_top">
<input type="text" name="method" value="login" hidden>
<input type="text" name="username" value="${form.username }"/ class='text' placeholder='请输入用户名'><span class="iconfont icon-ren"></span><br/>
<input type="password" name="password" value="${form.password }"/ class='text' placeholder='请输入密码'><span class="iconfont icon-icon_suo-"></span><br/>
	<input type="submit" value="登录"/>
	<input type="reset" value="重置"/>
</form>
</div>
  </body>
</html>
