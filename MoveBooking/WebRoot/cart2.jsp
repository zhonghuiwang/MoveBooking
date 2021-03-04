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
    <title>订单确认</title>
    <link rel="stylesheet" href="css/index.css">
    <!--订单确认main样式及js-->
    <link rel="stylesheet" type="text/css" href="css/checkOut.css">
    <script type="text/javascript" src="js/jquery_cart.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<!--header-->
<div class="header2">
    <div class="header-box">
        <div class="header">
            <div class="header-left-title">
            </div>
            <div class="header-center-title">
                <ul>
                </ul>
            </div>
            <div class="header_right_title">
                <ul>
                </ul>

            </div>


        </div>
        <div class="header-nav-box">
            <div class="nav">
                <div class="nav-logo">
                    <a href="" class="logo"><img src="images/logo.jpg" alt=""></a>
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
                    <ul>
                    </ul>
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
    </div></div>
<!--hearder end!-->


<!--cart2-->

<div class="cart-box">

    <div class="cart-buzhou">
        <img src="images/cart-move2.jpg" alt="">

    </div>

    <div class="cart">

        <div class="container">
            <div class="checkout-box">
                <form id="checkoutForm" action="" method="post">
                    <div class="checkout-box-bd">
                        <!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
                        <input type="hidden" name="Checkout[addressState]" id="addrState" value="0">
                        <!-- 收货地址 -->
                        <div class="xm-box">
                            <div class="box-hd">
                                <h2 class="title" >收货地址</h2>
                                <!---->
                            </div>
                            <div class="box-bd">
                                <div class="clearfix xm-address-list" id="checkoutAddrList">
                                	<dl class="item selected" id="elocation">
                                        <dt>
                                            <strong class="itemConsignee"><span id="name">张三</span></strong>
                                        </dt>
                                        <dd>
                                            <p class="tel itemTel" id="number">123456789</p>
                                            <p class="itemRegion" id="city">广东省深圳市龙岗区</p>
                                            <p class="itemStreet" id="area">布龙路445号</p>
                                        </dd>
                                        <dd style="display:none">
                                            <input type="radio" name="" class="addressId" value="">
                                        </dd>
                                    </dl>
                                
                                    <div class="item use-new-addr" id="J_useNewAddr" >
                                        <span class="iconfont icon-add"><a  href="addlocation.html?price=<s:property value="#request.price"/>"><img src="images/add_cart.png"></a></span>
                                       <a  href="addlocation.html?price=<s:property value="#request.price"/>"> 使用新地址</a>
                                    </div>
                                </div>
                                <input type="hidden" name="" id="newType" value="common">
                                <input type="hidden" name="" id="newConsignee">
                                <input type="hidden" name="" id="newProvince">
                                <input type="hidden" name="" id="newCity">
                                <input type="hidden" name="" id="newCounty">
                                <input type="hidden" name="" id="newStreet">
                                <input type="hidden" name="" id="newZipcode">
                                <input type="hidden" name="" id="newTel">
                                <input type="hidden" name="" id="newTag">
                                <!--点击弹出新增/收货地址界面start-->
                                <div class="xm-edit-addr-box" id="J_editAddrBox" style="display: none; width: 300px; top: 219px; left: 543px;">
                                    <div class="bd">
                                        <div class="item">
                                            <label>收货人姓名<span>*</span></label>
                                            <input type="text" name="" id="Consignee" class="input" placeholder="收货人姓名" maxlength="15">
                                            <p class="tip-msg tipMsg" style="display: none;"></p>
                                        </div>
                                        <div class="item">
                                            <label>联系电话<span>*</span></label>
                                            <input type="text" name="" class="input" id="Telephone" placeholder="11位手机号">
                                            <p class="tel-modify-tip" id="telModifyTip" style="display: none;"></p>
                                            <p class="tip-msg tipMsg" style="display: none;"></p>
                                        </div>
                                        <div class="item">
                                            <label>地址<span>*</span></label>
                                            <select name="" id="Provinces" class="select-1"><option value="0">省份/自治区</option><option zipcode="0" value="2">北京</option><option zipcode="0" value="3">天津</option><option zipcode="0" value="4">河北</option><option zipcode="0" value="5">山西</option><option zipcode="0" value="6">内蒙古</option><option zipcode="0" value="7">辽宁</option><option zipcode="0" value="8">吉林</option><option zipcode="0" value="9">黑龙江</option><option zipcode="0" value="10">上海</option><option zipcode="0" value="11">江苏</option><option zipcode="0" value="12">浙江</option><option zipcode="0" value="13">安徽</option><option zipcode="0" value="14">福建</option><option zipcode="0" value="15">江西</option><option zipcode="0" value="16">山东</option><option zipcode="0" value="17">河南</option><option zipcode="0" value="18">湖北</option><option zipcode="0" value="19">湖南</option><option zipcode="0" value="20">广东</option><option zipcode="0" value="21">广西</option><option zipcode="0" value="22">海南</option><option zipcode="0" value="23">重庆</option><option zipcode="0" value="24">四川</option><option zipcode="0" value="25">贵州</option><option zipcode="0" value="26">云南</option><option zipcode="0" value="27">西藏</option><option zipcode="0" value="28">陕西</option><option zipcode="0" value="29">甘肃</option><option zipcode="0" value="30">青海</option><option zipcode="0" value="31">宁夏</option><option zipcode="0" value="32">新疆</option></select>
                                            <select name="" id="Citys" class="select-2" disabled=""><option value="0">城市/地区/自治州</option></select>
                                            <select name="" id="Countys" class="select-3" disabled=""><option value="0">区/县</option></select>
                                            <textarea name="" class="input-area" id="Street" placeholder="路名或街道地址，门牌号" style="margin: 0px; height: 61px; width: 232px;"></textarea>
                                            <p class="tip-msg tipMsg" style="display: none;"></p>
                                        </div>
                                        <div class="item">
                                            <label>邮政编码<span>*</span></label>
                                            <input type="text" name="" id="Zipcode" class="input" placeholder="邮政编码" autocomplete="off">
                                            <p class="zipcode-tip" id="zipcodeTip"></p>
                                            <p class="tip-msg tipMsg" style="display: none;"></p>
                                        </div>
                                        <div class="item">
                                            <label>地址标签<span>*</span></label>
                                            <input type="text" name="" id="Tag" class="input" placeholder="地址标签：如&quot;家&quot;、&quot;公司&quot;。限5个字内">
                                            <p class="tip-msg tipMsg" style="display: none;"></p>
                                        </div>
                                    </div>
                                    <div class="ft clearfix">
                                        <button type="button" class="add-button" id="J_editAddrCancel">取消</button>
                                        <button type="button" id="J_editAddrOk" class="add-button">保存</button>
                                    </div>
                                </div>
                                <!--点击弹出新增/收货地址界面end-->
                                <div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop" style="display: none; width: 1662px; height: 2431px;"></div>
                            </div>                </div>
                        <!-- 收货地址 END-->
                        <div id="checkoutPayment">
                            <!-- 支付方式 -->
                            <div class="xm-box">
                                <div class="box-hd ">
                                    <h2 class="title">支付方式</h2>
                                </div>
                                <div class="box-bd">
                                    <ul class="checkout-option-list clearfix J_optionList">
                                        <li class="item selected">
                                            <input type="radio" name="" checked="checked" value="1">
                                            <p>
                                                在线支付<span></span>
                                            </p>
                                        </li>

                                        <li class="item">
                                            <input type="radio" name="" value="2">
                                            <p>
                                               货到付款<span></span>
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- 支付方式 END-->
                            <div class="xm-box">
                                <div class="box-hd ">
                                    <h2 class="title">配送方式</h2>
                                </div>
                                <div class="box-bd">
                                    <ul id="checkoutShipmentList" class="checkout-option-list clearfix J_optionList">
                                        <li class="item selected">
                                            <input type="radio" data-price="0" name="Checkout[shipment_id]" checked="checked" value="1">
                                            <p>
                                                快递配送（免运费）                                <span></span>
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- 配送方式 END-->                    <!-- 配送方式 END-->
                        </div>
                        <!-- 送货时间 -->
                        <div class="xm-box">
                            <div class="box-hd">
                                <h2 class="title">送货时间</h2>
                            </div>
                            <div class="box-bd">
                                <ul class="checkout-option-list clearfix J_optionList">
                                    <li class="item selected"><input type="radio" checked="checked" name="" value="1"><p>不限送货时间<span>周一至周日</span></p></li>
                                    <li class="item"><input type="radio" name="" value="2"><p>工作日送货<span>周一至周五</span></p></li>
                                    <li class="item"><input type="radio" name="" value="3"><p>双休日、假日送货<span>周六至周日</span></p></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 送货时间 END-->
                        <!-- 发票信息 -->
                        <div id="checkoutInvoice">
                            <div class="xm-box">
                                <div class="box-hd">
                                    <h2 class="title">发票信息</h2>
                                </div>
                                <div class="box-bd">
                                    <ul class="checkout-option-list checkout-option-invoice clearfix J_optionList J_optionInvoice">

                                        <li class="item">
                                            <!--<label><input type="radio"  class="needInvoice" value="0" name="Checkout[invoice]">不开发票</label>-->
                                            <input type="radio" checked="checked" value="4" name="Checkout[invoice]">
                                            <p>电子发票（非纸质）</p>
                                        </li>
                                        <li class="item selected">
                                            <input type="radio" value="1" name="Checkout[invoice]">
                                            <p>普通发票（纸质）</p>
                                        </li>
                                    </ul>
                                    <p id="eInvoiceTip" class="e-invoice-tip " style="display: none;">
                                        电子发票是税务局认可的有效凭证，可作为售后维权凭据，不随商品寄送。开票后不可更换纸质发票，如需报销请选择普通发票。<a href="http://bbs.xiaomi.cn/thread-9285999-1-1.html" target="_blank">什么是电子发票？</a>
                                    </p>
                                    <div class="invoice-info nvoice-info-1" id="checkoutInvoiceElectronic" style="display: none;">

                                        <p class="tip">电子发票目前仅对个人用户开具，不可用于单位报销 ，不随商品寄送</p>
                                        <p>发票内容：购买商品明细</p>
                                        <p>发票抬头：个人</p>
                                        <p>
                                            <span class="hide"><input type="radio" value="4" name="Checkout[invoice_type]" checked="checked" id="electronicPersonal" class="invoiceType"></span>
                                        </p><dl>
                                        <dt>什么是电子发票?</dt>
                                        <dd>· 电子发票是纸质发票的映像，是税务局认可的有效凭证，与传统纸质发票具有同等法律效力，可作为售后维权凭据。</dd>
                                        <dd>· 开具电子服务于个人，开票后不可更换纸质发票，不可用于单位报销。</dd>
                                        <dd>· 您在订单详情的"发票信息"栏可查看、下载您的电子发票。<a href="" target="_blank">什么是电子发票？</a></dd>
                                    </dl>
                                        <p></p>
                                    </div>
                                    <div class="invoice-info invoice-info-2" id="checkoutInvoiceDetail" style="display: block;">
                                        <p>发票内容：购买商品明细</p>
                                        <p>
                                            发票抬头：请确认单位名称正确,以免因名称错误耽搁您的报销。
                                        </p>
                                        <ul class="type clearfix J_invoiceType">

                                            <li class="selected">
                                                <input class="invoiceType" type="radio" id="commonPersonal" name="Checkout[invoice_type]" value="1">
                                                个人
                                            </li>
                                            <li class="">
                                                <input class="invoiceType" type="radio" name="Checkout[invoice_type]" value="2">
                                                单位
                                            </li>
                                        </ul>
                                        <div id="CheckoutInvoiceTitle" class=" hide  invoice-title" style="display: none;">
                                            <label>单位名称：</label>
                                            <input name="" type="text" maxlength="49" value="" class="input"><span class="tip-msg J_tipMsg"></span>
                                            <label>企业信用代码：</label>
                                            <input name="" type="text" maxlength="49" value="" class="input"><span class="tip-msg J_tipMsg"></span>
                                        </div>

                                    </div>

                                </div>
                            </div>                </div>
                        <!-- 发票信息 END-->
                    </div>
                    <div class="checkout-box-ft">
					<p class="checkout-total">应付总额：<span><strong id="totalPrice"><s:property value="#request.price"></s:property></strong>元</span></p>
                        <div class="checkout-confirm">
                            <span>
                            <a href="javascript:gocart3()" class="btn-primary">立即下单</a>
                            </span>
                        </div>
                    </div>
                </form>
            </div>



        </div>


    </div>

