package com.leonyip.movebooking.struts.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.leonyip.movebooking.biz.NewsBiz;
import com.leonyip.movebooking.biz.impl.NewsBizImpl;
import com.leonyip.movebooking.entity.LocalNews;
import com.opensymphony.xwork2.ActionSupport;

public class NewsAction extends ActionSupport implements ServletResponseAware{
	private static final long serialVersionUID = 1L;
	private  HttpServletRequest request;
	private  HttpServletResponse  response;
	
	NewsBiz newsBiz = new NewsBizImpl();
	
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	//查询本地新闻
	public void getLocalNews() throws Exception {
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
		request = ServletActionContext.getRequest();
        List<LocalNews> list = newsBiz.getAllNews(); //数据库查询 
		map.put("status", 200);
		map.put("msg", "SUCCEED");
		map.put("data", list);
		response.getWriter().write(JSONObject.fromObject(map).toString());//返回手机端
	}

}
