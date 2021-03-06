<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>支付页面</title>
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/jquery.min2.js"></script>
    <!--轮播图js-->
    <script type="text/javascript" src="js/script3.js"></script>
    <!--轮播图js end-->
</head>
<body>

<!--header-->
<div class="header2">
    <div class="header-box">
    <div class="header">
    <div class="header-left-title">
        <div class="welcome"><img  class="icon" src="images/icon/welcome.png" alt="">&nbsp;欢迎来到<a href="/market.jsp">未莱大数据商城</a></div>
    </div>
    <div class="header_right_title">
        <ul>
            <li><a href="">欢迎您!</a></li>
            <s:if test="#session.user == null">
                <li><a href="login.jsp">点击登录</a></li>
            </s:if>
            <s:else>
                <li><a href="users_doWebLogout"><s:property value="#session.user.name" /> &nbsp;<font-style="italic">退出</font-style></a></li>
            </s:else>
        </ul>
    </div>
        <div class="header-center-title">
     </div>
        <div class="header_right_title"></div>
        </div>
    </div>
        <div class="header-nav-box">
    <div class="nav">
    <div class="nav-logo">
        <a href="market.jsp" class="logo"><img src="images/logo.jpg" alt=""></a>
    </div>
    <div class="nav-search-box">
        <form action="" name="fomr1">
    <div class="nav-search">
    <div class="bar1">
        <input type="text" placeholder="请输入您要搜索的内容..." class="text"><button type="submit" class="btn">搜索</button>
        </div>
    <div class="search-key">
    <span class="key-title">热搜词汇:</span>
    <div class="key">
    <ul>
        <li><a href="goods.html">手机</a></li>
        <li><a href="goods.html">电子产品</a></li>
        <li><a href="goods.html">衣服</a></li>
        <li><a href="goods.html">鞋子</a></li>
        <li><a href="goods.html">...</a></li>
    </ul>
    </div>
</div>
</div>
    </form>
</div>
    <div class="wechat-box">
<ul>
</ul>
    </div>

</div>
        <div class="nav-daohang">
            <div class="daohang">
            <ul>
                <li><a href="market.jsp">首页</a></li>
                <li><a href="index.php-controller=site&action=article.htm">有偿信息</a></li>
            </ul></div>
        </div>

    </div>
</div>
</div>
<!--hearder end!-->


<!--cart-->

<div class="cart-box" style="height: 700px;">

    <div class="cart-buzhou">
        <img src="images/cart-move3.jpg" alt="">

    </div>

    <div class="cart">
        <div class="cart3-pay-title">
<span><img src="images/icon/config.png" alt="" width="50" height="50">&nbsp;&nbsp;&nbsp;&nbsp;您的订单提交成功,请在10分钟内尽快付款，以免订单失效！</span>
        </div>
        <div class="cart3-order">
                <span>订单编号：1000000020200519&nbsp;&nbsp;|&nbsp;&nbsp;应付金额&nbsp;<a><span id="price">00.00</span></a>&nbsp;元</span>
        </div>
        <p align="center" id="time-out">支付剩余时间：<span>6</span><span>0</span><span>0</span>秒&nbsp;&nbsp;

    </div>
    <div class="cart3-pay-type">
<div class="type-title">
<ul id="list">
    <li id="wechat">微信支付</li>
    <li id="ali-pay">支付宝支付</li>
</ul>
</div>
<div class="type-content" ID="tb1">

</div>

        <div class="type-content" ID="tb2">
           
        </div>

        <div class="type-content" ID="tb3">
            <img src="images/wechat-pay.png" alt="" >

        </div>

        <div class="type-content" ID="tb4">
            <img src="images/ali-pay.png" alt="" >
        </div>

    </div>

</div>

<!--cart end!-->

<!--footer-->
<!--footer-->
<div class="footer-box" style="position:fixed;bottom: 0;">
    <div class="footer-footer">
        <center> <p2><span>&nbsp;&copy;&nbsp;</span><span>All Rights Reserved.&nbsp;|&nbsp;</span><a href="http://beian.miit.gov.cn/" style="color:#FFFFFF">蒙ICP备2021000771号-1</a></p2></center>
    </div>
</div>
<!--footer end!-->



<!--点击标签显示对应content/js-->
<script type="text/javascript">
    $("#ic-card").click(function(){
        $("#tb1").show(800);
        $("#tb2").hide();
        $("#tb3").hide();
        $("#tb4").hide();
    });
    $("#pay-card").click(function(){
        $("#tb2").show(800);
        $("#tb1").hide();
        $("#tb3").hide();
        $("#tb4").hide();

    });
    $("#wechat").click(function(){
        $("#tb3").show(800);
        $("#tb1").hide();
        $("#tb2").hide();
        $("#tb4").hide();
    });
    $("#ali-pay").click(function(){
        $("#tb4").show(800);
        $("#tb1").hide();
        $("#tb2").hide();
        $("#tb3").hide();
    });

    /*点击标签，背景色改变*/
    $('#list li').on('click',function(e){
        event.preventDefault();
        $(this).css('background','#fff').siblings().css('background','#fafafa');

    });



</script>

<script type="text/javascript"  charset="UTF-8">
   window.onload=function(){
    var url = document.location.href;
    var lct="";
    if (url.indexOf("=")>0)
    {
        lct = url.substring(url.indexOf("=")+1,url.length)
        var familyData =lct.split("="); 
        var price = familyData[0].split("&");
        document.getElementById("price").innerHTML = decodeURI(price[0]);
    }
}
</script>
</body>
</html>