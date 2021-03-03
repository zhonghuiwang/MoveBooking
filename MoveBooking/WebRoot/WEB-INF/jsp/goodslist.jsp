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
    
    <title>My JSP 'list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript">
    				function toDetail(id){
    					window.open("booking_toDetail.action?id="+id,"_self");
    				}
    				
    				function toEdit(id){
    					window.open("booking_toEdit.action?id="+id,"_self");
    				}
    			</script>
  </head>
  
  <body>
    <h2>t顺风搬家预约信息查询</h2>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;——顺风搬家，一路顺风<p></p>
    <table border="1">
    	<tr>
    		<th>起始地区</th>
    		<th>所用车型</th>
    		<th>搬家日期</th>
    		<th>联系人</th>
    		<th>联系电话</th>
    		<th>状态</th>
    		<th>操作</th>
    	</tr>
    	<s:iterator value="#bookingList">
    		<tr>
    			<td><s:property value="area"/></td>
    			<td><s:property value="cartype"/></td>
    			<td><s:date name="movedate" format="yyyy-MM-dd" /></td>
    			<td><s:property value="contact"/></td>
    			<td><s:property value="phone"/></td>
    			<td>
    				<s:if test="status==0">
    					未处理
    				</s:if>
    				<s:elseif test="status==1">
    					已派车
    				</s:elseif>
    				<s:else>
    					已结束
    				</s:else>
    			</td>
    			<td>
    			<s:if test="status==2">
    				<input type="button" value="处理" disabled="disabled" />
    			</s:if>
    			<s:else>
    				<input type="button" value="处理" onclick="toEdit(<s:property value="id"/>)"/>
    			</s:else>
    			&nbsp;&nbsp;<input type="button" value="详情" onclick="toDetail(<s:property value="id"/>)"/></td>
    		</tr>
    	</s:iterator>
    	<tr>
    		<td colspan="7" align="center"> 
    		<s:if test="pageNum>1">
    		<a href="booking_doSearch.action?pageNum=1">首页</a>
    		<a href="booking_doSearch.action?pageNum=<s:property value="pageNum-1"/>"><<</a>
    		</s:if>
    		
    		<s:iterator begin="1" end="#pageCount" var="n">
    			<s:if test="pageNum==#n">
    				<span style="color:red;"><s:property/></span>
    			</s:if>
    			<s:else>
    				[<a href="booking_doSearch.action?pageNum=<s:property/>"><s:property/></a>]
    			</s:else>
    			
    		</s:iterator>
    		<s:if test="pageNum<#pageCount">
    			<a href="booking_doSearch.action?pageNum=<s:property value="pageNum+1"/>">>></a>
    			<a href="booking_doSearch.action?pageNum=<s:property value="#pageCount"/>">末页</a>
    		</s:if>
    		
    		 <s:property value="pageNum"/>/<s:property value="#pageCount"/></td>
    	</tr>
    </table>
  </body>
</html>
