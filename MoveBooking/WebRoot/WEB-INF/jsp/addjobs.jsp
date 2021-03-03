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
    
    <title>添加招聘职位</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/addgoods.css">
	
	<script type="text/javascript">
	 function checkSubmit() {
		var companyName = document.form.companyName.value;
		var companyInfo = document.form.companyInfo.value;
		var jobInfo = document.form.jobInfo.value;
		var address = document.form.address.value;
		
		if(companyName == ""){
			alert("公司名称不能为空！");
			return false;
		}
		if(companyInfo == ""){
			alert("公司信息不能为空！");
			return false;
		}
		if(jobInfo == ""){
			alert("职位信息不能为空！");
			return false;
		}
		if(address == ""){
			alert("公司地址不能为空！");
			return false;
		}
		return true;
	}
	</script>
  </head>
  
  <body>
  <div id="main" style="background:#FFFFFFFF">
  <div id="title"  style="background:#FFFFFFFF">
   <center><h1><font color="#5151A2">职位添加</font></h1></center>
    </div>
   <div id="job" style="background:#FFFFFFFF;text-align:right">
	   <h5><font color="00009C">未莱大数据公司-兴安生活APP</font></h5>
   </div>
   <div id="biaodan" align="center" >
    <s:form id="form" action="jobsearch_addJobs" theme="simple" enctype="multipart/form-data" method="post">
    <s:hidden name="id" value="%{id}"></s:hidden>
    <table class="a" border="1" width="60%" height="80%" >
    	<tr>
    		<td><center>公司名称：</center></td>
    		<td><s:textfield name="companyName"></s:textfield></td>
    	</tr>
    	<tr>
    		<td ><center>公司信息：</center></td>
    		<td><s:textarea style=" height:80%;width:45%" name="companyInfo" rows="8" cols="30"/></td>
    	</tr>
    	<tr>
    		<td ><center>职位信息：</center></td>
    		<td><s:textarea style=" height:80%;width:45%" name="jobInfo" rows="8" cols="30"/><font size="2" color=#007FFF>例:负责公司隐形矫治项目的市场推广，协助代理商完成销售指标。</font></td>
    	</tr>
    	<tr>
    		<td ><center>公司地址：</center></td>
    		<td><s:select  name="address" label="起始地区" list="{'乌兰浩特市','阿尔山市','科尔沁右翼前旗','扎赉特旗','突泉县','科尔沁右翼中期'}" headerKey="-1" headerValue="请选择市县"></s:select></td>
    	</tr>
    	<tr>
    		<td ><center>详细地址：</center></td>
    		<td><s:textfield  name="addressdetail"></s:textfield></td>
    	</tr>
    	<tr>
    		<td ><center>联系电话：</center></td>
    		<td><s:textfield  name="tel"></s:textfield></td>
    	</tr>
    	<tr>
    		<td ><center>招聘类型：</center></td>
    		<td><s:textfield  name="category"></s:textfield><font size="2" color=#007FFF>例：销售经理</font></td>
    	</tr>
    	<tr>
    		<td ><center>薪资待遇：</center></td>
    		<td><s:textfield  name="salary"></s:textfield><font size="2" color=#007FFF>例：1-1.8万/月</font></td>
    	</tr>
    	<tr>
    		<td><center>工作年限：</center></td>
    		<td><s:textfield  name="workExp"></s:textfield><font size="2" color=#007FFF>例：1-2年</font></td>
    	</tr>
    	<tr>
    		<td><center>学历要求：</center></td>
    		<td><s:textfield  name="education"></s:textfield><font size="2" color=#007FFF>例：本科</font></td>
    	</tr>
    	<tr>
    		<td></td>
    		<td style="text-align:right;"><s:submit style="weith:50%; height:40px;width:120px;background:#C4E1E1 " value="添加" onclick="return checkSubmit()"></s:submit></td>
    	</tr>
    </table>
    </s:form>
     <s:if test="#request.ifjobSuccess == 'yes'">
            <font color="red" size="3">添加成功！</font>
     </s:if>
    <s:if test="#request.ifjobSuccess == 'no'">
            <font color="red" size="3">添加失败！</font>
     </s:if>
     </div>
     </div>
  </body>
</html>
