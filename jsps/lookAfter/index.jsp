<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="/petstore/font/iconfont.css">
<link rel="stylesheet" type="text/css" href="/petstore/css/bootstrap.css">
<script src="/petstore/js/jquery.min.js"></script>
<script src="/petstore/js/bootstrap.min.js"></script>
<style type="text/css">
.subject{
width:400px;
margin:30px auto 0;
}
.subject>img{
width:400px;
}
.panel-group{
width:400px;
margin:10px auto 0;
text-align:center;
}
.panel-default > .panel-heading{
background:#fff;
}
a:active,a:hover,a:focus{
text-decoration:none;
color:#92caf0;
}
.content{
margin:15px auto 0;
}
.content,.content>img{
width:300px;
}
.foot{
width:200px;
margin:20px auto 0;
}
.foot img{
width:200px;
}
</style>
<script type="text/javascript">

		$(document).ready(function() {
			$('.collapse').collapse();
		});
</script>
  </head>
  
  <body>
    <div class='subject'><img src="/petstore/images/lookafter.png" /></div>
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          为什么要养宠物
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        宠物能够增加你的安全感
在今天的世界上人与人之间越来越缺乏信任和安全感，但宠物，猫或者狗，能够使你增加安全感。当你在夜间行走时一只狗可以成为你的卫士；猫会对进入你房间的陌生人发出“瞄”的警告。因为你知道你所信任的宠物时刻伴随在你身边，即使做不了什莫，也是一种精神的支持。不论是体型大的动物还是小的，飞行的还是在地上跑的，都会因为共同生活而产生一种紧密地精神联系。
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         可以养什么宠物
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        养什么动物都要有爱心和责任心！你要记住，你一旦养这种动物，你就要照顾这种动物到死为止，这个就是你养它的责任，绝对不能因为不喜欢或者厌倦了而去抛弃它！！
在我们这里你可以买到你心仪的猫，想要的狗和可爱的香猪哦~
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          养宠物需要什么
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <p>第一，金钱的支出</p>
        <p>第二，饲养空间</p>
        <p>第三，时间</p>
        <p>第四，耐心</p>
        <p>第五，家庭成员的认可</p>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          迎接宠物到家应该做些什么
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
      <div class="panel-body">
        着手规划居家空间前，必须先思考宠物在居家的定位，是单纯的宠物或是家庭成员;另外，若家中饲养宠物的类别较多，还需考虑不同宠物之间的互动。接下来则是宠物与主人生活的配合程度，基本上，仍然以主人自身的生活质量为重，再针对宠物需求来设定安排。
      </div>
    </div>
  </div>
</div>
	<div class='content'><img src="/petstore/images/click.png" /></div>
	<div class='foot'><a href="<c:url value='/jsps/lookAfter/lookAfterPet.jsp'/>"><img src="/petstore/images/hudie4.jpg" /></a></div>
  </body>
</html>
