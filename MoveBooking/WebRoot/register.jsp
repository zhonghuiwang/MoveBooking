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
	<title>内蒙古未莱网络营销科技有限公司</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link type="image/x-icon" href="favicon.ico" tppabs="http://xfjining.com/favicon.ico" rel="icon">
	<script type="text/javascript" charset="UTF-8" src="runtime/_systemjs/jquery/jquery-1.12.4.min.js" tppabs="http://xfjining.com/runtime/_systemjs/jquery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" charset="UTF-8" src="runtime/_systemjs/form/form.js" tppabs="http://xfjining.com/runtime/_systemjs/form/form.js"></script>
	<script type="text/javascript" charset="UTF-8" src="runtime/_systemjs/autovalidate/validate.js-v=5.1.js" tppabs="http://xfjining.com/runtime/_systemjs/autovalidate/validate.js?v=5.1"></script><link rel="stylesheet" type="text/css" href="runtime/_systemjs/autovalidate/style.css" tppabs="http://xfjining.com/runtime/_systemjs/autovalidate/style.css" />
	<script type="text/javascript" charset="UTF-8" src="runtime/_systemjs/artdialog/artDialog.js-v=4.8.js" tppabs="http://xfjining.com/runtime/_systemjs/artdialog/artDialog.js?v=4.8"></script><script type="text/javascript" charset="UTF-8" src="runtime/_systemjs/artdialog/plugins/iframeTools.js" tppabs="http://xfjining.com/runtime/_systemjs/artdialog/plugins/iframeTools.js"></script><link rel="stylesheet" type="text/css" href="runtime/_systemjs/artdialog/skins/black.css" tppabs="http://xfjining.com/runtime/_systemjs/artdialog/skins/black.css" />
	<script type="text/javascript" charset="UTF-8" src="runtime/_systemjs/artTemplate/artTemplate.js" tppabs="http://xfjining.com/runtime/_systemjs/artTemplate/artTemplate.js"></script><script type="text/javascript" charset="UTF-8" src="runtime/_systemjs/artTemplate/artTemplate-plugin.js" tppabs="http://xfjining.com/runtime/_systemjs/artTemplate/artTemplate-plugin.js"></script>
	<!--[if IE]><script src="views/huawei/javascript/html5.js" tppabs="http://xfjining.com/views/huawei/javascript/html5.js"></script><![endif]-->
	<script src="views/huawei/javascript/site.js" tppabs="http://xfjining.com/views/huawei/javascript/site.js"></script>
	<script type='text/javascript' src="public/javascript/public.js" tppabs="http://xfjining.com/public/javascript/public.js"></script>
	<link rel="stylesheet" href="views/huawei/skin/default/style/style.css" tppabs="http://xfjining.com/views/huawei/skin/default/style/style.css">
</head>
<body>
<!--

模版使用字体图标为优化过的 awesome 3.0 图标字体库

使用帮助见:http://www.bootcss.com/p/font-awesome/

 -->
<!-- 顶部工具栏 -->
<div class="header_top">
	<div class="web">
		<div class="welcome">
			欢迎您来到 内蒙古未莱网络营销科技有限公司！
		</div>
	</div>
</div>
<!-- 顶部工具栏 -->
<header class="header">
	<!-- logo与搜索 -->
	<div class="body_wrapper">
		<div class="web">
			<!-- logo -->
			<div class="logo_layer">
				<a title="内蒙古未莱网络营销科技有限公司" href="market.jsp" tppabs="http://xfjining.com/" class="logo">
					<img src="upload/logo/20200723052427260.png" tppabs="http://xfjining.com/upload/logo/20200723052427260.png">
				</a>
			</div>
			<!-- 搜索框 -->
			<div class="search_box">
					<!-- 搜索内容 -->
				<form method='get' action="http://xfjining.com/index.php">
					<input type='hidden' name='controller' value='site'>
					<input type='hidden' name='action' value='search_list'>
					<div class="search">
						<input type="text" name='word' class="search_keyword" autocomplete="off">
						<button class="search_submit" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</form>
				<!-- 热门搜索 -->
				<div class="search_hotwords">
									</div>
			</div>
		</div>
	</div>
		<!-- logo与搜索 -->

	<div class="nav_bar">
		<div class="home_nav_bar user_center">
		<!-- 导航栏 -->
		<div class="web">
			<div class="nav_index">
				<ul class="nav">
					<li class="user_nav_index home_nav_index"><a href="market.jsp"><span>首 页</span></a></li>
					<li class="user_nav_index home_nav_index"><a href="index.php-controller=site&action=article.htm"><span>有偿信息</span></a></li>
				</ul>
			</div>
		</div>
		</div>
	</div>
