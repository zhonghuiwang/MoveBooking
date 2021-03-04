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
    
    <title>未莱大数据</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <!-- Site Title-->
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Lato:100,300,300i,400,700,900%7CLibre+Baskerville:400,700%7CNanum+Myeongjo:400;700;800">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/fonts.css">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
  </head>
  <body>
    <!-- Page preloader-->
    <div class="page-loader">
      <div class="page-loader-body">
        <div class="preloader-wrapper big active">
          <div class="spinner-layer spinner-blue">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div>
            <div class="gap-patch">
              <div class="circle"></div>
            </div>
            <div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>
          <div class="spinner-layer spinner-red">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div>
            <div class="gap-patch">
              <div class="circle"></div>
            </div>
            <div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>
          <div class="spinner-layer spinner-yellow">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div>
            <div class="gap-patch">
              <div class="circle"></div>
            </div>
            <div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>
          <div class="spinner-layer spinner-green">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div>
            <div class="gap-patch">
              <div class="circle"></div>
            </div>
            <div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page-->
    <div class="page">
      <!-- Page Header-->
      <header class="section page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap rd-navbar-corporate">
          <nav class="rd-navbar" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-fixed" data-xl-device-layout="rd-navbar-static" data-md-stick-up-offset="130px" data-lg-stick-up-offset="100px" data-stick-up="true" data-sm-stick-up="true" data-md-stick-up="true" data-lg-stick-up="true" data-xl-stick-up="true">
            <div class="rd-navbar-collapse-toggle" data-rd-navbar-toggle=".rd-navbar-collapse"><span></span></div>
            <div class="rd-navbar-top-panel rd-navbar-collapse novi-background">
            </div>
            <div class="rd-navbar-inner">
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-panel">
                <!-- RD Navbar Toggle-->
                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                <!-- RD Navbar Brand-->
                <div class="rd-navbar-brand">
                  <!--Brand--><a class="brand-name" href="index.jsp"><img class="logo-default" src="images/logo.jpg" alt="" width="185" height="57"/><img class="logo-inverse" src="images/logo.jpg" alt="" width="185" height="57"/></a>
                </div>
              </div>
              <div class="rd-navbar-aside-center">
                <div class="rd-navbar-nav-wrap">
                  <!-- RD Navbar Nav-->
                  <ul class="rd-navbar-nav">
                         <li><a href="index.jsp">首页</a>
                    </li>
                    <li class="active"><a href="about.html">公司简介</a>
                    </li>
                    <li><a href="users_loginMarket">商城</a>
                    </li>
                   <!--  <li><a href="#">二手信息</a>
                      RD Navbar Dropdown
                      <ul class="rd-navbar-dropdown">
                        <li><a href="fullwidth-gallery-hover-title.html">二手车</a></li>
                        <li><a href="grid-gallery-hover-title.html">二手房</a></li>              
                      </ul>
                    </li>
                    <li><a href="#">招聘信息</a>
                      RD Navbar Megamenu
                      <ul class="rd-navbar-megamenu">
                        <li>
                          <ul class="rd-megamenu-list">
                            <li><a href="services.html">求职平台</a></li>
                          </ul>
                        </li>
                        <li>
                          <ul class="rd-megamenu-list">
                            <li><a href="404.jsp">就业咨询</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li> -->
                    <!-- <li><a href="tables.html">付费咨询</a>
                    </li> -->
                    <li><a href="contacts.html">联系我们</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="rd-navbar-aside-right">
              	 <s:if test="#request.ifSuccess == 'yes'">
           			 <font color="black" size="4" style="font-style:italic;">欢迎您,<s:property value="#session.user.name" />! &nbsp;&nbsp;</font>
           			 <font color="grey"><a href="users_doWebLogout">退出</a></font>
     			</s:if>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <section class="section">
        <div class="swiper-form-wrap">
          <!-- Swiper-->
          <div class="swiper-container swiper-container swiper-container_height-1 swiper-align-left swiper-align-left-custom context-dark bg-gray-darker" data-loop="false" data-autoplay="4782" data-simulate-touch="false" data-slide-effect="fade">
            <div class="swiper-wrapper">
              <div class="swiper-slide" data-slide-bg="images/bg1.jpg">
                <div class="swiper-slide-caption event-default-swiper">
                  <div class="container container-bigger swiper-main-section">
                    <div class="row row-fix justify-content-sm-center justify-content-md-start">
                      <div class="col-md-6 col-lg-5 col-xl-4 col-xxl-5">
                        <h3>未莱大数据</h3>
                        <p class="text-spacing-sm">着眼当下，面向未来。</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide" data-slide-bg="images/bg2.jpg">
                <div class="swiper-slide-caption event-default-swiper">
                  <div class="container container-bigger swiper-main-section">
                    <div class="row row-fix justify-content-sm-center justify-content-md-start">
                      <div class="col-md-6 col-lg-5 col-xl-4 col-xxl-5">
                        <h3>我们的服务</h3>
                        <p class="text-spacing-sm">汇聚本地化供求信息，提供本地化信息服务。</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide" data-slide-bg="images/bg3.jpg">
                <div class="swiper-slide-caption event-default-swiper">
                  <div class="container container-bigger swiper-main-section">
                    <div class="row row-fix justify-content-sm-center justify-content-md-start">
                      <div class="col-md-6 col-lg-5 col-xl-4 col-xxl-5">
                        <h3>我们的宗旨</h3>
                        <p class="text-spacing-sm">以客户为中心，为客户提供优质服务。</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Swiper controls-->
            <div class="swiper-pagination-wrap">
              <div class="container container-bigger">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="swiper-pagination"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="container container-bigger form-request-wrap form-request-wrap-modern">
            <div class="row row-fix justify-content-sm-center justify-content-lg-end">
              <div class="col-lg-5 col-xxl-5">
                <div class="form-request form-request-modern">
                  <h4>用户登录</h4>
                  <!-- RD Mailform-->
                  <s:form action="users_doWebLogin" class="rd-mailform form-fix">
                    <div class="row row-17 row-fix">
                      <div class="col-sm-12">
                        <label class="form-label-outside"><font size="2px"> 没有账号？<a href="registration.jsp">点击注册</font></a><br/></label>
                        <div class="form-wrap form-wrap-inline">
                          <input class="form-input" name="name" type="text">
                        </div>
                      </div>
                      <div class="col-sm-12">
                        <div class="form-wrap form-wrap-inline">
                          <input class="form-input" name="password" type="password">
                        </div>
                      </div>
                    </div>
                    <div class="form-wrap form-button">
                      <button class="button" type="submit">登录</button>
                    </div>
                  </s:form>
                  <br/>
   				  <s:if test="#request.ifrSuccess == 'yes'">
           	      <font color="red" size="3">注册成功！</font>
     		      </s:if>
   			      <s:if test="#request.ifSuccess == 'yes'">
              		<font color="red" size="3">登录成功！</font>
     		      </s:if>
    			  <s:if test="#request.ifSuccess == 'no'">
            	    <font color="red" size="3">没有账号！</font>
     		      </s:if>
     		      <s:if test="#request.ifSuccess == 'noLogin'">
            	    <font color="red" size="3">请先登录！</font>
     		      </s:if>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!--Our Best Rooms-->
      <section class="section section-variant-1 bg-default novi-background bg-cover">
        <div class="container container-wide">
          <div class="row row-fix justify-content-xl-end row-30">
            <div class="col-xl-8">
              <div class="parallax-text-wrap">
                <h3>最新商品</h3><span class="parallax-text">最新商品</span>
              </div>
            </div>
            <div class="col-xl-3 text-xl-right"><a class="button" href="users_loginMarket">商城</a></div>
          </div>
          <div class="row row-xxl-60 row-50 offset-top-xxl-93">
            <div class="col-sm-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/maozi.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-primary" href="subpages/maozi.html">详情</a></div>
                </div>
                <div class="event-default-inner">
                  <h5><a class="event-default-title" href="subpages/maozi.html">帽子</a><span class="event-default-price">¥25.5</span></h5>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/shuibei.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-primary" href="subpages/products_shuibei.html">详情</a></div>
                </div>
                <div class="event-default-inner">
                  <h5><a class="event-default-title" href="subpages/products_shuibei.html">水杯</a><span class="event-default-price">¥14.9</span></h5>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/maojin.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-primary" href="subpages/products_yujin.html">详情</a></div>
                </div>
                <div class="event-default-inner">
                  <h5><a class="event-default-title" href="subpages/products_yujin.html">纯棉浴巾</a><span class="event-default-price">¥24.8</span></h5>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/doujiangji.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-primary" href="subpages/doujiangji.html">详情</a></div>
                </div>
                <div class="event-default-inner">
                  <h5><a class="event-default-title" href="subpages/doujiangji.html">豆浆机</a><span class="event-default-price">¥295</span></h5>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/dianfanbao.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-primary" href="subpages/dianfanbao.html">详情</a></div>
                </div>
                <div class="event-default-inner">
                  <h5><a class="event-default-title" href="subpages/dianfanbao.html">电饭煲</a><span class="event-default-price">¥185</span></h5>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/zhazhiji.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-primary" href="subpages/zhazhiji.html">详情</a></div>
                </div>
                <div class="event-default-inner">
                  <h5><a class="event-default-title" href="subpages/zhazhiji.html">榨汁机</a><span class="event-default-price">¥149.9</span></h5>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>

     <%--  <!-- Our Services-->
      <section class="section section-lg bg-gray-100 text-center">
        <div class="container container-wide">
          <h3>最热职位</h3>
          <div class="row row-30 justify-content-sm-center text-left">
            <div class="col-sm-10 col-md-6 col-xl-3">
              <article class="box-minimal-border">
                <div class="box-minimal-icon novi-icon linearicons-swim"></div>
                <p class="big box-minimal-title"><a href="tables.html">游泳教练</a></p>
                <hr>
                <div class="box-minimal-text text-spacing-sm">兴安盟游泳中心招游泳教练</div>
              </article>
            </div>
            <div class="col-sm-10 col-md-6 col-xl-3">
              <article class="box-minimal-border">
                <div class="box-minimal-icon novi-icon linearicons-wifi"></div>
                <p class="big box-minimal-title"><a href="tables.html">在线问卷</a></p>
                <hr>
                <div class="box-minimal-text text-spacing-sm">招在线问卷员若干</div>
              </article>
            </div>
            <div class="col-sm-10 col-md-6 col-xl-3">
              <article class="box-minimal-border">
                <div class="box-minimal-icon novi-icon linearicons-chef"></div>
                <p class="big box-minimal-title"><a href="tables.html">厨师</a></p>
                <hr>
                <div class="box-minimal-text text-spacing-sm">突泉大酒店招厨师一名</div>
              </article>
            </div>
            <div class="col-sm-10 col-md-6 col-xl-3">
              <article class="box-minimal-border">
                <div class="box-minimal-icon novi-icon linearicons-car"></div>
                <p class="big box-minimal-title"><a href="tables.html">汽车销售</a></p>
                <hr>
                <div class="box-minimal-text text-spacing-sm">乌兰浩特起亚汽车招销售经理一名，要求热情敬业</div>
              </article>
            </div>
          </div>
        </div>
      </section> --%>

      <!-- Latest News-->
      <section class="section section-variant-1 bg-default novi-background bg-cover">
        <div class="container container-wide">
          <div class="row row-fix justify-content-xl-end row-30">
            <div class="col-xl-8">
              <div class="parallax-text-wrap">
                <h3>本地信息</h3><span class="parallax-text">本地信息</span>
              </div>
            </div>
            <div class="col-xl-3 text-xl-right"><a class="button" href="http://xam.nmgnews.com.cn/">查看全部</a></div>
            <!-- Owl Carousel-->
            <div class="owl-carousel owl-carousel-team owl-carousel-inset row" data-items="1" data-sm-items="1" data-md-items="1" data-lg-items="3" data-xl-items="3" data-xxl-items="3" data-stage-padding="5" data-loop="true" data-margin="30" data-mouse-drag="false" data-dots="true" data-autoplay="true">
              <article class="post-blog"><a class="post-blog-image" href="http://xinganmeng.nmgnews.com.cn/system/2019/08/05/012755023.shtml"><img src="images/news1.jpg" alt="" width="570" height="415"/></a>
                <div class="post-blog-caption">
                  <div class="post-blog-caption-header">
                    <ul class="post-blog-tags">
                      <li><a class="button-tags" href="#">News</a></li>
                    </ul>
                    <ul class="post-blog-meta">
                      <li><span>by</span>&nbsp;<a href="http://xam.nmgnews.com.cn/">兴安日报</a></li>
                    </ul>
                  </div>
                  <div class="post-blog-caption-body">
                    <h5><a class="post-blog-title" href="http://xinganmeng.nmgnews.com.cn/system/2019/08/05/012755023.shtml">油菜花海 醉游人</a></h5>
                  </div>
                  <div class="post-blog-caption-footer">
                    <time datetime="2021">19-08-05 11:37</time>
                  </div>
                </div>
              </article>
              <article class="post-blog"><a class="post-blog-image" href="http://xinganmeng.nmgnews.com.cn/system/2020/05/13/012908975.shtml"><img src="images/news2.jpg" alt="" width="570" height="415"/></a>
                <div class="post-blog-caption">
                  <div class="post-blog-caption-header">
                    <ul class="post-blog-tags">
                      <li><a class="button-tags" href="#">News</a></li>
                    </ul>
                    <ul class="post-blog-meta">
                      <li><span>by</span>&nbsp;<a href="http://xam.nmgnews.com.cn/">兴安日报</a></li>
                    </ul>
                  </div>
                  <div class="post-blog-caption-body">
                    <h5><a class="post-blog-title" href="http://xinganmeng.nmgnews.com.cn/system/2020/05/13/012908975.shtml">乌市六个招商模式力争引资破百亿元</a></h5>
                  </div>
                  <div class="post-blog-caption-footer">
                    <time datetime="2021">20-05-13 20:36</time>
                  </div>
                </div>
              </article>
              <article class="post-blog"><a class="post-blog-image" href="http://xinganmeng.nmgnews.com.cn/system/2021/02/06/013067927.shtml"><img src="images/news3.jpg" alt="" width="570" height="415"/></a>
                <div class="post-blog-caption">
                  <div class="post-blog-caption-header">
                    <ul class="post-blog-tags">
                      <li><a class="button-tags" href="#">News</a></li>
                    </ul>
                    <ul class="post-blog-meta">
                      <li><span>by</span>&nbsp;<a href="http://xam.nmgnews.com.cn/">兴安日报</a></li>
                    </ul>
                  </div>
                  <div class="post-blog-caption-body">
                    <h5><a class="post-blog-title" href="http://xinganmeng.nmgnews.com.cn/system/2021/02/06/013067927.shtml">冬季水利 建设正酣</a></h5>
                  </div>
                  <div class="post-blog-caption-footer">
                    <time datetime="2021">21-02-06 10:27</time>
                  </div>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>

      <!-- Testimonials-->
      <section class="section section-lg text-center bg-gray-100">
        <div class="container container-bigger">
          <!-- Owl Carousel-->
          <div class="owl-carousel owl-layout-1" data-items="1" data-dots="true" data-nav="true" data-stage-padding="0" data-loop="true" data-margin="30" data-mouse-drag="false" data-autoplay="false">
            <article class="quote-boxed">
              <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/head1.jpg" alt="" width="210" height="210"/>
              </div>
              <div class="quote-boxed-main">
                <div class="quote-boxed-text">
                  <p>兴安生活app满足了我在本地的需求，真正实现了本地化在线服务，解决了我很多问题，推家大家下载使用</p>
                </div>
                <div class="quote-boxed-meta">
                  <p class="quote-boxed-cite">小梅</p>
                  <p class="quote-boxed-small">乌兰浩特</p>
                </div>
              </div>
            </article>
            <article class="quote-boxed">
              <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/head2.jpg" alt="" width="210" height="210"/>
              </div>
              <div class="quote-boxed-main">
                <div class="quote-boxed-text">
                  <p>有了自己家门口的网站，终于可以买到优质价廉的本地商品了。</p>
                </div>
                <div class="quote-boxed-meta">
                  <p class="quote-boxed-cite">兴安妹妹</p>
                  <p class="quote-boxed-small">扎赉特旗</p>
                </div>
              </div>
            </article>
            <article class="quote-boxed">
              <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/head3.jpg" alt="" width="210" height="210"/>
              </div>
              <div class="quote-boxed-main">
                <div class="quote-boxed-text">
                  <p>开始并不相信，抱着试一试的态度用了之后，体验超出我的想想，值得推荐</p>
                </div>
                <div class="quote-boxed-meta">
                  <p class="quote-boxed-cite">人生如戏</p>
                  <p class="quote-boxed-small">乌兰浩特</p>
                </div>
              </div>
            </article>
          </div>
        </div>
      </section>
     <%--  <!-- Gallery-->
      <section class="section section-sm-top text-center">
        <div class="isotope-wrap row row-50 row-fix">
          <!-- Isotope Content-->
          <div class="col-xl-12">
            <div class="row row-condensed row-no-gutter isotope" data-isotope-layout="fitRows" data-isotope-group="gallery-02" data-lightgallery="group">
              <div class="col-12 col-md-6 col-lg-4 isotope-item" data-filter="type 1">
                <div class="gallery-item-wrap"><a class="gallery-item gallery-item-fullwidth" href="images/best1.jpg" data-lightgallery="item">
                    <div class="gallery-item-image">
                      <figure><img src="images/best1.jpg" alt="" width="640" height="430"/>
                      </figure>
                      <div class="caption">
                        <p class="caption-title">二手车</p>
                        <p class="caption-text">突泉二手车 &amp; 2万起。</p>
                      </div>
                    </div></a>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-4 isotope-item" data-filter="type 1">
                <div class="gallery-item-wrap"><a class="gallery-item gallery-item-fullwidth" href="images/best2.jpg" data-lightgallery="item">
                    <div class="gallery-item-image">
                      <figure><img src="images/best2.jpg" alt="" width="640" height="430"/>
                      </figure>
                      <div class="caption">
                        <p class="caption-title">二手房</p>
                        <p class="caption-text">大坝沟二手房 &amp; 舒适临商业圈，拎包入住，价格面议。</p>
                      </div>
                    </div></a>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-4 isotope-item" data-filter="type 1">
                <div class="gallery-item-wrap"><a class="gallery-item gallery-item-fullwidth" href="images/best3.jpg" data-lightgallery="item">
                    <div class="gallery-item-image">
                      <figure><img src="images/best3.jpg" alt="" width="640" height="430"/>
                      </figure>
                      <div class="caption">
                        <p class="caption-title">二手房</p>
                        <p class="caption-text">loft式二手房 &amp; 110平，有意者可联系15546782654</p>
                      </div>
                    </div></a>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-4 isotope-item" data-filter="type 2">
                <div class="gallery-item-wrap"><a class="gallery-item gallery-item-fullwidth" href="images/best4.jpg" data-lightgallery="item">
                    <div class="gallery-item-image">
                      <figure><img src="images/best4.jpg" alt="" width="640" height="430"/>
                      </figure>
                      <div class="caption">
                        <p class="caption-title">二手房</p>
                        <p class="caption-text">博士园二手房 &amp; 设施齐全，拎包入住。</p>
                      </div>
                    </div></a>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-4 isotope-item" data-filter="type 2">
                <div class="gallery-item-wrap"><a class="gallery-item gallery-item-fullwidth" href="images/best5.jpg" data-lightgallery="item">
                    <div class="gallery-item-image">
                      <figure><img src="images/best5.jpg" alt="" width="640" height="430"/>
                      </figure>
                      <div class="caption">
                        <p class="caption-title">二手车</p>
                        <p class="caption-text">宝马车 &amp; 9万提车。</p>
                      </div>
                    </div></a>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-4 isotope-item" data-filter="type 2">
                <div class="gallery-item-wrap"><a class="gallery-item gallery-item-fullwidth" href="images/best6.jpg" data-lightgallery="item">
                    <div class="gallery-item-image">
                      <figure><img src="images/best6.jpg" alt="" width="640" height="430"/>
                      </figure>
                      <div class="caption">
                        <p class="caption-title">二手车</p>
                        <p class="caption-text">9成新二手车 &amp; 5万起。</p>
                      </div>
                    </div></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section> --%>

      <div class="section-md bg-gray-100">
        <div class="container container-wide">
          <div class="row row-fix row-50 justify-content-sm-center">
            <div class="col-xxl-9">
              <div class="box-cta box-cta-inline row-20">
                <div class="box-cta-inner">
                  <h3 class="box-cta-title">兴安生活 <br>完善您的本地化生活</h3>
                  <p>用服务打动消费者，用质量保证未莱</p>
                </div>
                <div class="box-cta-inner"><a class="button" href="package/xashapp.apk">兴安生活app下载</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Footer Minimal-->
      <footer class="section page-footer page-footer-minimal text-center bg-gray-950">
        <div class="container container-wide">
          <div class="row justify-content-sm-center align-items-md-center row-30">
            <div class="col-md-10 col-lg-7 col-xl-4 text-xl-left"></div>
            <div class="col-md-10 col-lg-7 col-xl-4">
              <p class="rights"><span>&nbsp;&copy;&nbsp;</span><span class="copyright-year"></span><span>.&nbsp;</span><span>All Rights Reserved.&nbsp;|&nbsp;</span><a href="http://beian.miit.gov.cn/">蒙ICP备2021000771号.</a></p>
            </div>
            <div class="col-md-10 col-lg-7 col-xl-4 text-xl-right">
            </div>
          </div>
        </div>
      </footer>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
  </body>
</html>
