<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Login Page</title>
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
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
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
      <header class="section page-header bg-gray-darker breadcrumbs-custom-wrap">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap rd-navbar-corporate">
          <nav class="rd-navbar" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-fixed" data-xl-device-layout="rd-navbar-static" data-md-stick-up-offset="130px" data-lg-stick-up-offset="100px" data-stick-up="true" data-sm-stick-up="true" data-md-stick-up="true" data-lg-stick-up="true" data-xl-stick-up="true">
            <div class="rd-navbar-inner">
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-panel">
                <!-- RD Navbar Toggle-->
                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                <!-- RD Navbar Brand-->
                <div class="rd-navbar-brand">
                  <!--Brand--><a class="brand-name" href="index.jsp"><img class="logo-default" src="images/qq2.jpg" alt="" width="185" height="57"/><img class="logo-inverse" src="images/qq2.jpg" alt="" width="185" height="57"/></a>
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
              <div class="rd-navbar-aside-right">没有账户？<a href="registration.jsp">点击注册</a></div>
            </div>
          </nav>
        </div>
      </header>
      <section class="section fullwidth-page bg-image bg-image-4 novi-background custom-bg-image">
        <div class="fullwidth-page-inner">
          <div class="section-md text-center">
            <div class="container">
              <h3>用户登录</h3>
              <div class="row row-fix justify-content-sm-center">
                <div class="col-md-8 col-lg-6 col-xl-4">
                  <!-- RD Mailform-->
                  <s:form class="rd-mailform form-fix" action="users_doWebSingleLogin">
                    <div class="form-wrap form-wrap-validation">
                      <input class="form-input form-bg" id="forms-login-name" type="text" name="name" data-constraints="@Required">
                      <label class="form-label" for="forms-login-name">用户名</label>
                    </div>
                    <div class="form-wrap form-wrap-validation">
                      <input class="form-input form-bg" id="forms-login-password" type="password" name="password" data-constraints="@Required">
                      <label class="form-label" for="forms-login-password">密码</label>
                    </div>
                    	<input style="display: none" type="text" name="price" value=<s:property value="#request.price"/>>
                    <div class="form-button">
                      <button class="button button-block button-primary button-ellipse-xl" type="submit">登录</button>
                    </div>
                  </s:form>
                </div>
               
              </div>
            </div>
          </div>
          <!-- Page Footer-->
          <div class="section-xs page-footer text-center">
            <div class="container">
               <p class="rights"><span>&nbsp;&copy;&nbsp;</span><span class="copyright-year"></span><span>.&nbsp;</span><span>All Rights Reserved.&nbsp;|&nbsp;</span><a href="http://beian.miit.gov.cn/">蒙ICP备2021000771号.</a></p>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
  </body>
</html>