<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html class="wide wow-animation" lang="en">
  <head>
    <base href="<%=basePath%>">
    <!-- Site Title-->
    <title>用户注册</title>
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
                  <!--Brand--><a class="brand-name" href="index.html"><img class="logo-default" src="images/qq2.jpg" alt="" width="185" height="57"/><img class="logo-inverse" src="images/qq2.jpg" alt="" width="185" height="57"/></a>
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
                   <!--  <li><a href="tables.html">付费咨询</a>
                    </li> -->
                    <li><a href="contacts.html">联系我们</a>
                    </li>
                  </ul>
                </div>
                <div class="rd-navbar-aside-right-inner">
                  <!-- RD Navbar Search-->
                </div>
              </div>
              <div class="rd-navbar-aside-right"><a class="button" href="package/xashapp.apk">兴安生活app下载</a></div>
            </div>
          </nav>
        </div>
      </header>
      <section class="section fullwidth-page bg-image bg-image-4">
        <div class="fullwidth-page-inner">
          <div class="section-lg text-center">
            <div class="container">
              <h3>用户注册</h3>
                  <!-- RD Mailform-->
                  <div class="row row-fix justify-content-sm-center">
                    <div class="col-md-8 col-lg-6 col-xl-4">
                      <!-- RD Mailform-->
                      <s:form class="rd-mailform rd-mailform-small form-fix" action="users_addWebUser">
                        <div class="form-wrap form-wrap-validation">
                          <input class="form-input form-bg" id="form-1-email" type="email" name="email" data-constraints="@Email @Required">
                          <label class="form-label" for="form-1-email">邮箱</label>
                        </div>
                        <div class="form-wrap form-wrap-validation">
                          <input class="form-input form-bg" id="form-1-username" type="text" name="username" data-constraints="@Required">
                          <label class="form-label" for="form-1-username">用户名</label>
                        </div>
                        <div class="form-wrap form-wrap-validation">
                          <input class="form-input form-bg" id="form-1-password" type="password" name="password" data-constraints="@Required">
                          <label class="form-label" for="form-1-password">密码</label>
                        </div>
                        <div class="form-wrap form-wrap-validation">
                          <input class="form-input form-bg" id="form-1-password-confirm" type="password" name="passwordagain" data-constraints="@Required">
                          <label class="form-label" for="form-1-password-confirm">确认密码</label>
                        </div>
                        <div class="form-button">
                          <button class="button button-block button-primary button-ellipse-xl" type="submit">注册</button>
                        </div>
                      </s:form>
                      <s:if test="#request.ifrSuccess == 'yes'">
           			 <font color="red" size="3">注册成功！</font>
     				</s:if>
    				<s:if test="#request.ifrSuccess == 'no'">
            			<font color="red" size="3">注册失败！</font>
     				</s:if>
     				<s:if test="#request.ifrSuccess == 'repeat'">
            			<font color="red" size="3">注册失败！两次密码不同！</font>
     				</s:if>
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