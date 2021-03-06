<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>订单管理</title>
    <link rel="stylesheet" href="../css/index.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
</head>
<body>
<!--header-->
<div class="header2">
    <div class="header-box">
        <div class="header">
            <div class="header-left-title">
                <div class="welcome"><img  class="icon" src="../images/icon/welcome.png" alt="">&nbsp;欢迎来到<a href="">未莱大数据商城</a>!</div>
            </div>
            <div class="header-center-title">
            </div>
            <div class="header_right_title">
                <ul>
                    <li><a href="">欢迎您!</a></li>
                    <s:if test="#session.user == null">
                        <li><a href="../login.jsp">点击登录</a></li>
                    </s:if>
                    <s:else>
                        <li><a href="users_doWebLogout"><s:property value="#session.user.name" /> &nbsp;<font-style="italic">退出</font-style></a></li>
                    </s:else>
                </ul>
            </div>
        </div>
        <div class="header-nav-box">
            <div class="nav">
                <div class="nav-logo">
                    <a href="../market.jsp" class="logo"><img src="../images/logo.jpg" alt=""></a>
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
                                        <li><a href="../goods.html">手机</a></li>
                                        <li><a href="../goods.html">电子产品</a></li>
                                        <li><a href="../goods.html"><span id="good"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--hearder end!-->

<div class="user-order-box">

    <div class="user-order">
        <div class="home-location-box">
            <div class="goods-location">
                <i><img src="../images/icon/home.png" alt="" width="18" height="18"></i>
                <span><a href="../market.jsp">商城</a></span>
                <span>></span>
                <span><a href="#">订单管理</a></span>

            </div>


        </div>

        <div class="user-order-main">
            <!--个人中心左侧栏目-->
            <div class="home-box-left">
                <ul>
                    <h3><i><img src="../images/icon/user-products.png" width="18" alt="18"></i>&nbsp;订单中心</h3>
                    <li>我的订单</li>
                    <li><a href="../market.jsp">返回首页</a></li>

                </ul>

            </div>
            <!--个人中心左侧栏目end!-->

            <div class="user-order-manager">
          <div class="order-manager-title">
              <a href="" id="orderbtn" class="active">订单列表</a>
          </div>

                <!--订单列表-->
                <div id="tb1">
<div class="order-manager-title2">
    <table width="1080" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="79" height="40">订单状态</td>
            <td width="311"><label>
                <select name="select">
                    <option>所有订单</option>
                    <option>待付款</option>
                    <option>待发货</option>
                    <option>已发货</option>
                    <option>已完成</option>
                </select>
            </label>
                <input type="submit" name="Submit" value="查询" class="order-btn" />
            </td>
            <td width="70">订单号</td>
            <td width="185"><label>
                <input type="text" name="textfield" class="order-input"/>
            </label></td>
            <td width="435"><label>
                <input type="submit" name="Submit" value="查询" class="order-btn" />
            </label></td>
        </tr>
    </table>
</div>
                <div class="order-manager-title3">
                    <!--订单循环-->
                    <table width="1080" border="0" cellpadding="0" cellspacing="0" bordercolor="#d5d5d5" bgcolor="#fff">
                        <tr>
                            <td width="8%" height="51" align="center">订单号：</td>
                            <td width="20%">商品：</td>
                            <td width="25%"><a href=""> 官方自营</a></td>
                            <td width="18%" colspan="2"><img src="../images/icon/kefu.png" width="20" height="20">
                                <img src="../images/icon/qq.png" width="20" height="20">
                                <img src="../images/icon/ali.gif" width="16" height="16">
                            </td>

                        </tr>
                        <tr id="ordershow">
                            <td height="126" align="center"><img src="../images/small1.jpg" width="60" height="60" id="imageid"/></td>
                            <td><a href=""><span id="name"></span></a></td>
                            <td align="center"><h4><span id="price"></span></h4><p><span>(免运费)</span></p><p><span>在线付款</span></p></td>
                            <td align="center"><a href="" class="dfk">待付款</a><a href=""><p>订单详情</p></a></td>
                            <td align="center"><label>
                            	<p><input type="submit" name="Submit" value="去付款" class="go-pay" onclick="besurepay()"/></p>
                               </br>
                            </label></td>
                        </tr>
                    </table>

                    <!--订单循环end!-->
                </div>

                <!--order-page-->
                <div class="order-page">
                </div>
                <div class="order-page"></div>
                <div class="order-page"></div>
                <div class="order-page"></div>
                <div class="order-page"></div>
                <!--order-page end!-->
            </div>
                <!--订单列表end!-->
            </div>
        </div>
    </div>
</div>


<!--footer-->
<div class="footer-box" style="position:fixed;bottom: 0;">
    <div class="footer-footer">
        <center> <p2><span>&nbsp;&copy;&nbsp;</span><span>All Rights Reserved.&nbsp;|&nbsp;</span><a href="http://beian.miit.gov.cn/" style="color:#FFFFFF">蒙ICP备2021000771号-1</a></p2></center>
    </div>
</div>
<!--footer end!-->
<!--点击标签显示对应content/js-->
<script type="text/javascript">
    $("#orderbtn").click(function(){
        $("#tb1").show(800);
        $("#tb2").hide();
    });
    $("#voidbtn").click(function(){
        $("#tb2").show(800);
        $("#tb1").hide();

    });

    /*点击标签，背景色改变*/
    $('.order-manager-title a').on('click',function(e){
        event.preventDefault();
        $(this).css('background','#363636').siblings().css('background','#f5a700');

    });
</script>
<script type="text/javascript">
 function besurepay(){
 	var price =  document.getElementById("price");
 	window.location.href = "users_marketDoLogin?price="+price.innerHTML;
 }
</script>
<script type="text/javascript"  charset="UTF-8">
   window.onload=function(){
    var url = document.location.href;
    var name=""
    if (url.indexOf("=")>0)
    {
        name = url.substring(url.indexOf("=")+1,url.length)
        var familyData =name.split("="); 
        var img = familyData[0].split("&");
        var namestr = familyData[1];
        var name = namestr.split("&");
        document.getElementById("name").innerHTML = decodeURI(name[0]);
        document.getElementById("imageid").src = img[0];
        document.getElementById("price").innerHTML = familyData[2];
    }
   
}
</script>
<script type="text/javascript">
    function orderdisable(){
        var btn = document.getElementById("ordershow");
        btn.style.display="none";
        alert("取消失败");
    }
</script>

<script type="text/javascript">
    var pay = document.getElementById("gopay");
    pay.onclick = function(){
        alert("支付接口报错")
    }
</script>
</body>
</html>