</div>

<!--cart2 end!-->
<!--footer-->
<div class="footer-box" style="position:fixed;bottom: 0;">
    <div class="footer-footer">
        <center> <p2><span>&nbsp;&copy;&nbsp;</span><span>All Rights Reserved.&nbsp;|&nbsp;</span><a href="http://beian.miit.gov.cn/" style="color:#FFFFFF">蒙ICP备2021000771号.</a></p2></center>
    </div>
</div>
<!--footer end!-->

<!--订单特效js-->
<script src="js/base.min.js"></script>
<script type="text/javascript" src="js/address_all.js"></script>
<script type="text/javascript" src="js/checkout.min.js"></script>
<script type="text/javascript" charset="utf-8">
    function gocart3(){
    	var price = document.getElementById("totalPrice");
        window.location.href = "cart3.html?price="+encodeURI(price.innerHTML);
    }
</script>
<script type="text/javascript">
    var checkoutConfig={
        addressMatch:'common',
        addressMatchVarName:'data',
        hasPresales:false,
        hasBigTv:false,
        hasAir:false,
        hasScales:false,
        hasGiftcard:false,
        totalPrice:244.00,
        postage:10,//运费
        postFree:true,//活动是否免邮了
        bcPrice:150,//计算界值
        activityDiscountMoney:0.00,//活动优惠
        showCouponBox:0,
        invoice:{
            NA:"0",
            personal:"1",
            company:"2",
            electronic:"4"
        }
    };
    var miniCartDisable=true;
</script>

<script type="text/javascript"  charset="UTF-8">
   window.onload=function(){
    var url = document.location.href;
    var lct="";
    if(url.indexOf("&")>0){
    	if (url.indexOf("=")>0)
    	{
        	lct = url.substring(url.indexOf("=")+1,url.length)
        	var familyData =lct.split("="); 
        	var name = familyData[0].split("&");
        	var number = familyData[1].split("&");
        	var city = familyData[2].split("&");
        	var area = familyData[3].split("&");
        	var price = familyData[4].split("&");
        	document.getElementById("name").innerHTML = decodeURI(name[0]);
        	document.getElementById("number").innerHTML = decodeURI(number[0]);
        	document.getElementById("city").innerHTML = decodeURI(city[0]);
        	document.getElementById("area").innerHTML = decodeURI(area[0]);
        	document.getElementById("totalPrice").innerHTML = decodeURI(price[0]);
    	}
    }else{
    	var location = document.getElementById("elocation");
    	location.style.display="none";
    }
}
</script>

</body>
</html>