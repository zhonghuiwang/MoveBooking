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
    <title>商城</title>
    <link rel="stylesheet" href="../css/index.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <!--轮播图js-->
    <script type="text/javascript" src="../js/script.js"></script>
    <!--轮播图js end-->
</head>
<body>

<!--header-->
<div class="header2">
    <div class="header-box">
    <div class="header">
    <div class="header-left-title">
        <div class="welcome"><img  class="icon" src="../images/icon/welcome.png" alt="">&nbsp;欢迎来到<a href="../market.jsp">未莱大数据商城</a></div>
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
        <div class="header-center-title">
     </div>
        <div class="header_right_title"></div>
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
        <li><a href="../goods.html">衣服</a></li>
        <li><a href="../goods.html">鞋子</a></li>
        <li><a href="../goods.html">...</a></li>
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
                <li><a href="../market.jsp">首页</a></li>
                <li><a href="../index.php-controller=site&action=article.htm">有偿信息</a></li>
            </ul></div>
        </div>

    </div>
</div>
</div>
<!--hearder end!-->

<div class="products-box-main">
<div class="products-show-box">
<div class="products-show-box-title">
    <ul>
        <li><a href="../market.jsp">商城</a></li>
        <li>-</li>
        <li><a href="../market.jsp">分类</a></li>
        <li>-</li>
        <li><a class="active-title">笔</a></li>

    </ul>

</div>
    <div class="products-show-box-mid">
<div class="products-img">
    <div id="outBox">
        <div class="leftBox">
            <div class="normalBox w">
                <div class="w" id="n"><img src="../images/bi1.jpg"></div>
            </div>
            <div class="botBox">
            </div>
        </div>
        <div class="magBox">
            <ul>
        </div>
    </div>

</div>

        <div class="products-box-mid-content">
            <h1 style="font-size: 16px;">笔 </h1>
            <ul class="ul-box">
                <li>
                    <table width="490" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="65" height="40"><div align="center">官网价格：</div></td>
                        <td width="347" class="price" style="text-decoration:line-through;color: #666666;">￥5.00</td>
                    </tr>
                        <tr>
                            <td width="65" height="40"><div align="center">VIP价格：</div></td>
                            <td width="347" class="price">￥3.00</td>
                        </tr>
                    <tr>
                        <td height="40" width="65"><div align="center">上架时间：</div></td>
                        <td class="time">2021.3.6</td>
                    </tr>
                    <tr>
                        <td height="40" width="65"><div align="center">品牌：</div></td>
                        <td class="time">xash文具</td>
                    </tr>
                </table>
                </li>
                <li>
                    <ul class="statistics">
                        <li>月销量<span class="count">2545544</span>+</li>
                        <li>累计评价<span class="count">5454151</span>+</li>
                        <li>关注<span class="count">4545</span>+</li>
                    </ul>
                </li>
                <li>
                    <table width="490" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="65" height="40"><div align="center">规格：</div></td>
                            <td width="347" class="price">
                                <ul class="statistics2">
                                <li><label><input name="size" type="radio" value="" />3根</label></li>
                                    <li><label><input name="size" type="radio" value="" />5根</label></li>
                                    <li><label><input name="size" type="radio" value="" />10根</label></li>
                            </ul>
                            </td>
                        </tr>
                        <tr>
                            <td height="40" width="65"><div align="center">颜色</div></td>
                            <td class="time">
                                <ul class="statistics2">
                <li><label><input name="color" type="radio" value="" />红</label></li>
                <li><label><input name="color" type="radio" value="" />蓝</label></li>
                <li><label><input name="color" type="radio" value="" />黑</label></li>
                                </ul></td>
                        </tr>
                        <tr>
                            <td height="40" width="65"><div align="center">数量：</div></td>
                            <td class="time">
                                <button id="jian">-</button>&nbsp;<input type="text" value="1" id="num" class="kucun">&nbsp;<button id="jia">+</button>&nbsp;库存：651件</td>
                        </tr>
                    </table>
                </li>
                <li>
                    <table width="490" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="65" height="35"><div align="right">发货地：</div></td>
                            <td width="404">兴安盟乌兰浩特市</td>
                        </tr>
                        <tr>
                            <td width="75" height="35"><div align="right">支付方式：</div></td>
                            <td width="404">货到付款&nbsp;|&nbsp;微信支付&nbsp;|&nbsp;支付宝&nbsp;|&nbsp;银联</td>
                        </tr>
                    </table>

                </li>
                <li>
                    <button type="submit" class="buy" onclick="redirectionhtml()">立刻购买</button>
                    <button type="submit" class="buy" onclick="gocart()">加入购物车</button>
                </li>
</ul>


        </div>

        <div class="products-shop-box">
<ul class="shop-title">春光文具店
    <li>公司名称：春光文具店</li>
    <li>保证金：1000￥</li>
    <li>所在地：内蒙古乌兰浩特市</li>
    <li>地址：内蒙古乌兰浩特市七中对面门市楼</li>
    <li>店铺等级：<img src="../images/xingxing.png" alt="" width="20" height="20" style="vertical-align: middle;"></li>
    <li><button><a href="">进入店铺</a></button><button><a href="">收藏店铺</a></button></li>
