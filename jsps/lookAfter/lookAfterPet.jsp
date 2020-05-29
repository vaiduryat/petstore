<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lookAfterPet.jsp' starting page</title>
    
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
	.panel-group{
margin:20px auto 0;
text-align:left;
}
.panel-default > .panel-heading{
background:#fff;
}
a:active,a:hover,a:focus{
text-decoration:none;
color:#92caf0;
}
p{
padding:0;
margin:0;
font-size:14px;
}
	</style>
  </head>
  
  <body>
     <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          狗狗饲养需要注意的问题
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
<p>1、 长期用肉来喂犬</p>

<p>在肉类食物中钙和磷的比例为1:20,钙少磷多,而犬食物中钙和磷的最合适比例为1.1-1.2:1,因此长时间的用肉来喂犬的话,幼犬非常容易发生佝偻病,成犬容易发生骨质疏松症</p>

<p>2、 长时间的用肝脏配胡萝卜喂犬</p>

<p>肝脏含很多维生素A,胡萝卜富含很多胡萝素,一个胡萝卜素能在体内分解成两个维生素A,长时间的喂容易致使维生素A中毒,也可致使佝偻病或骨质疏松症.</p>

<p>3、 长期很多喂犬吃骨头</p>

<p>有些人为了给犬补钙,很多喂犬吃骨头,犬吃了很多骨头后,易发生吐逆,拉肚子或便秘,严峻的会构成肠梗阻.鸡,鸭的小骨头比照尖硬,尽量不喂爱犬,以防扎伤或卡在消化道内.</p>

<p>4、 狗狗不能吃以及不建议吃的食物</p>

<p>巧克力,洋葱,大葱，葡萄,盐和香料，甜味食物，虾、蟹、墨鱼、章鱼、海蜇等海鲜以及竹笋、豆类等高纤维食物，菇类，牛奶，骨头</p>

<p>5、 常常给犬洗澡</p>

<p>有些主人觉得犬遛弯回来脏,每天洗澡,会构成很多疾病,尤其是皮肤病,正常每10-15天洗澡一次即可。而且运用宠物专用的浴液</p>

<p>6、 免疫误区</p>

<p>不及时给犬做免疫随时或许感染流行症,有些主人存在侥幸心理,认为自己的犬健康而不给犬做防疫,等到患病才追悔莫及.</p>

<p>7、 补钙误区</p>

<p>钙对动物机体有着重要作用,通常应当通过饮食来补钙,调度钙磷平衡,假设饮食中缺钙,就应适当弥补,不要长期,很多的给犬补钙,钙量过多会致使多种疾病,最好方法便是从幼犬初步饲喂优质犬粮.</p>

<p>8、 不留意犬的口腔健康</p>

<p>长期喂软的食物,并不留意给爱犬清洁口腔,会构成牙结石的构成,牙齿松动,牙龈炎证,齿根骨折等,有些口腔疑问还可致使心脏疾病.</p>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         如何让狗狗乖乖吃药?
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
<p>◎ 胶囊 ◎</p>

<p>喂食时，请一手拿着药锭，另一手打开狗狗的嘴巴，快速地将药锭放在舌根处，并合上嘴巴，握住上下颚约几秒钟，再用手「轻骚喉部」，让狗狗做出吞咽动作。另外，若家中的宝贝较为贪吃，不妨把药锭稍微弄碎，藏入肉干或零食中，并与正常饭零食一并放置于手掌中来喂食，比较不容易被识破喔!</p>

<p>◎ 药粉 ◎</p>

<p>药粉比起药锭来说比较苦，建议混在饲料或鲜食中，让狗狗一起食用。若上述方式还是让狗狗宁愿饿肚子也不吃的话，请毛主人准备蒸熟的地瓜泥，将药粉少量包入，相信香甜美味的「特制地瓜球」，多数狗狗都无法抵挡喔!</p>

<p>◎ 药水 ◎</p>

<p>利用没有装针的注射筒，吸取药水后，从狗狗的牙齿两侧慢慢注入，宁可少量多次，也千万不可贪快，否则可能会呛到或喷得到处都是喔!药粉同样也可以混在水中，利用注射筒来喂食。</p>

<p>◎ 眼药水 ◎</p>

<p>利用拇指将狗狗的下眼睑处拉开，再快速拿出眼药水，从眼睛上方滴入眼内即可;</p>

