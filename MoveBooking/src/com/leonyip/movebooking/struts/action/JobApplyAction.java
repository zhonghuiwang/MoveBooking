package com.leonyip.movebooking.struts.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.leonyip.movebooking.biz.JobApplyBiz;
import com.leonyip.movebooking.biz.impl.JobApplyBizImpl;
import com.leonyip.movebooking.entity.JobApply;
import com.leonyip.movebooking.entity.JobSearch;
import com.leonyip.movebooking.utils.Base64Utils;

public class JobApplyAction implements  ServletResponseAware{
	private final int SUCCEED = 200;
	private final int FAILED = 100;
	private  HttpServletRequest request;
	private  HttpServletResponse  response;
	JobApplyBiz jobApplyBiz = new JobApplyBizImpl();
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	public void insertApply() throws Exception{
		JobApply jobApply = new JobApply();
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();

        String apply = java.net.URLDecoder.decode(request.getParameter("jobApply"),"UTF-8");
        JSONObject json = JSONObject.fromObject(Base64Utils.decryptBASE64(apply).toString());
        jobApply.setApplycompany(json.getInt("applycompany"));
        jobApply.setApplyuser(json.getInt("applyuser"));
		boolean b = jobApplyBiz.insertJobApply(jobApply);
		if(b){
			map.put("status", 200);
			map.put("msg", "SUCCEED");
			map.put("data", b);
		}else{
			map.put("status", 100);
			map.put("msg", "FAILED");
			map.put("data", b);
		}
	    response.getWriter().write(JSONObject.fromObject(map).toString());
	}

}
