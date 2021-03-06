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

<div class="goods-box">
<div class="goods-main-box">
<div class="goods-location">
<i><img src="../images/icon/home.png" alt="" width="18" height="18"></i>
<span><a href="">分类</a></span>
    <span>></span>
    <span><a href="">服装</a></span>
</div>

    <div class="goods-left-nav">

        <!--main left-->
        <div class="main-left">
            <!--左侧菜单-->
            <div class="sec-mainL left">
                <div class="mainL-hd-box">
                    <h2 class="mainL-hd"><a href="../market.jsp" target="_blank">全部商品分类</a></h2>
                </div>
                <!--菜单列表-->
                <ul class="sec-mainNav">
                    <li>
                        <h3>服装</h3>
                        <span class="menu-more">更多</span>
                        <!--二级菜单-->
                        <div class="menu-panel">
                            <div class="menu-panel-hd">
                                <h4>热门分类</h4>
                                <div class="sub-group">
                                    <a href="fenlei_shuiguo.jsp">水果</a>
                                    <a href="fenlei_shucai.jsp">蔬菜</a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>服装鞋帽</h3>
                        <!--二级菜单-->
                        <div class="menu-panel">
                            <div class="menu-panel-hd">
                                <h4>热门分类</h4>
                                <div class="sub-group">
                                    <a href="fenlei_fuzhuang.jsp">服装</a>
                                    <a href="fenlei_xiemao.jsp">鞋帽</a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>日用百货</h3>
                        <span class="menu-more">更多</span>
                        <!--二级菜单-->
                        <div class="menu-panel">
                            <div class="menu-panel-hd">
                                <h4>热门分类</h4>
                                <div class="sub-group">
                                    <a href="fenlei_jiaju.jsp">家居</a>
                                    <a href="fenlei_chufang.jsp">厨房</a>

                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>休闲养生</h3>
                        <span class="menu-more">更多</span>
                        <!--二级菜单-->
                        <div class="menu-panel">
                            <div class="menu-panel-hd">
                                <h4>热门分类</h4>
                                <div class="sub-group">
                                    <a href="fenlei_baojianpin.jsp">保健品</a>
                                    <a href="fenlei_huwaiyundong.jsp">户外运动</a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>美妆个护</h3>
                        <span class="menu-more">更多</span>
                        <!--二级菜单-->
                        <div class="menu-panel">
                            <div class="menu-panel-hd">
                                <h4>热门分类</h4>
                                <div class="sub-group">
                                    <a href="fenlei_caizhuang.jsp">彩妆</a>
                                    <a href="fenlei_hufu.jsp">护肤</a>

                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>学生用品</h3>
                        <span class="menu-more">更多</span>
                        <!--二级菜单-->
                        <div class="menu-panel">
                            <div class="menu-panel-hd">
                                <h4>热门分类</h4>
                                <div class="sub-group">
                                    <a href="fenlei_benzi.jsp">本子</a>
                                    <a href="fenlei_bi.jsp">笔</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <!--main left-->

        <div class="goods-zuijin">
            <div class="goods-zuijin-title">
                最近浏览
            </div>
            <div class="goods-zuijin-bottom">
                <a href="">清空浏览记录</a>
            </div>
        </div>

    </div>

    <div class="goods-right-box">


        <div class="goods-right-split">
            <table width="100%" border="1" cellpadding="0" cellspacing="0" height="40">
                <tr>
                    <td width="60"><a href="">排序方式</a></td>
                    <td width="50"><a href="">默认<img src="../images/icon/sanjiaox.png" width="12" height="14"></a></td>
                    <td width="50"><a href="">销量<img src="../images/icon/sanjiaox.png" width="12" height="14"></a></td>
                    <td width="50"><a href="">人气<img src="../images/icon/sanjiaox.png" width="12" height="14"></a></td>
                    <td width="50"><a href="">价格<img src="../images/icon/sanjiaox.png" width="12" height="14"></a></td>
                    <td width="120">￥<input type="text">&nbsp;-&nbsp;<input type="text"><button type="submit">确定</button></td>

                    <td width="200">商品所在地：  <label>
                        <select name="select">
                            <option>-请选择-</option>
                            <option>乌兰浩特</option>
                            <option>突泉</option>
                            <option>中旗</option>
                        </select>
                    </label><button type="submit">确定</button></td>
                </tr>
            </table>

        </div>

        <div class="goods">
