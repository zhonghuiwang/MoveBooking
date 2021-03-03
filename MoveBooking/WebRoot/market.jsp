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
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
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
    <div class="welcome"><img  class="icon" src="images/icon/welcome.png" alt="">&nbsp;欢迎来到<a href="">未莱大数据商城</a></div>
</div>
<div class="header_right_title">
    <ul>
        <li><a href="">欢迎您!</a></li>
        <li><a href=""><s:property value="#session.user.name" /></a></li>
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
    <a href="index.jsp" class="logo"><img src="images/logo.jpg" alt=""></a>
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
    </div>

</div>
        <div class="nav-daohang">
            <div class="daohang">
            <ul>
                <li><a href="index.jsp">首页</a></li>
                <li><a href="market.jsp">商城</a></li>
            </ul></div>
        </div>

    </div>
</div>
</div>
<!--hearder end!-->

<!--main-->
<div class="main-box">
    <div class="main">
        <!--main left-->
<div class="main-left">
    <!--左侧菜单-->
    <div class="sec-mainL left">
        <div class="mainL-hd-box">
            <h2 class="mainL-hd"><a href="goods.html" target="_blank">全部商品分类</a></h2>
        </div>
        <!--菜单列表-->
           <ul class="sec-mainNav">
                    <li>
                        <h3>生鲜果蔬</h3>
                        <span class="menu-more">更多</span>
                        <!--二级菜单-->
                        <div class="menu-panel">
                            <div class="menu-panel-hd">
                                <h4>热门分类</h4>
                                <div class="sub-group">
                                    <a href="subpages/fenlei_shuiguo.html">水果</a>
                                    <a href="subpages/fenlei_shucai.html">蔬菜</a>
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
                                    <a href="subpages/fenlei_fuzhuang.html">服装</a>
                                    <a href="subpages/fenlei_xiemao.html">鞋帽</a>
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
                                    <a href="subpages/fenlei_jiaju.html">家居</a>
                                    <a href="subpages/fenlei_chufang.html">厨房</a>

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
                                    <a href="subpages/fenlei_baojianpin.html">保健品</a>
                                    <a href="subpages/fenlei_huwaiyundong.html">户外运动</a>
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
                                    <a href="subpages/fenlei_caizhuang.html">彩妆</a>
                                    <a href="subpages/fenlei_hufu.html">护肤</a>

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
                                    <a href="subpages/fenlei_benzi.html">本子</a>
                                    <a href="subpages/fenlei_bi.html">笔</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

</div>
<!--main left-->
        <div class="main-center">
<!--轮播图-->
            <div id="flash">
                <div id="prev"></div>
                <div id="next"></div>
                <ul id="play">
                    <li style="display: block;"><img src="images/banner1.png" alt="" width="1100" height="400" /></li>
                    <li><img src="images/banner2.png" alt=""  width="1100" height="400"/></li>
                    <li><img src="images/banner1.png" alt=""  width="1100" height="400"/></li>
                    <li><img src="images/banner2.png" alt=""  width="1100" height="400"/></li>
                    <li><img src="images/banner1.png" alt=""  width="1100" height="400"/></li>
                    <li><img src="images/banner2.png" alt=""  width="1100" height="400"/></li>
                    </ul>
                    <ul id="button">
                       <li><div style="background: #A10000;">1</div></li>
                        <li><div>2</div></li>
                        <li><div>3</div></li>
                        <li><div>4</div></li>
                        <li><div>5</div></li>
                        <li><div>6</div></li>
                    </ul>
            </div>
        </div>
            <!--轮播图end-->
            <div class="main-bottom">
<ul>
    <li><a href="subpages/xiezi.html"><img src="images/xiezi.jpg" title="健康防护"></a></li>
    <li><a href="subpages/shuiguo_mangguo.html"><img src="images/mangguo.jpg" title="趣味家居"></a></li>
    <li><a href="subpages/shucai_xilanhua.html"><img src="images/xilanhua.jpg" title="美味生活"></a></li>

</ul>

            </div>
        </div>

    <div class="solid"></div>
    <!--main products-->

<div class="products-box">
   <div class="products-title">
  <span class="rq"><img src="images/icon/tuijian.png" alt="" width="30" height="20"></span>
    <span class="rq">精品推荐<img src="images/icon/tuijian.png" alt="" width="30" height="30"></span>
    <span class="tishi">温馨提示：根据您的浏览为您推荐</span>
  </div>

        <!--循环products-->
        <div class="products">
   <div class="products-img">
    <a href="subpages/products_shuibei.html" title="精品水杯"><img src="images/shuibei.jpg" alt=""></a>
    <span class="hot-label"><img src="images/hot.png" alt=""></span>
    </div>
            <div class="products-title2">
                <a href="subpages/products_shuibei.html">精品水杯</a>
            </div>
            <div class="products-title3">
                <ul>
                <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥14.9</span>
                <span class="count" title="已售99件">已售999件</span>
            </div>


        </div>
 <!--循环products-->

        <!--循环products-->          
        <div class="products">
            <div class="products-img">
                <a href="subpages/products_yujin.html" title="纯棉浴巾"><img src="images/maojin.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/products_yujin.html">纯棉浴巾</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥24.8</span>
                <span class="count" title="已售99件">已售959件</span>
            </div>


        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/weishengzhi.html" title="卫生纸大甩卖"><img src="images/weishengzhi.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/weishengzhi.html">卫生纸大甩卖</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥9.99</span>
                <span class="count" title="已售99件">已售199999件</span>
            </div>


        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/tuobu.html" title="拖布"><img src="images/tuobu.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/tuobu.html">拖布</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥24.6</span>
                <span class="count" title="已售99件">已售258件</span>
            </div>


        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/maozi.html" title="帽子"><img src="images/maozi.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/maozi.html">帽子</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥25.5</span>
                <span class="count" title="已售99件">已售32495件</span>
            </div>


        </div>
        <!--循环products-->
        <div class="solid"></div>
        <!--循环products-->






    </div>
    <!--main products end!-->

