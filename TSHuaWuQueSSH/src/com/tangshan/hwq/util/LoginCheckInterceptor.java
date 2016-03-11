package com.tangshan.hwq.util;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.tangshan.hwq.domain.UserInfo;
  
public class LoginCheckInterceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void destroy() {
		//System.out.println("LoginInterceptor destroy!...");
	}

	public void init() {
		//System.out.println("LoginInterceptor init!...");
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String,Object> session=invocation.getInvocationContext().getSession();
		UserInfo login=(UserInfo)session.get("user");
		if(login==null){
			invocation.getInvocationContext().put("tip","你还没登录请先登录!");
			return "login";
		}
		else
		    return invocation.invoke(); //调用后面的action继续执行
	}

}
