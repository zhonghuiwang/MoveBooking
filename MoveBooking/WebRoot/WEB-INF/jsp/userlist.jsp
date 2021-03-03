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
	
	<link rel="stylesheet" type="text/css" href="css/userlist_table.css">

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
  <div id="main" style="background: #FFFFFFFF">
  <div id="title"  style="background:#FFFFFFFF;" >
         <center><h1>用户信息查询</h1></center> 
   </div>  
    
   <div id="job" style="background:#FFFFFFFF;text-align:right">
	  <h5><font color="00009C">未莱大数据公司-兴安生活APP</font></h5>
   </div>
   <div id="form" align="center" style="background:#FFFFFFFF">
    <hr/>
   <table  class="a" border="1" width="90%" >  
    	<tr class="head">
    		<th style="background:#E0E0E0"><font size="5px" >用户姓名</font></th>
    		<th style="background:#E0E0E0"><font size="5px">用户密码</font></th>
    		<th style="background:#E0E0E0"><font size="5px">用户电话</font></th>
    		<th style="background:#E0E0E0"><font size="5px">用户地址</font></th>
    		<th style="background:#E0E0E0"><font size="5px">会员等级</font></th>
    	</tr>
    	<tr>    		
    	<s:iterator value="#usersList">
    		<tr>
    			<td><center><s:property value="name" /></center></td>
    			<td><center><s:property value="password" /></center></td>
    			<td><center><s:property value="phone" /></center></td>
    			<td><center><s:property value="location" /></center></td>
    			<td><center><s:property value="member" /></center></td>
    		</tr>
    	</s:iterator>
    	<td colspan="7" align="center"> 
    		<s:if test="pageNum>1">
    		<a href="users_getWebUsers.action?pageNum=1">首页</a>
    		<a href="users_getWebUsers.action?pageNum=<s:property value="pageNum-1"/>"><<</a>
    		</s:if>
    	
    		<s:iterator begin="1" end="#pageCount" var="n">
    			<s:if test="pageNum==#n">
    				<span style="color:red;"><s:property/></span>
    			</s:if>
    			<s:else>
    				[<a href="users_getWebUsers.action?pageNum=<s:property/>"><s:property/></a>]
    			</s:else>
    			
    		</s:iterator>
    		<s:if test="pageNum<#pageCount">
    			<a href="users_getWebUsers.action?pageNum=<s:property value="pageNum+1"/>">>></a>
    			<a href="users_getWebUsers.action?pageNum=<s:property value="#pageCount"/>">末页</a>
    		</s:if>
    		
    			 <s:property value="pageNum"/>/<s:property value="#pageCount"/>
    		</td>
    	</tr>
    	</table>
    	
    </div>
    </div>
  </body>
</html>
