<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>购物车</title>
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/cart.js"></script>
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
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="wechat-box">
                </div>

            </div>
            <div class="nav-daohang">
                <div class="daohang">
                    <ul>
                        <li><a href="market.jsp">商城</a></li>
                        <li><a href="index.php-controller=site&action=article.htm">付费信息</a></li>
                    </ul></div>
            </div>

        </div>
    </div></div>
<!--hearder end!-->


<!--cart-->

<div class="cart-box">

    <!--步骤图-->
    <div class="cart-buzhou">
        <img src="images/cart-move.jpg" alt="">

    </div>
<!--步骤图end-->
    <!--购物车-->
    <div class="catbox">
        <table id="cartTable">
            <thead>
            <tr>
                <th ><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
                <th >商品</th>
                <th>单价</th>
                <th >数量</th>
                <th >小计</th>
                <th >操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="checkbox"><input class="check-one check" type="checkbox"/></td>
                <td class="cart-goods"><img src="images/1-1.jpg" alt="" id="imageid"/><span id="name"></span></td>
                <td class="price"><span id="price1"></span></td>
                <td class="count"><span class="reduce"></span><input class="count-input" type="text" value="1"/><span class="add">+</span></td>
                <td class="subtotal"><span id="price2"></span></td>
                <td class="operation"><span class="delete">删除</span></td>
            </tr>
            </tbody>
        </table>

        <div class="foot" id="foot">
            <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
            <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
            <div class="fr closing"><span id="gopay">结算</span></div>
            <div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
            <div class="fr selected" id="selected">已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
            <div class="selected-view">
                <div id="selectedViewList" class="clearfix">
                    <div><img src="images/1-1.jpg"><span>取消选择</span></div>
                </div>
                <span class="arrow">◆<span>◆</span></span>
            </div>
        </div>

    </div>
    <!--购物车end!-->
</div>
<!--cart end!-->
<!--footer-->
<div class="footer-box" style="position:fixed;bottom: 0;">
    <div class="footer-footer">
        <center> <p2><span>&nbsp;&copy;&nbsp;</span><span>All Rights Reserved.&nbsp;|&nbsp;</span><a href="http://beian.miit.gov.cn/" style="color:#FFFFFF">蒙ICP备2021000771号-1</a></p2></center>
    </div>
</div>
<!--footer end!-->
<script type="text/javascript">
    var pay = document.getElementById("gopay");
    pay.onclick = function(){
        var price =  document.getElementById("price2");
       window.location.href = "users_marketDoLogin?price="+price.innerHTML;
    }
</script>
</body>
</html>