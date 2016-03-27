package com.tangshan.hwq.view.action;

import java.sql.Timestamp;
import java.util.Calendar;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.tangshan.hwq.base.BaseAction;
import com.tangshan.hwq.domain.DetailInfo;
import com.tangshan.hwq.domain.NavigationInfo;
import com.tangshan.hwq.domain.StatisticalInfo;


@Controller
@Scope("prototype")
public class DetailAction extends BaseAction<DetailInfo> {
	private DetailInfo detail=null;
	private NavigationInfo nav=null;
	private String path=null;
	private String oldImg;
	private String img;
	private String navEnglish;




	public String getNavEnglish() {
		return navEnglish;
	}




	public void setNavEnglish(String navEnglish) {
		this.navEnglish = navEnglish;
	}




	public String getImg() {
		return img;
	}




	public void setImg(String img) {
		this.img = img;
	}




	public String getOldImg() {
		return oldImg;
	}




	public void setOldImg(String oldImg) {
		this.oldImg = oldImg;
	}




	/** 列表 */
	public String list() throws Exception {
		String engName=model.getNavEnglishName();
		if(engName==null){
			engName=navEnglish;
		}
		if(engName.contains("hwq")){
			path="hwq";
		}else if(engName.contains("hyjj")){
			path="hyjj";
		}else if(engName.contains("hyqy")){
			path="hyqy";
		}else{
			path="hwq";
		}
		if(engName.contains("lzyhy")){
			path="lzyhy";
			detail=detailService.findNavByEnglishNameAndSeletedNum(engName, model.getSeletedNum());
		}else{
			detail=detailService.findNavByEnglishName(engName);
		}
		nav=navService.findNavByEnglishName(engName);
		ActionContext.getContext().put("detail", detail);
		ActionContext.getContext().put("nav", nav);
		ActionContext.getContext().put("path", path);
		return "list";
	}
	
	
	
	/** 添加页面 */
	public String addUI() throws Exception {
		return "saveUI";
	}
	
	/** 删除 */
	public String delete() throws Exception {
		detailService.delete(model.getId());
		return "toList";
	}
	
	
	/** 添加 */
	public String add() throws Exception {
		Timestamp time=new Timestamp(Calendar.getInstance().getTimeInMillis());
		model.setUpdateTime(time);
		detailService.save(model);
		return "toList";
	}

	/** 修改页面 */
	public String editUI() throws Exception {
		// 准备回显的数据
	    detail = detailService.getById(model.getId());
		String engName=detail.getNavEnglishName();
		nav=navService.findNavByEnglishName(engName);
		if(engName.contains("hwq")){
			path="hwq";
		}else if(engName.contains("hyjj")){
			path="hyjj";
		}else if(engName.contains("hyqy")){
			path="hyqy";
		}else if(engName.contains("lzyhy")){
			path="lzyhy";
		}else{
			path="hwq";
		}
		ActionContext.getContext().put("detail", detail);
		ActionContext.getContext().put("img", img);
		ActionContext.getContext().put("nav", nav);
		ActionContext.getContext().put("path", path);
		return "saveUI";
	}

	/** 修改 */
	public String edit() throws Exception {
		detail = detailService.getById(model.getId());
		String[] newImgs=model.getImagesAddress().split("/");
		if(newImgs.length>1){
		String newImg=newImgs[1];
		String[] imges=detail.getImagesAddress().split(";");
		StringBuffer imgAddress=new StringBuffer();
		for(int i=0; i<imges.length; i++){
			if(imges[i].equals(oldImg)){
				imges[i]=newImg;
			}
			imgAddress.append(imges[i]);
			if(i+1<imges.length)
				imgAddress.append(";");
		   }
	       detail.setImagesAddress(imgAddress.toString());
	       Timestamp time=new Timestamp(Calendar.getInstance().getTimeInMillis());
	       detail.setUpdateTime(time);
	       detailService.save(detail);
	       StatisticalInfo statis=statisticalService.getFirstStatisticalRecord();
	       if(statis!=null){
	    	   statis.setLastLoginTime(time);
	    	   statis.setEntireImageNum(statis.getEntireImageNum()+1);
	    	   statisticalService.save(statis);
	       }
		}
		String engName=detail.getNavEnglishName();
		if(engName.contains("hwq")){
			path="hwq";
		}else if(engName.contains("hyjj")){
			path="hyjj";
		}else if(engName.contains("hyqy")){
			path="hyqy";
		}else if(engName.contains("lzyhy")){
			path="lzyhy";
		}else{
			path="hwq";
		}
	    navEnglish=detail.getNavEnglishName();
		return "toList";
	}
}
