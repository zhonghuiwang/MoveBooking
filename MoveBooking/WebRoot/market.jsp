<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>商城</title>
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!--轮播图js-->
    <script type="text/javascript" src="js/script3.js"></script>
    <!--轮播图js end-->
</head>
<body background="img/bg7.jpg">
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
    <a href="market.jsp"><img src="images/logo.png" alt=""></a>
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
                <li><a href="market.jsp">首页</a></li>
                <li><a href="index.php-controller=site&action=article.htm">有偿信息</a></li>
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
                                    <a href="subpages/fenlei_shuiguo.jsp">水果</a>
                                    <a href="subpages/fenlei_shucai.jsp">蔬菜</a>
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
                                    <a href="subpages/fenlei_fuzhuang.jsp">服装</a>
                                    <a href="subpages/fenlei_xiemao.jsp">鞋帽</a>
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
                                    <a href="subpages/fenlei_jiaju.jsp">家居</a>
                                    <a href="subpages/fenlei_chufang.jsp">厨房</a>

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
                                    <a href="subpages/fenlei_baojianpin.jsp">保健品</a>
                                    <a href="subpages/fenlei_huwaiyundong.jsp">户外运动</a>
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
                                    <a href="subpages/fenlei_caizhuang.jsp">彩妆</a>
                                    <a href="subpages/fenlei_hufu.jsp">护肤</a>

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
                                    <a href="subpages/fenlei_benzi.jsp">本子</a>
                                    <a href="subpages/fenlei_bi.jsp">笔</a>
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
    <li><a href="subpages/xiezi.jsp"><img src="images/xiezi.jpg" title="健康防护"></a></li>
    <li><a href="subpages/shuiguo_mangguo.jsp"><img src="images/mangguo.jpg" title="趣味家居"></a></li>
    <li><a href="subpages/shucai_xilanhua.jsp"><img src="images/xilanhua.jpg" title="美味生活"></a></li>

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
    <a href="subpages/products_shuibei.jsp" title="精品水杯"><img src="images/shuibei.jpg" alt=""></a>
    <span class="hot-label"><img src="images/hot.png" alt=""></span>
    </div>
            <div class="products-title2">
                <a href="subpages/products_shuibei.jsp">精品水杯</a>
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
                <a href="subpages/products_yujin.jsp" title="纯棉浴巾"><img src="images/maojin.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/products_yujin.jsp">纯棉浴巾</a>
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
                <a href="subpages/weishengzhi.jsp" title="卫生纸大甩卖"><img src="images/weishengzhi.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/weishengzhi.jsp">卫生纸大甩卖</a>
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
                <span class="count" title="已售99件">已售19999件</span>
            </div>


        </div>
        <!--循环products-->

        <!--循环products-->
        <div class="products">
            <div class="products-img">
                <a href="subpages/tuobu.jsp" title="拖布"><img src="images/tuobu.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/tuobu.jsp">拖布</a>
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
                <a href="subpages/maozi.jsp" title="帽子"><img src="images/maozi.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/maozi.jsp">帽子</a>
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
            <a href="subpages/zhazhiji.jsp" title="榨汁机"><img src="images/zhazhiji.jpg" alt=""></a>
            <span class="hot-label"><img src="images/hot.png" alt=""></span>
        </div>
        <div class="products-title2">
            <a href="subpages/zhazhiji.jsp">榨汁机</a>
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
                    <a href="subpages/dianbingxiang.jsp" title="电冰箱"><img src="images/dianbingxiang.jpg" alt=""></a>
                    <span class="hot-label"><img src="images/hot.png" alt=""></span>
                </div>
                <div class="products-title2">
                    <a href="subpages/dianbingxiang.jsp">电冰箱</a>
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
                <a href="subpages/yinshuiji.jsp" title="饮水机"><img src="images/yinshuiji.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/yinshuiji.jsp">饮水机</a>
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
                <a href="subpages/dianfanbao.jsp" title="电饭煲"><img src="images/dianfanbao.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/dianfanbao.jsp">电饭煲</a>
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
                <a href="subpages/doujiangji.jsp" title="豆浆机"><img src="images/doujiangji.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/doujiangji.jsp">豆浆机</a>
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
                <a href="subpages/kuansongduanxiu.jsp" title="宽松短袖 女"><img src="images/kuansongduanxiu.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/kuansongduanxiu.jsp">宽松短袖 女</a>
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
                    <a href="subpages/jingpinhanfu.jsp" title="精品汉服"><img src="images/hanfu.jpg" alt=""></a>
                    <span class="hot-label"><img src="images/hot.png" alt=""></span>
                </div>
                <div class="products-title2">
                    <a href="subpages/jingpinhanfu.jsp">精品汉服</a>
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
                <a href="subpages/nanshiduanxiu.jsp" title="男士短袖"><img src="images/nanshishangyi.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/nanshiduanxiu.jsp">男士短袖</a>
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
                <a href="subpages/minzufuzhuang.jsp" title="民族服装"><img src="images/minzufuzhuang.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/minzufuzhuang.jsp">民族服装</a>
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
                <a href="subpages/ertongfuzhuang.jsp" title="儿童服装"><img src="images/ertongfuzhuang.jpg" alt=""></a>
                <span class="hot-label"><img src="images/hot.png" alt=""></span>
            </div>
            <div class="products-title2">
                <a href="subpages/ertongfuzhuang.jsp">儿童服装</a>
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