package com.tangshan.hwq.view.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.tangshan.hwq.base.BaseAction;
import com.tangshan.hwq.domain.DetailInfo;
import com.tangshan.hwq.domain.HumanResInfo;
import com.tangshan.hwq.domain.IndexModuleInfo;
import com.tangshan.hwq.domain.NavigationInfo;
import com.tangshan.hwq.domain.PageInfo;
import com.tangshan.hwq.domain.WechatInfo;
import com.tangshan.hwq.util.QueryHelper;

@Controller
@Scope("prototype")
public class PageInfoAction extends BaseAction<PageInfo> {
	int selected;
	String navEnglishName;
	String actionName;

	public String getNavEnglishName() {
		return navEnglishName;
	}

	public void setNavEnglishName(String navEnglishName) {
		this.navEnglishName = navEnglishName;
	}

	public int getSelected() {
		return selected;
	}

	public void setSelected(int selected) {
		this.selected = selected;
	}



	
	
	public String gethomeUI() throws Exception {
		String navEnglishName='%' + "hyjj" + '%';
		List<IndexModuleInfo> list1=indexService.findListByModuleEnglishName(navEnglishName);
		navEnglishName='%' + "jjrz" + '%';
		List<IndexModuleInfo> list2=indexService.findListByModuleEnglishName(navEnglishName);
		navEnglishName='%' + "ybjrz" + '%';
		List<IndexModuleInfo> list3=indexService.findListByModuleEnglishName(navEnglishName);
		navEnglishName='%' + "jdrz" + '%';
		List<IndexModuleInfo> list4=indexService.findListByModuleEnglishName(navEnglishName);
		ActionContext.getContext().put("list1", list1);
		ActionContext.getContext().put("list2", list2);
		ActionContext.getContext().put("list3", list3);
		ActionContext.getContext().put("list4", list4);
		
		new QueryHelper(WechatInfo.class, "u")
    	.addOrderProperty("wechatId", true)
    	.preparePageBean(wechatService, pageNum, pageSize);	
		
		return "homeUI";
	}
	
	public String showDetail(){
		if(navEnglishName.contains("hyjj")){
			actionName=aboutHyjj();
		}else{
			actionName=aboutLzyhy();
		}
		new QueryHelper(WechatInfo.class, "u")
    	.addOrderProperty("wechatId", true)
    	.preparePageBean(wechatService, pageNum, pageSize);	
		return actionName;
	}
	
	
	
	
	public String aboutHwq(){
		DetailInfo detail=null;
		NavigationInfo nav=null;
		if(navEnglishName == null){
			selected=0;
			detail=detailService.findNavByEnglishName("hwq_jj");
			nav=navService.findNavByEnglishName("hwq_jj");
		}
		else if(navEnglishName.equals("hwq_qywh")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=1;
		}else if(navEnglishName.equals("hwq_lyzz")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=2;
		}else{
			detail=detailService.findNavByEnglishName("hwq_jj");
			nav=navService.findNavByEnglishName("hwq_jj");
			selected=0;
		}
		List<NavigationInfo> childrenNav=navService.getAllChildrenNavList(nav.getNavigationInfo().getNavigationId());
		String[] images=detail.getImagesAddress().split(";");
		ActionContext.getContext().put("nav", nav);
		ActionContext.getContext().put("detail", detail);
		ActionContext.getContext().put("images", images);
		ActionContext.getContext().put("childrenNav", childrenNav);
		if(navEnglishName == null){
			return "about_hwq";
		}
		new QueryHelper(WechatInfo.class, "u")
    	.addOrderProperty("wechatId", true)
    	.preparePageBean(wechatService, pageNum, pageSize);	
		return navEnglishName;
	}
	
