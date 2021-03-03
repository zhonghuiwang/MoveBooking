package com.leonyip.movebooking.struts.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class PermissionInterceptor implements Interceptor {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void init() {
		// TODO Auto-generated method stub

	}

	public String intercept(ActionInvocation invocation) throws Exception {
		if(invocation.getInvocationContext().getSession().get("loginedUser")!=null){
			return invocation.invoke();
		}
		return "login";
	}

}
