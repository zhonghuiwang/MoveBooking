package com.leonyip.movebooking.struts.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.leonyip.movebooking.biz.OrdersBiz;
import com.leonyip.movebooking.biz.UsersBiz;
import com.leonyip.movebooking.biz.impl.OrdersBizImpl;
import com.leonyip.movebooking.biz.impl.UsersBizImpl;
import com.leonyip.movebooking.entity.Orders;
import com.leonyip.movebooking.entity.Users;
import com.leonyip.movebooking.utils.Base64Utils;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrdersAction extends ActionSupport implements ServletResponseAware{
	private static final long serialVersionUID = 1L;
	private  HttpServletRequest request;
	private  HttpServletResponse  response;
    private Orders orders = new Orders();
	OrdersBiz ordersbiz = new OrdersBizImpl();
	
	//获得HttpServletResponse对象
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	//添加用户
		public void addOrders() throws Exception{
			HashMap<String,Object> map=new HashMap<String,Object>();
			response.setCharacterEncoding("UTF-8");
	        response.setContentType("application/json;charset=utf-8");
			request = ServletActionContext.getRequest();
			System.out.println("在这里了！");
			System.out.println(java.net.URLDecoder.decode(request.getParameter("orders"),"utf-8"));
	        String apply = java.net.URLDecoder.decode(request.getParameter("orders"),"utf-8");
	        JSONObject json = JSONObject.fromObject(apply);
	        orders.setUid(json.getInt("uid"));
	        orders.setUname(json.getString("uname"));
	        orders.setUser_tel(json.getString("user_tel"));
	        orders.setGoods_id(json.getInt("goods_id"));
	        orders.setOrders_name(json.getString("orders_name"));
	        orders.setOrders_price(json.getString("orders_price"));
	        orders.setOrders_address(json.getString("orders_address"));
	        orders.setAmounts(json.getInt("amounts"));
	        orders.setOrders_total(json.getString("orders_total"));
	        orders.setOrders_time(json.getString("orders_time"));
	        orders.setOrders_status(json.getString("orders_status"));
	        
			boolean b = ordersbiz.addOrders(orders);
			if(b){
				map.put("status", 200);
				map.put("msg", "success");
				map.put("data", "注册成功");
				response.getWriter().write(JSONObject.fromObject(map).toString());//返回手机端
			}else{
				map.put("status", 100);
				map.put("msg", "failed");
				map.put("data", "注册失败");
				response.getWriter().write(JSONObject.fromObject(map).toString());//返回手机端
			}
		}
}