</header>

<!--主要模板内容 开始-->
<div class="home_content">

<section class="web">
	<header class="login_header">
		<h3>用户注册</h3>
		<div class="go_login">
			已有内蒙古未莱网络营销科技有限公司帐号？请点 <a href="index.php-controller=simple&action=login.htm" tppabs="http://xfjining.com/index.php?controller=simple&action=login">这里登录</a>
		</div>
		<p>欢迎来到我们的网站，如果您是新用户，请填写下面的表单进行注册</p>
	</header>
	<section class="reg_box">
		<form action="users_addWebUser">
						<dl>
				<dt>用户名：</dt>
				<dd>
					<input class="input_text" name='username' type="text" pattern="^[\w\u0391-\uFFE5]{2,20}$" alt="填写2-20个字符，可以为字母、数字、下划线和中文">
					<span>请填写用户名，格式为2-20个字符，可以为字母、数字、下划线和中文</span>
				</dd>
			</dl>
			<dl>
				<dt>设置密码：</dt>
				<dd>
					<input class="input_text" type="password" name='password' pattern="^\S{6,32}$" bind='repassword' alt='填写6-32个字符'>
					<span>填写登录密码，6-32个字符</span>
				</dd>
			</dl>
			<dl>
				<dt>确认密码：</dt>
				<dd>
					<input class="input_text" type="password" name='repassword' pattern="^\S{6,32}$" bind='password' alt='重复上面所填写的密码'>
					<span>重复上面所填写的密码</span>
				</dd>
			</dl>
						<dl>
				<dt></dt>
				<dd><input class="input_submit" type="submit" value="现在注册" /></dd>
			</dl>
		</form>
	</section>
</section>

</div>
<!--主要模板内容 结束-->

<footer class="foot">
	<!--<section class="service">
		<ul>
			<li class="item1">
				<i class="fa fa-star"></i>
				<strong>正品优选</strong>
			</li>
			<li class="item2">
				<i class="fa fa-globe"></i>
				<strong>上市公司</strong>
			</li>
			<li class="item3">
				<i class="fa fa-inbox"></i>
				<strong>300家连锁门店</strong>
			</li>
			<li class="item4">
				<i class="fa fa-map-marker"></i>
				<strong>上百家维修网点 全国联保</strong>
			</li>
		</ul>
	</section>-->
	<section class="copy">
		<div class="footer" style="text-align:center;">	<p class="copyright">		Powered by <span style="font-family:'微软雅黑';"><span style="background-color:#FFEDC4;">内蒙古未莱网络营销科技有限公司</span></span><span style="background-color:#FFEDC4;font-family:'微软雅黑';"></span> 	</p>Copyright © 2021 <a href="javascript:if(confirm(%27https://beian.miit.gov.cn/  \n\nThis file was not retrieved by Teleport Pro, because it is addressed using an unsupported protocol (e.g., gopher).  \n\nDo you want to open it from the server?%27))window.location=%27https://beian.miit.gov.cn/%27" tppabs="https://beian.miit.gov.cn/" target="_blank">蒙ICP备2021000771号-1</a> </div>	</section>
</footer>

</body>
</html>
<script>
//当首页时显示分类

$(function(){
	$('input:text[name="word"]').val("");
});
</script>
<script type="text/javascript">
_webUrl = "http://xfjining.com/index.php?controller=errors&action=error&message=";_themePath = "/views/huawei/";_skinPath = "/views/huawei/skin/default/";_webRoot = "/";
</script>