</ul>

        </div>

    </div>


    <div class="goods-detail-box">
<div class="detail-left">
<div class="detail-title">
    <ul>
        <li id="two1" onmouseover="setContentTab(&#39;two&#39;,1,3)" class="active">商品详情</li>
        <li id="two2" onmouseover="setContentTab(&#39;two&#39;,2,3)">商品评价（9999）</li>
        <li id="two3" onmouseover="setContentTab(&#39;two&#39;,3,3)">成交记录（9999）</li>
    </ul>

</div>

    <div class="detail" id="con_two_1">
      该商品参与了公益宝贝计划，每卖出一份都有0.5元贡献给慈善事业！
    </div>
    <div class="detail2" id="con_two_2">
        <table width="978" border="0" cellpadding="0" cellspacing="0" class="pinglun" >
            <tr bgcolor="#fafafa">
                <td width="86" height="80"><div align="center" style="font-size: 14px;">张小花</div></td>
                <td width="404" style="font-size: 14px;">挺好的，挺好的，</td>
                <td width="404"><div align="center" style="font-size: 14px;color: #666666;">2013-01-13 15:06</div></td>
            </tr>
            <tr bgcolor="#fafafa">
                <td width="86" height="80"><div align="center" style="font-size: 14px;">王佳丽</div></td>
                <td width="404" style="font-size: 14px;">很不错，</td>
                <td width="404"><div align="center" style="font-size: 14px;color: #666666;">2013-01-13 15:06</div></td>
            </tr>
            <tr bgcolor="#fafafa">
                <td width="86" height="80"><div align="center" style="font-size: 14px;">王夏林</div></td>
                <td width="404" style="font-size: 14px;">很好，很好</td>
                <td width="404"><div align="center" style="font-size: 14px;color: #666666;">2013-01-13 15:06</div></td>
            </tr>
        </table>
        <div class="detail-page">
            <ul>
                <li><a href="">上一页</a></li>
                <li><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li><a href="">3</a></li>
                <li><a href="">4</a></li>
                <li><a href="">下一页</a></li>

            </ul>
        </div>


    </div>

    <div class="detail3" id="con_two_3">
        <div class="detail3-title">
        <ul>
            <li>买家</li>
            <li>产品属性</li>
            <li>产品数量</li>
            <li>成交时间</li>
        </ul>
        </div>

        <div class="detail3-order">
            <ul>

                <li>张小花</li>
                <li>大小：大<br/>规格:5本</li>
                <li>1</li>
                <li>2020-5-14</li>

            </ul>
        </div>

        <div class="detail3-order">
            <ul>

                <li>王佳丽</li>
                <li>大小：大<br/>规格:5本</li>
                <li>1</li>
                <li>2020-5-14</li>

            </ul>
        </div>

        <div class="detail3-order">
            <ul>

                <li>王夏林</li>
                <li>大小：大<br/>规格:5本</li>
                <li>1</li>
                <li>2020-5-14</li>

            </ul>
        </div>

        <div class="detail3-order">
            <ul>

                <li>张三</li>
                <li>大小：大<br/>规格:5本</li>
                <li>10</li>
                <li>2020-5-14</li>

            </ul>
        </div>

        <div class="detail-page">
            <ul>
               

            </ul>
        </div>

    </div>




</div>
        <div class="detail-right">
            <div class="detail-right-title">
                <span style="padding-left: 10px;">店铺热销产品</span>
                <span style="float: right;padding-right: 10px;"><a href="">更多</a></span>


            </div>
            <ul>
            </ul>


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

<!--焦点图脚本-->
<script>
   //库存加减
    var num_jia = document.getElementById("jia");
    var num_jian = document.getElementById("jian");
    var input_num = document.getElementById("num");

    num_jia.onclick = function() {

        input_num.value = parseInt(input_num.value) + 1;
    }

    num_jian.onclick = function() {

        if(input_num.value <= 0) {
            input_num.value = 0;
        } else {

            input_num.value = parseInt(input_num.value) - 1;
        }

    }
</script>
<!--焦点图end-->
<script type="text/javascript" charset="utf-8">
    function redirectionhtml(){
        var url=encodeURI("笔");
        window.location.href = "user-order.jsp?image=../images/bi1.jpg&name="+url+"&price=3";
    }
</script>
<script type="text/javascript" charset="utf-8">
    function gocart(){
        var url=encodeURI("笔");
        window.location.href = "../cart.jsp?image=images/bi1.jpg&name="+url+"&price=3";
    }
</script>
<!--选项卡js-->
<script type="text/javascript">
    function setContentTab(name, curr, n) {
        for (i = 1; i <= n; i++) {
            var menu = document.getElementById(name + i);
            var cont = document.getElementById("con_" + name + "_" + i);
            menu.className = i == curr ? "active" : "";
            if (i == curr) {
                cont.style.display = "block";
            } else {
                cont.style.display = "none";
            }
        }
    }
</script>
</body>
</html>