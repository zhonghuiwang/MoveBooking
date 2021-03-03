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
    
    <title>My JSP 'edit.jsp' starting page</title>
    
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
    <s:form action="booking_doEdit" theme="simple">
    <s:hidden name="id" value="%{id}"></s:hidden>
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
    		<td>状态修改：</td>
    		<td>
    			<s:select name="status" list="#{0:'未处理',1:'已派车',2:'已结束'}"></s:select>
    		</td>
    	</tr>
    	<tr>
    		<td></td>
    		<td><s:submit value="处理登记信息"></s:submit></td>
    	</tr>
    </table>
    </s:form>
  </body>
</html>
