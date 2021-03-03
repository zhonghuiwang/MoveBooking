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
    
    <title>My JSP 'detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h2>顺风搬家预约登记</h2>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;——顺风搬家，一路顺风<p></p>
    <table>
    	<tr>
    		<td>起始地区：</td>
    		<td><s:property value="area"/></td>
    	</tr>
    	<tr>
    		<td>所用车型：</td>
    		<td><s:property value="cartype"/></td>
    	</tr>
    	<tr>
    		<td>搬家日期：</td>
    		<td><s:date name="movedate" format="yyyy-MM-dd"/></td>
    	</tr>
    	<tr>
    		<td>联系人：</td>
    		<td><s:property value="contact"/></td>
    	</tr>
    	<tr>
    		<td>联系电话：</td>
    		<td><s:property value="phone"/></td>
    	</tr>
    	<tr>
    		<td>状态：</td>
    		<td>
    			<s:if test="status==0">未处理</s:if>
    			<s:elseif test="status==1">已派车</s:elseif>
    			<s:else>已结束</s:else>
    		</td>
    	</tr>
    	<tr>
    		<td></td>
    		<td><input type="button" value="返回" onclick="history.go(-1);"/></td>
    	</tr>
    </table>
  </body>
</html>