</div>
<!--main end!-->
<!--优惠活动-->
<div class="youhui-products-box">
    <div class="youhui">
    <div class="products-title">
        <span class="rq">优惠活动<img src="images/icon/tuijian.png" alt="" width="30" height="30"></span>
        <span class="tishi">温馨提示：根据您的浏览为您推荐</span>
        <span class="all-title"><a href="">查看全部</a></span>
    </div>

    <!--循环products-->
    <div class="products">
        <div class="products-img">
            <a href="subpages/zhazhiji.html" title="榨汁机"><img src="images/zhazhiji.jpg" alt=""></a>
            <span class="hot-label"><img src="images/hot.png" alt=""></span>
        </div>
        <div class="products-title2">
            <a href="subpages/zhazhiji.html">榨汁机</a>
        </div>
        <div class="products-title3">
            <ul>
                <li><a class="procuts-label" title="包邮">包邮</a></li>
                <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                <li><a class="procuts-label" title="满100减">满100元减</a></li>
            </ul>
        </div>
        <div class="products-piece">
            <span class="piece" title="￥1499.00">￥149.9</span>
            <span class="count" title="已售99件">已售989件</span>
        </div>


    </div>
    <!--循环products-->

        <!--循环products-->
        <div class="products">
                <div class="products-img">
                    <a href="subpages/dianbingxiang.html" title="电冰箱"><img src="images/dianbingxiang.jpg" alt=""></a>
                    <span class="hot-label"><img src="images/hot.png" alt=""></span>
                </div>
                <div class="products-title2">
                    <a href="subpages/dianbingxiang.html">电冰箱</a>
                </div>
                <div class="products-title3">
                    <ul>
                        <li><a class="procuts-label" title="包邮">包邮</a></li>
                        <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                        <li><a class="procuts-label" title="满100减">满100元减</a></li>
                    </ul>
                </div>
                <div class="products-piece">
                    <span class="piece" title="￥1499.00">￥4149.00</span>
                    <span class="count" title="已售99件">已售819件</span>
                </div>
    
    
            </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/yinshuiji.html" title="饮水机"><img src="images/yinshuiji.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/yinshuiji.html">饮水机</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥169.4</span>
                <span class="count" title="已售99件">已售15854件</span>
            </div>


        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/dianfanbao.html" title="电饭煲"><img src="images/dianfanbao.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/dianfanbao.html">电饭煲</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥185.00</span>
                <span class="count" title="已售99件">已售544件</span>
            </div>


        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/doujiangji.html" title="豆浆机"><img src="images/doujiangji.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/doujiangji.html">豆浆机</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥295.0</span>
                <span class="count" title="已售99件">已售8546件</span>
            </div>

    </div>

        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/kuansongduanxiu.html" title="宽松短袖 女"><img src="images/kuansongduanxiu.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/kuansongduanxiu.html">宽松短袖 女</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥49.9</span>
                <span class="count" title="已售99件">已售99件</span>
            </div>
    
    
        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
                <div class="products-img">
                    <a href="subpages/jingpinhanfu.html" title="精品汉服"><img src="images/hanfu.jpg" alt=""></a>
                    <span class="hot-label"><img src="images/hot.png" alt=""></span>
                </div>
                <div class="products-title2">
                    <a href="subpages/jingpinhanfu.html">精品汉服</a>
                </div>
                <div class="products-title3">
                    <ul>
                        <li><a class="procuts-label" title="包邮">包邮</a></li>
                        <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                        <li><a class="procuts-label" title="满100减">满100元减</a></li>
                    </ul>
                </div>
                <div class="products-piece">
                    <span class="piece" title="￥1499.00">￥149.00</span>
                    <span class="count" title="已售99件">已售19件</span>
                </div>
    
    
            </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/nanshiduanxiu.html" title="男士短袖"><img src="images/nanshishangyi.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/nanshiduanxiu.html">男士短袖</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥69.4</span>
                <span class="count" title="已售99件">已售1574件</span>
            </div>


        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/minzufuzhuang.html" title="民族服装"><img src="images/minzufuzhuang.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/minzufuzhuang.html">民族服装</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥149.00</span>
                <span class="count" title="已售99件">已售54件</span>
            </div>


        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/ertongfuzhuang.html" title="儿童服装"><img src="images/ertongfuzhuang.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/ertongfuzhuang.html">儿童服装</a>
            </div>
            <div class="products-title3">
                <ul>
                    <li><a class="procuts-label" title="包邮">包邮</a></li>
                    <li><a class="procuts-label" title="支持花呗">支持花呗</a></li>
                    <li><a class="procuts-label" title="满100减">满100元减</a></li>
                </ul>
            </div>
            <div class="products-piece">
                <span class="piece" title="￥1499.00">￥95.0</span>
                <span class="count" title="已售99件">已售4898件</span>
            </div>


        </div>
        <!--循环products-->
    </div>
</div>
<!--优惠活动end-->
<!--footer-->
<div class="footer-box" style="position:fixed;bottom: 0;">
    <div class="footer-footer">
        <center> <p2><span>&nbsp;&copy;&nbsp;</span><span>All Rights Reserved.&nbsp;|&nbsp;</span><a href="http://beian.miit.gov.cn/" style="color:#FFFFFF">蒙ICP备2021000771号.</a></p2></center>
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
            };
        });
        $('.sec-mainNav li').on('mouseleave', function() {
            $(this).find('.menu-panel').hide();
        });
    });
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