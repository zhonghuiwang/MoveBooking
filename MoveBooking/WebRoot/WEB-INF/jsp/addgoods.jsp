<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   
    <title>添加商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/addgoods.css">

	<script type="text/javascript">
	 function checkSubmit() {
		var goodname = document.form.goodName.value;
		var goodprice = document.form.goodPrice.value;
		var pricetype = document.form.priceType.value;
		var goodcount = document.form.goodCount.value;
		
		if(goodname == ""){
			alert("商品名称不能为空！");
			return false;
		}
		if(goodprice == ""){
			alert("商品单价不能为空！");
			return false;
		}
		if(pricetype == ""){
			alert("价格类型不能为空！");
			return false;
		}
		if(goodcount == ""){
			alert("商品数量不能为空！");
			return false;
		}
		return true;
	}
	</script>
  </head>
  
  <body>
   <div id="main" style="background:#FFFFFFFF">
    <div="title"  style="background:#FFFFFFFF">
    	<center><h1><font color="#5151A2">商品添加</font></h1></center>
    </div>
   <div id="job" style="background:#FFFFFFFF;text-align:right">
	   <h5><font color="00009C">未莱大数据公司-兴安生活APP</font></h5>
   </div>
   <div id="biaodan" align="center">
    <s:form id="form" action="goods_addGoods" theme="simple" enctype="multipart/form-data" method="post">
    <s:hidden name="id" value="%{id}"></s:hidden>
    <table class="a" border="1" width="60%" height="80%">
    	<tr>
    		<td><center>商品名称：</center></td>
    		<td><s:textfield name="goodName" id="goodName"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><center>商品单价：</center></td>
    		<td><s:textfield   name="goodPrice"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><center>价格类型：</center></td>
    		<td><s:textfield  name="priceType"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><center>商品数量：</center></td>
    		<td><s:textfield  name="goodCount"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><center>数量类型：</center></td>
    		<td><s:textfield  name="countType"></s:textfield></td>
    	</tr>
    	<tr>
    		<td><center>商品缩略图：</center></td>
    		<td><s:file name="goodLogo" id="goodLogo"/><font  size="2" color=#007FFF>（建议500*500）</font></td>
    	</tr>
    	<tr>
    		<td><center>商品图片：</center></td>
    		<td><s:file name="goodImage" id="goodImage"/><font size="2" color=#007FFF>（建议853*1280）</font></td>
    	</tr>
    	<tr>
    		<td><center>商品描述：</center></td>
    		<td><s:textarea  style="weith:80%; height:200px;width:600px" name="goodDescription" rows="8" cols="30"/></td>
    	</tr>
    	<tr>
    		<td><center>所属店铺：</center></td>
    		<td><s:select name="shop" list="#request.shoplist" listKey="shopId" listValue="shopName" headerKey="-1" headerValue="请选择店铺"></s:select></td>
    	</tr>
    	<tr>
    		<td><center>所属类别：</center></td>
    		<td><s:select name="cate" list="#request.catelist" listKey="cateId" listValue="cateName" headerKey="-1" headerValue="请选择类别"></s:select></td>
    	</tr>
    	<tr >
    		<td></td>
    		<td style="text-align:right;"><s:submit style="weith:50%; height:40px;width:120px;background:#C4E1E1 " value="添加" onclick="return checkSubmit()"></s:submit></td>
    	</tr>
    </table>
    </s:form>
     <s:if test="#request.ifSuccess == 'yes'">
            <font color="red" size="3">添加成功！</font>
     </s:if>
    <s:if test="#request.ifSuccess == 'no'">
            <font color="red" size="3">添加失败！</font>
     </s:if>
     </div>
     </div>
  </body>
</html>
