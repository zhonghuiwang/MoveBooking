<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>后台管理系统</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="Styles/base.css" />
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <script type="text/javascript" src="Scripts/index.js"></script>
</head>
<body>
    <div class="warp">
        <!--头部开始-->
        <div class="top_c">
            <div class="top-menu">
                <ul class="top-menu-nav">
                    <li><a href="index.jsp">首页</a></li>
                    <li>查询界面<i class="tip-up"></i>
                        <ul class="kidc">
                            <li><a target="Conframe" href="users_getWebUsers">用户查询</a></li>
                            <li><a target="Conframe" href="">简历查询</a></li>
                            <li><a target="Conframe" href="">商品查询</a></li>
                            <li><a target="Conframe" href="">二手车查询</a></li>
                            <li><a target="Conframe" href="">二手房查询</a></li>
                            <li><a target="Conframe" href="">订单查询查询</a></li>
                        </ul>
                    </li>
                    <li>商品维护<i class="tip-up"></i>
                        <ul class="kidc">
                            <li><b class="tip"></b><a target="Conframe" href="goods_getGoodsBasic">增加</a></li>
                            <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-edit.html">修改</a></li>
                            <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-del.html">删除</a></li>
                        </ul>
                    </li>
                     <li>求职维护<i class="tip-up"></i>
                        <ul class="kidc">
                            <li><b class="tip"></b><a target="Conframe" href="jobsearch_getJobsBasic">增加</a></li>
                            <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-edit.html">修改</a></li>
                            <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-del.html">删除</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="top-nav">欢迎您，${sessionScope.user.name}！&nbsp;&nbsp;<a href="#">修改密码</a> | <a href="#">安全退出</a></div>
        </div>
        <!--头部结束-->
        <!--左边菜单开始-->
        <div class="left_c left">
            <h1>系统操作菜单</h1>
            <div class="acc">
                <div>
                    <a class="one">查询界面</a>
                    <ul class="kid">
                          <li><a target="Conframe" href="users_getWebUsers">用户查询</a></li>
                          <li><a target="Conframe" href="Template/find-alert.html">简历查询</a></li>
                          <li><a target="Conframe" href="Template/find-order.html">商品查询</a></li>
                          <li><a target="Conframe" href="WEB-INF/Template/find-1.html">二手车查询</a></li>
                          <li><a target="Conframe" href="WEB-INF/Template/find-2.html">二手房查询</a></li>
                          <li><a target="Conframe" href="WEB-INF/Template/find-2.html">订单查询查询</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">商品维护</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href="goods_getGoodsBasic">增加</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-edit.html">修改</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-del.html">删除</a></li>
                    </ul>
                </div>
                <div>
                    <a class="one">求职维护</a>
                    <ul class="kid">
                        <li><b class="tip"></b><a target="Conframe" href="jobsearch_getJobsBasic">增加</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-edit.html">修改</a></li>
                        <li><b class="tip"></b><a target="Conframe" href="Template/Maintain-del.html">删除</a></li>
                    </ul>
                </div>
                <div id="datepicker"></div>
            </div>

        </div>
        <!--左边菜单结束-->
        <!--右边框架开始-->
        <div class="right_c">
            <div class="nav-tip" onclick="javascript:void(0)">&nbsp;</div>

        </div>
        <div class="Conframe">
            <iframe name="Conframe" id="Conframe"></iframe>
        </div>
        <!--右边框架结束-->

        <!--底部开始-->
        <div class="bottom_c">Copyright &copy;2018-2021 内蒙古未莱大数据有限公司 版权所有</div>
        <!--底部结束-->
    </div>
  </body>
</html>