	public String aboutHyjj(){
		DetailInfo detail=null;
		NavigationInfo nav=null;
		if(navEnglishName == null){
			selected=0;
			detail=detailService.findNavByEnglishName("hyjj_hs");
			nav=navService.findNavByEnglishName("hyjj_hs");
		}
		else if(navEnglishName.equals("hyjj_hc")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=1;
		}else if(navEnglishName.equals("hyjj_hh")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=2;
		}else if(navEnglishName.equals("hyjj_hw")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=3;
		}else if(navEnglishName.equals("hyjj_hd")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=4;
		}else{
			detail=detailService.findNavByEnglishName("hyjj_hs");
			nav=navService.findNavByEnglishName("hyjj_hs");
			selected=0;
		}
		String[] images=new String[]{};
		List<NavigationInfo> childrenNav=navService.getAllChildrenNavList(nav.getNavigationInfo().getNavigationId());
		if(detail.getImagesAddress() !=null && detail.getImagesAddress().length()>0){
			images=detail.getImagesAddress().split(";");
		}
		ActionContext.getContext().put("images", images);
		ActionContext.getContext().put("nav", nav);
		ActionContext.getContext().put("detail", detail);
		ActionContext.getContext().put("childrenNav", childrenNav);
		new QueryHelper(WechatInfo.class, "u")
    	.addOrderProperty("wechatId", true)
    	.preparePageBean(wechatService, pageNum, pageSize);	
		if(navEnglishName == null){
			return "about_hyjj";
		}
		return navEnglishName;
	}
	
	
	
	public String aboutHyqy(){
		DetailInfo detail=null;
		NavigationInfo nav=null;
		if(navEnglishName == null){
			selected=0;
			detail=detailService.findNavByEnglishName("hyqy_xhyhzs");
			nav=navService.findNavByEnglishName("hyqy_xhyhzs");
		}
		else if(navEnglishName.equals("hyqy_hydq")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=1;
		}else if(navEnglishName.equals("hyqy_xhyaq")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=2;
		}else{
			detail=detailService.findNavByEnglishName("hyqy_xhyhzs");
			nav=navService.findNavByEnglishName("hyqy_xhyhzs");
			selected=0;
		}
		String[] images=new String[]{};
		List<NavigationInfo> childrenNav=navService.getAllChildrenNavList(nav.getNavigationInfo().getNavigationId());
		if(detail.getImagesAddress() !=null && detail.getImagesAddress().length()>0){
			images=detail.getImagesAddress().split(";");
		}
		ActionContext.getContext().put("images", images);
		ActionContext.getContext().put("nav", nav);
		ActionContext.getContext().put("detail", detail);
		ActionContext.getContext().put("childrenNav", childrenNav);
		new QueryHelper(WechatInfo.class, "u")
    	.addOrderProperty("wechatId", true)
    	.preparePageBean(wechatService, pageNum, pageSize);	
		if(navEnglishName == null){
			return "about_hyqy";
		}
		return navEnglishName;
	}
	
	
	
	
	
	
	public String aboutLzyhy(){
		DetailInfo detail=null;
		NavigationInfo nav=null;
		if(navEnglishName == null){
			selected=0;
			detail=detailService.findNavByEnglishName("lzyhy_jjrz");
			nav=navService.findNavByEnglishName("lzyhy_jjrz");
		}
		else if(navEnglishName.equals("lzyhy_ybjrz")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=1;
		}else if(navEnglishName.equals("lzyhy_jdrz")){
			detail=detailService.findNavByEnglishName(navEnglishName);
			nav=navService.findNavByEnglishName(navEnglishName);
			selected=2;
		}else{
			detail=detailService.findNavByEnglishName("lzyhy_jjrz");
			nav=navService.findNavByEnglishName("lzyhy_jjrz");
			selected=0;
		}
		String[] images=new String[]{};
		List<NavigationInfo> childrenNav=navService.getAllChildrenNavList(nav.getNavigationInfo().getNavigationId());
		if(detail.getImagesAddress() !=null && detail.getImagesAddress().length()>0){
			images=detail.getImagesAddress().split(";");
		}
		ActionContext.getContext().put("images", images);
		ActionContext.getContext().put("nav", nav);
		ActionContext.getContext().put("detail", detail);
		ActionContext.getContext().put("childrenNav", childrenNav);
		new QueryHelper(WechatInfo.class, "u")
    	.addOrderProperty("wechatId", true)
    	.preparePageBean(wechatService, pageNum, pageSize);	
		if(navEnglishName == null){
			return "about_lzyhy";
		}
		return navEnglishName;
	}
	
	public String aboutRlzy(){
		List<HumanResInfo> list=humanResService.findAll();
		ActionContext.getContext().put("list", list);
		new QueryHelper(WechatInfo.class, "u")
    	.addOrderProperty("wechatId", true)
    	.preparePageBean(wechatService, pageNum, pageSize);	
		return "about_rlzy";
	}
	
	
	public String aboutLxwm(){
		new QueryHelper(WechatInfo.class, "u")
    	.addOrderProperty("wechatId", true)
    	.preparePageBean(wechatService, pageNum, pageSize);	
		return "about_lxwm";
	}
	
	

}
