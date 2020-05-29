<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
body{
background:#b4d7ef;
}
div{
box-sizing:border-box;
width:500px;
height:360px;
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
background:#b4d7ef;
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
bottom:10px;
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
.error{
font-size:15px;
position:absolute;
left:10px;
}
.error:nth-of-type(1){
top:152px;
}
.error:nth-of-type(2){
top:222px;
}
.error:nth-of-type(3){
top:294px;
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
.icon-youxiang{
top:262px;
}
</style>
	<link rel="stylesheet" type="text/css" href="/petstore/font/iconfont.css">
  </head>
  
  <body>
  <div>
  <h1>注册</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/UserServlet' />" method="post">
	<input type="hidden" name="method" value="regist"/>
	<input type="text" name="username" value="${form.username }" class='text' placeholder='请输入注册用户名'/><span style="color: red" class='error'>${errors.username }</span>
	<span class="iconfont icon-ren"></span><br/>
	<input type="password" name="password" value="${form.password}" class='text' placeholder='请输入注册密码'/><span style="color: red" class='error'>${errors.password }</span>
<span class="iconfont icon-icon_suo-"></span><br/>
	<input type="text" name="email" value="${form.email }" class='text' placeholder='请输入注册邮箱'/><span style="color: red" class='error'>${errors.email }</span>
	<span class="iconfont icon-youxiang"></span><br/>
	<input type="submit" value="注册"/>
	<input type="reset" value="重置"/>
</form>
</div>
  </body>
</html>