<p>点药前千万不可拿着眼药水，在宝贝面前晃来晃去，甚至告诉他：「我们要点药囉!你要乖乖喔!」，此做法不仅无法安抚情绪，反而会让狗狗更紧张喔!</p>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          狗狗太瘦了怎么办？
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
<p>一、狗狗消瘦多见情况</p><br>

<p>1、食物的缺少：因为狗狗患各种或某种疾病，食欲不振或呈现非常强的厌恶，或是口中有发炎症状，致使无法充份汲取具有营养价值的食物，即构成狗狗过瘦。</p> 
<p>2、消化或吸收的缺陷：肠胃或肝脏、胰脏等的疾病，致使下痢或便秘表象;分化食物的消化酵素异常，营养素无法吸收等，是构成狗狗过瘦的原因。</p><br>

<p>二、狗狗吃的多还瘦如何办?</p><br>

<p>1、对于狗粮读：我们应当挑选蛋白质含量较高的狗粮。在挑选的时，请我们参照包装袋上的配方含量，来看蛋白质的含量。喂养高蛋白质的狗粮时，请减量喂养，不然很简单拉肚子。 </p>
<p>2、对于驱虫读：当您发现您的狗狗消瘦时，请必定考虑到一个要害的问题，您是不是有守时给狗狗驱虫?寄生虫是致使狗狗消瘦的元凶之一，是有必要要留神的东西。</p><br>

<p>三、狗狗厌食消瘦如何办?</p><br>

<p>1、增大运动量：多点时刻陪着狗狗出去跑跑，厌食疑问就顺利的处理了。不过对于不一样的狗狗，最佳选用不一样的运动办法。 </p>
<p>2、调整喂养时：最佳的处理办法是在炽热时多给狗狗弥补含糖含盐的水份，将往常喂养的时刻调整至气候清凉的夜晚或者清晨。</p>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          狗狗眼部常见的疾病
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
      <div class="panel-body">
<p>狗眼睛最常见的疾病：结膜炎</p><br>

<p>宠物犬的结膜炎一看名字就知道，是狗狗的结膜发炎，症状可能表现为眼睛睁不开、流眼泪、眼睛发红等情况。
因为结膜是覆盖有眼睛表面阻挡外来刺激的一层保护膜，所以对于外界的刺激最先引起的也都是结膜上的症状，
比如有脏东西进到眼睛里了、被烟熏了、被化学品喷进了眼睛，最先引起的也就是结膜发炎了。</p><br>

<p>狗狗眼睛常见的疾病：角膜炎</p><br>

<p>一直有种说法，眼睛是心灵的窗户，而角膜就是窗户的玻璃。角膜炎有许多情况都是由于外伤的刺激引起的，也有 因为像犬瘟这些传染病引起的并发症。
角膜应该是透明、清澈的，在得角膜炎的时候，狗狗的角膜就会变得混浊，还会引起狗狗眼睛疼痛和流泪。但与结膜炎的区别是狗狗的眼睛看起来应该不是那么的红，
主要的症状是集中在眼球中间的角膜部分。</p><br>

<p>狗狗眼睛常见的疾病：眼睑内翻</p><br>

<p>眼睑内翻听着貌似是一种挺严重的病，其实说白了就是我们常说的“倒睫”，狗狗的上眼皮的最里侧向眼睛里面翻，
使得睫毛扎到眼睛里。有不少狗狗都有这个毛病，通过动个类似双眼皮手术就可以解决了。眼睑内翻会引起狗狗的眼睛爱流眼泪，
总是眨眼，睫毛刺激眼睛的时间长了，就会引起角膜炎和结膜炎了。</p><br>

<p>狗狗眼睛的常见疾病：白内障</p><br>

<p>白内障是发生在狗狗眼球晶状体的疾病，是狗狗眼睛常见病里的一个比较严重的，
因为它会引起狗狗的眼睛失明。得白内障的原因也挺多，有先天的原因，也有因为年纪大了的原因，或是受外伤以后引起的等等。
刚开始得白内障的时候，狗狗并没有明显的视力不好的情况，随着晶状体的透明性减弱，慢慢视力就会受影响了。如果狗狗的年纪比较大了，
那么在平时就要注意观察狗狗的眼球，如果发现没有以前亮了或是清澈了，就要有这个意识狗狗有可能得了白内障。</p><br>
      </div>
    </div>
  </div>
</div>
	
  </body>
</html>
