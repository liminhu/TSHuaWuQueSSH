package com.tangshan.hwq.base;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.tangshan.hwq.domain.UserInfo;
import com.tangshan.hwq.domain.WechatInfo;
import com.tangshan.hwq.service.DetailService;
import com.tangshan.hwq.service.HumanResService;
import com.tangshan.hwq.service.IndexModuleService;
import com.tangshan.hwq.service.NavigationService;
import com.tangshan.hwq.service.PageInfoService;
import com.tangshan.hwq.service.StatisticalService;
import com.tangshan.hwq.service.UserService;
import com.tangshan.hwq.service.WechatService;
import com.tangshan.hwq.service.impl.WechatServiceImpl;
import com.tangshan.hwq.util.PageBean;
import com.tangshan.hwq.util.QueryHelper;

@SuppressWarnings("unchecked")
public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	// =============== ModelDriven的支持 ==================
	protected T model;
	
	public BaseAction(){
		try {
			ParameterizedType pt=(ParameterizedType)this.getClass().getGenericSuperclass();
			Class<T> clazz=(Class<T>)pt.getActualTypeArguments()[0];
			model=clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public T getModel() {
		return model;
	}
	
	// =============== Service实例的声明 ==================
	@Resource
	protected UserService userService;
	
	@Resource
	protected PageInfoService pageService;
	
	@Resource
	protected NavigationService navService;
	
	
	@Resource
	protected IndexModuleService indexService;
	
	@Resource
    protected DetailService detailService;

	
	@Resource
	protected HumanResService humanResService;
	
	
	@Resource
    protected WechatService wechatService;
	
	
	@Resource
    protected StatisticalService statisticalService;
    
	/**
	 * 获取当前登录的用户
	 * 
	 * @return
	 */
	protected UserInfo getCurrentUser() {
		return (UserInfo) ActionContext.getContext().getSession().get("user");
	}

	// ============== 分页用的参数 =============

	protected int pageNum = 1; // 当前页
	protected int pageSize = 5; // 每页显示多少条记录

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

}
