package com.leonyip.movebooking.struts.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import net.sf.json.JSONObject;

import com.leonyip.movebooking.biz.MessageBiz;
import com.leonyip.movebooking.biz.impl.MessageBizImpl;
import com.leonyip.movebooking.entity.MessageToWho;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport implements ServletResponseAware{
	private static final long serialVersionUID = 1L;
	MessageBiz messageBiz = new MessageBizImpl();
	private  HttpServletRequest request;
	private  HttpServletResponse  response;
	ActionContext ctx = ActionContext.getContext();
	
	//获取个人消息列表
	public void getMessageById() throws IOException{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
        request = ServletActionContext.getRequest();
		String uid = request.getParameter("uid");  
		List<MessageToWho> list = messageBiz.getToMessage(Integer.parseInt(uid));
		map.put("status", 200);
		map.put("msg", "SUCCEED");
		map.put("data", list);
	    response.getWriter().write(JSONObject.fromObject(map).toString());
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	//修改信息状态
	public void updateMessage() throws IOException{
		HashMap<String,Object> map=new HashMap<String,Object>();
		response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=utf-8");
        request = ServletActionContext.getRequest();
		String toid = request.getParameter("toid");  
		boolean b = messageBiz.updateMessage(Integer.parseInt(toid));
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