<ul>

    <li class="goods-products">
        <span><a href="../subpages/jingpinhanfu.jsp"><img src="../images/hanfu.jpg" alt="" width="250" height="215" class="main-img"></a></span>
        <div class="goods-title">
            <a href="../subpages/jingpinhanfu.jsp">精品汉服</a>
        </div>
        <div class="goods-label">
            <ul>
                <li><a class="procuts-label" title="包邮">包邮</a></li>
                <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                <li><a class="procuts-label" title="满100减">满100元减</a></li>
            </ul>
        </div>
        <span class="goods-money">￥149.00</span>
        <span class="goods-shop-name"><a href=""><img src="../images/icon/kefu.png" width="20" height="20"></a></span>
    </li>

    <li class="goods-products">
        <span><a href="../subpages/nanshiduanxiu.jsp"><img src="../images/nanshishangyi.jpg" alt="" width="250" height="215" class="main-img"></a></span>
        <div class="goods-title">
            <a href="../subpages/nanshiduanxiu.jsp">男士短袖</a>
        </div>
        <div class="goods-label">
            <ul>
                <li><a class="procuts-label" title="包邮">包邮</a></li>
                <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                <li><a class="procuts-label" title="满100减">满100元减</a></li>
            </ul>
        </div>
        <span class="goods-money">￥69.4.00</span>
        <span class="goods-shop-name"><a href=""><img src="../images/icon/kefu.png" width="20" height="20"></a></span>
    </li>

    <li class="goods-products">
        <span><a href="../subpages/kuansongduanxiu.jsp"><img src="../images/kuansongduanxiu.jpg" alt="" width="250" height="215" class="main-img"></a></span>
        <div class="goods-title">
            <a href="../subpages/kuansongduanxiu.jsp">宽松短袖</a>
        </div>
        <div class="goods-label">
            <ul>
                <li><a class="procuts-label" title="包邮">包邮</a></li>
                <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                <li><a class="procuts-label" title="满100减">满100元减</a></li>
            </ul>
        </div>
        <span class="goods-money">￥49.9</span>
        <span class="goods-shop-name"><a href=""><img src="../images/icon/kefu.png" width="20" height="20"></a></span>
    </li>

    <li class="goods-products">
        <span><a href="../subpages/minzufuzhuang.jsp"><img src="../images/minzufuzhuang.jpg" alt="" width="250" height="215" class="main-img"></a></span>
        <div class="goods-title">
            <a href="../subpages/minzufuzhuang.jsp">民族服装</a>
        </div>
        <div class="goods-label">
            <ul>
                <li><a class="procuts-label" title="包邮">包邮</a></li>
                <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                <li><a class="procuts-label" title="满100减">满100元减</a></li>
            </ul>
        </div>
        <span class="goods-money">￥149.00</span>
        <span class="goods-shop-name"><a href=""><img src="../images/icon/kefu.png" width="20" height="20"></a></span>
    </li>
</ul>

        </div>

        <div class="goods-page">
<ul>
    <li><a href="">上一页</a></li>
    <li><a href="">1</a></li>
    <li><a href="">2</a></li>
    <li><a href="">3</a></li>
    <li><a href="">下一页</a></li>
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

<!--左侧导航JS-->
<script type="text/javascript">
    $(function() {
        var $top = $('.sec-mainNav').offset().top + $('.sec-mainNav').height()
        //左侧导航动画
        $('.sec-mainNav li').on('mouseenter', function() {
            var $height = $(this).offset().top + $(this).find('.menu-panel').outerHeight();
            $(this).find('.menu-panel').show();
            if($height - $top >= 0) {
                $(this).find('.menu-panel').css({
                    top: -($height - $top) + 'px'
                })
            }
        });
        $('.sec-mainNav li').on('mouseleave', function() {
            $(this).find('.menu-panel').hide();
        });
    });

</script>

<!--products焦点图切换-->
<script type="text/JavaScript">
    // prepare the form when the DOM is ready
    $(document).ready(function() {
        var galleryClass = '.goods-products';
        $(galleryClass+' li img').hover(function(){
            var $gallery = $(this).parents(galleryClass);
            $('.main-img',$gallery).attr('src',$(this).attr('src').replace('thumb/', ''));
        });
        var imgSwap = [];
        $(galleryClass+' li img').each(function(){
            imgUrl = this.src.replace('thumb/', '');
            imgSwap.push(imgUrl);
        });
        $(imgSwap).preload();
    });
    $.fn.preload = function() {
        this.each(function(){
            $('<img/>')[0].src = this;
        });
    }
</script>

</body>
</html>