package com.tangshan.hwq.view.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.tangshan.hwq.base.BaseAction;
import com.tangshan.hwq.domain.UserInfo;


@Controller
@Scope("prototype")
public class UserAction extends BaseAction<UserInfo> {
	private String code;
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	/** 登录页面 */
	public String loginUI() throws Exception {
		return "loginUI";
	}

	/** 登录 */
	public String login(){
		String real_code=(String)ActionContext.getContext().getSession().get("code");
		if(code==null || !code.equals(real_code)){
			addFieldError("login", "验证码不正确！");
			return "loginUI";
		}
		if(model !=null){
			if(model.getUserName().equals("admin") && model.getPassword().equals("admin")){
				UserInfo uesr=new UserInfo();
				uesr.setUserName("admin");
				uesr.setPassword("admin");
				ActionContext.getContext().getSession().put("user", uesr);
				return "toIndex";
			}
		}
		UserInfo user = userService.findByLoginNameAndPassword(
				model.getUserName(), model.getPassword());
		if (user == null) {
			addFieldError("login", "用户名或密码不正确！");
			return "loginUI";
		} else {
			// 登录用户
			ActionContext.getContext().getSession().put("user", user);
			return "toIndex";
		}
	}

}
