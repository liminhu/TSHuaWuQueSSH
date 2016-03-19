package com.tangshan.hwq.view.action;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.tangshan.hwq.base.BaseAction;
import com.tangshan.hwq.domain.WechatInfo;


@Controller
@Scope("prototype")
public class WechatAction extends BaseAction<WechatInfo> {
	
	
	/** 列表 */
	public String list() throws Exception {
		List<WechatInfo> wechatList=wechatService.findAll();
		ActionContext.getContext().put("wechatList", wechatList);
		return "list";
	}
	
	/** 添加页面 */
	public String addUI() throws Exception {
		return "saveUI";
	}
	
	/** 删除 */
	public String delete() throws Exception {
		wechatService.delete(model.getWechatId());
		return "toList";
	}
	
	
	/** 添加 */
	public String add() throws Exception {
		Timestamp time=new Timestamp(Calendar.getInstance().getTimeInMillis());
		model.setUpdateTime(time);
		model.setReleaseTime(time);
		model.setVisiteTimes(0);
		wechatService.save(model);
		return "toList";
	}

	/** 修改页面 */
	public String editUI() throws Exception {
		// 准备回显的数据
		WechatInfo wechat = wechatService.getById(model.getWechatId());
		ActionContext.getContext().getValueStack().push(wechat);
		return "saveUI";
	}

	/** 修改 */
	public String edit() throws Exception {
		// 1，从数据库中获取原对象
		WechatInfo wechat = wechatService.getById(model.getWechatId());
		// 2，设置要修改的属性
		wechat.setTitle(model.getTitle());
		wechat.setLink(model.getLink());
		Timestamp time=new Timestamp(Calendar.getInstance().getTimeInMillis());
		wechat.setUpdateTime(time);
		// 3，更新到数据库
		wechatService.update(wechat);
		return "toList";
	}

	
	
}
