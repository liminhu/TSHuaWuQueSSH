package com.tangshan.hwq.util;

import java.sql.Timestamp;
import java.util.Calendar;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.domain.DetailInfo;
import com.tangshan.hwq.domain.HumanResInfo;
import com.tangshan.hwq.domain.IndexModuleInfo;
import com.tangshan.hwq.domain.NavigationInfo;
import com.tangshan.hwq.domain.PageInfo;
import com.tangshan.hwq.domain.WechatInfo;
import com.tangshan.hwq.service.HumanResService;
import com.tangshan.hwq.service.IndexModuleService;
import com.tangshan.hwq.service.NavigationService;
import com.tangshan.hwq.service.PageInfoService;

@Component
public class Installer {
	@Resource	                                         
	private SessionFactory sessionFactory;    // 默认取字段的名称作为bean名称寻找依赖对象

	@Resource
	protected PageInfoService pageService;
	
	@Resource
	protected IndexModuleService indexService;
	
	@Resource
	protected NavigationService navService;
	
	@Resource
	protected HumanResService humanResService;
	
	private void testPageTable(Session session){
		Timestamp time=new Timestamp(Calendar.getInstance().getTimeInMillis());
		PageInfo page = new PageInfo();
		page.setUpdateTime(time);
		page.setLogo("logo.jpg");
		page.setTitle("花无缺花艺空间设计室");
		page.setTelephoneNum("0315-2336628");
		page.setMobilePhoneNum("150 2768 8080");
		page.setQqPhoneNum("527280479");
		page.setFirstBlockImgs("1.jpg,2.jpg,3.jpg");
		page.setSecondBlockImg("4.jpg");
		page.setThirdBlockImg("5.jpg");
		page.setRecordInfo("冀ICP备16003210号");
		//链接地址改为100位
		page.setRecordLinkAddress("http://www.miitbeian.gov.cn/publish/query/indexFirst.action");
		page.setCopyright("Copyright&copy; 1995-2016 花无缺花艺空间设计室 All Rights Reserved");
		session.save(page);
	}
	
	
	private void testNavTable(Session session){
		Timestamp time=new Timestamp(Calendar.getInstance().getTimeInMillis());
		NavigationInfo nav1=new NavigationInfo("首页", "home", "page_gethomeUI.action", null, time, null);
		NavigationInfo nav2=new NavigationInfo("关于花无缺", "about_hwq", "page_aboutHwq.action", "41.jpg", time, null);
		NavigationInfo nav3=new NavigationInfo("花艺集锦", "about_hyjj", "page_aboutHyjj.action", "42.jpg", time, null);
		NavigationInfo nav4=new NavigationInfo("花言巧语", "about_hyqy", "page_aboutHyqy.action", "43.jpg", time, null);
		NavigationInfo nav5=new NavigationInfo("软装与花艺", "about_lzyhy", "page_aboutLzyhy.action", "44.jpg", time, null);
		NavigationInfo nav6=new NavigationInfo("人力资源", "about_rlzy", "page_aboutRlzy.action", "45.jpg", time, null);
		NavigationInfo nav7=new NavigationInfo("联系我们 ", "about_lxwm", "page_aboutLxwm.action", "46.jpg", time, null);
		
		NavigationInfo nav8=new NavigationInfo("花无缺简介", "hwq_jj", "page_aboutHwq.action", "41.jpg", time, nav2);
		NavigationInfo nav9=new NavigationInfo("企业文化", "hwq_qywh", "page_aboutHwq.action", "41.jpg", time, nav2);
		NavigationInfo nav10=new NavigationInfo("荣誉资质", "hwq_lyzz", "page_aboutHwq.action", "41.jpg", time, nav2);
		
		NavigationInfo nav11=new NavigationInfo("花束", "hyjj_hs", "page_aboutHyjj.action", "42.jpg", time, nav3);
		NavigationInfo nav12=new NavigationInfo("花插", "hyjj_hc", "page_aboutHyjj.action", "42.jpg", time, nav3);
		NavigationInfo nav13=new NavigationInfo("花盒", "hyjj_hh", "page_aboutHyjj.action", "42.jpg", time, nav3);
		NavigationInfo nav14=new NavigationInfo("会务", "hyjj_hw", "page_aboutHyjj.action", "42.jpg", time, nav3);
		NavigationInfo nav15=new NavigationInfo("活动", "hyjj_hd", "page_aboutHyjj.action", "42.jpg", time, nav3);

		NavigationInfo nav16=new NavigationInfo("鲜花养护知识", "hyqy_xhyhzs", "page_aboutHyqy.action", "43.jpg", time, nav4);
		NavigationInfo nav17=new NavigationInfo("花语大全", "hyqy_hydq", "page_aboutHyqy.action", "43.jpg", time, nav4);
		NavigationInfo nav18=new NavigationInfo("鲜花与爱情", "hyqy_xhyaq", "page_aboutHyqy.action", "43.jpg", time, nav4);
		
		NavigationInfo nav19=new NavigationInfo("家居软装", "lzyhy_jjrz", "page_aboutLzyhy.action", "44.jpg", time, nav5);
		NavigationInfo nav20=new NavigationInfo("样板间软装", "lzyhy_ybjrz", "page_aboutLzyhy.action", "44.jpg", time, nav5);
		NavigationInfo nav21=new NavigationInfo("酒店软装", "lzyhy_jdrz", "page_aboutLzyhy.action", "44.jpg", time, nav5);
		
		session.save(nav1);
		session.save(nav2);
		session.save(nav3);
		session.save(nav4);
		session.save(nav5);
		session.save(nav6);
		session.save(nav7);
		session.flush();
		
		session.save(nav8);
		session.save(nav9);
		session.save(nav10);
		session.save(nav11);
		session.save(nav12);
		session.save(nav13);
		session.save(nav14);
		
		session.save(nav15);
		session.save(nav16);
		session.save(nav17);
		session.save(nav18);
		session.save(nav19);
		session.save(nav20);
		session.save(nav21);
		
		session.flush();
	}
	
	private void testIndexModuleTable(Session session){
		IndexModuleInfo index1=new IndexModuleInfo("花束", "11.jpg", "page_showDetail.action",  "花束", "hyjj_hs", 0);
		IndexModuleInfo index2=new IndexModuleInfo("花插",  "12.jpg", "page_showDetail.action", "花插", "hyjj_hc",0);
		IndexModuleInfo index3=new IndexModuleInfo("花盒",  "13.jpg", "page_showDetail.action", "花盒", "hyjj_hh",0);
		IndexModuleInfo index4=new IndexModuleInfo("会务",  "14.jpg", "page_showDetail.action", "会务", "hyjj_hw",0);
		IndexModuleInfo index5=new IndexModuleInfo("活动",  "15.jpg", "page_showDetail.action", "活动", "hyjj_hd",0);
		session.save(index1);
		session.save(index2);
		session.save(index3);
		session.save(index4);
		session.save(index5);
		
		IndexModuleInfo index6=new IndexModuleInfo("家居软装",  "17.jpg", "page_showDetail.action", "软装之——植物系列","lzyhy_jjrz" ,1);
		IndexModuleInfo index7=new IndexModuleInfo("家居软装",  "18.jpg", "page_showDetail.action", "软装之——窗帘系列","lzyhy_jjrz" ,2);
		IndexModuleInfo index8=new IndexModuleInfo("家居软装",  "19.jpg", "page_showDetail.action", "软装之——床品系列","lzyhy_jjrz" ,3);
		IndexModuleInfo index9=new IndexModuleInfo("家居软装",  "20.jpg", "page_showDetail.action", "软装之——灯饰系列","lzyhy_jjrz" ,4);
		IndexModuleInfo index10=new IndexModuleInfo("家居软装",  "21.jpg", "page_showDetail.action", "软装之——挂画系列","lzyhy_jjrz",5);
		IndexModuleInfo index11=new IndexModuleInfo("家居软装", "22.jpg", "page_showDetail.action", "软装之——地毯系列","lzyhy_jjrz" ,6);
		IndexModuleInfo index12=new IndexModuleInfo("家居软装",  "23.jpg", "page_showDetail.action", "软装之——家具系列","lzyhy_jjrz",7);
		IndexModuleInfo index13=new IndexModuleInfo("家居软装",  "24.jpg", "page_showDetail.action", "软装之——饰品系列","lzyhy_jjrz",8);
		
		session.save(index6);
		session.save(index7);
		session.save(index8);
		session.save(index9);
		session.save(index10);
		session.save(index11);
		session.save(index12);
		session.save(index13);
		
		IndexModuleInfo index14=new IndexModuleInfo("样板间软装",  "25.jpg",  "page_showDetail.action", "1","lzyhy_ybjrz" ,1);
		IndexModuleInfo index15=new IndexModuleInfo("样板间软装",  "26.jpg",  "page_showDetail.action", "2", "lzyhy_ybjrz" ,2);
		IndexModuleInfo index16=new IndexModuleInfo("样板间软装",  "27.jpg", "page_showDetail.action", "3","lzyhy_ybjrz" ,3);
		IndexModuleInfo index17=new IndexModuleInfo("样板间软装", "28.jpg", "page_showDetail.action", "4", "lzyhy_ybjrz" ,4);
		IndexModuleInfo index18=new IndexModuleInfo("样板间软装",  "29.jpg", "page_showDetail.action", "5", "lzyhy_ybjrz" ,5);
		IndexModuleInfo index19=new IndexModuleInfo("样板间软装",  "30.jpg", "page_showDetail.action", "6", "lzyhy_ybjrz" ,6);
		IndexModuleInfo index20=new IndexModuleInfo("样板间软装", "31.jpg", "page_showDetail.action", "7", "lzyhy_ybjrz" ,7);
		IndexModuleInfo index21=new IndexModuleInfo("样板间软装",  "32.jpg", "page_showDetail.action", "8", "lzyhy_ybjrz" ,8);
	
		session.save(index14);
		session.save(index15);
		session.save(index16);
		session.save(index17);
		session.save(index18);
		session.save(index19);
		session.save(index20);
		session.save(index21);
		
		
		IndexModuleInfo index22=new IndexModuleInfo("酒店软装",  "33.jpg", "page_showDetail.action", "1" ,"lzyhy_jdrz" ,1);
		IndexModuleInfo index23=new IndexModuleInfo("酒店软装",  "34.jpg", "page_showDetail.action", "2","lzyhy_jdrz" ,2);
		IndexModuleInfo index24=new IndexModuleInfo("酒店软装",  "35.jpg", "page_showDetail.action", "3","lzyhy_jdrz" ,3);
		IndexModuleInfo index25=new IndexModuleInfo("酒店软装",  "36.jpg", "page_showDetail.action", "4","lzyhy_jdrz" ,4);
		IndexModuleInfo index26=new IndexModuleInfo("酒店软装",  "37.jpg", "page_showDetail.action", "5","lzyhy_jdrz" ,5);
		IndexModuleInfo index27=new IndexModuleInfo("酒店软装",  "38.jpg", "page_showDetail.action", "6","lzyhy_jdrz" ,6);
		IndexModuleInfo index28=new IndexModuleInfo("酒店软装",  "39.jpg", "page_showDetail.action", "7","lzyhy_jdrz" ,7);
		IndexModuleInfo index29=new IndexModuleInfo("酒店软装",  "40.jpg", "page_showDetail.action", "8","lzyhy_jdrz" ,8);
	
		session.save(index22);
		session.save(index23);
		session.save(index24);
		session.save(index25);
		session.save(index26);
		session.save(index27);
		session.save(index28);
		session.save(index29);
		
		session.flush();
	}
	
	
	private void testDetailTable(Session session){
		Timestamp time=new Timestamp(Calendar.getInstance().getTimeInMillis());
		NavigationInfo nav=navService.findNavByEnglishName("hwq_jj");
		DetailInfo detail1=new DetailInfo(nav, "41.jpg", 4, "45.jpg;46.jpg;47.jpg;48.jpg", "hwq_jj" ,time,0);
		nav=navService.findNavByEnglishName("hwq_qywh");
		DetailInfo detail2=new DetailInfo(nav, "41.jpg", 10, "49.jpg;50.jpg;51.jpg;52.jpg;53.jpg;54.jpg;55.jpg;56.jpg;57.jpg;58.jpg","hwq_qywh" ,time,0);
		nav=navService.findNavByEnglishName("hwq_lyzz");
		DetailInfo detail3=new DetailInfo(nav, "41.jpg", 7, "59.jpg;60.jpg;61.jpg;62.jpg;63.jpg;64.jpg;65.jpg","hwq_lyzz",time,0);
		
		nav=navService.findNavByEnglishName("hyjj_hs");
		DetailInfo detail4=new DetailInfo(nav, "42.jpg", 9, "66.jpg;67.jpg;68.jpg;69.jpg;70.jpg;71.jpg;72.jpg;73.jpg;74.jpg","hyjj_hs",time,0);
		nav=navService.findNavByEnglishName("hyjj_hc");
		DetailInfo detail5=new DetailInfo(nav, "42.jpg", 6, "102.jpg;103.jpg;104.jpg;105.jpg;106.jpg;107.jpg","hyjj_hc",time,0);
		nav=navService.findNavByEnglishName("hyjj_hh");
		DetailInfo detail6=new DetailInfo(nav, "42.jpg", 9, "108.jpg;109.jpg;110.jpg;111.jpg;112.jpg;113.jpg;114.jpg;115.jpg;116.jpg","hyjj_hh",time,0);
		nav=navService.findNavByEnglishName("hyjj_hw");
		DetailInfo detail7=new DetailInfo(nav, "42.jpg", 8, "117.jpg;118.jpg;119.jpg;120.jpg;121.jpg;122.jpg;123.jpg;124.jpg", "hyjj_hw",time,0);
		nav=navService.findNavByEnglishName("hyjj_hd");
		DetailInfo detail8=new DetailInfo(nav, "42.jpg", 6, "125.jpg;126.jpg;127.jpg;128.jpg;129.jpg;130.jpg","hyjj_hd",time,0);
		
		nav=navService.findNavByEnglishName("hyqy_xhyhzs");
		DetailInfo detail9=new DetailInfo(nav, "43.jpg", 3, "75.jpg;76.jpg;77.jpg","hyqy_xhyhzs",time,0);
		nav=navService.findNavByEnglishName("hyqy_hydq");
		DetailInfo detail_10=new DetailInfo(nav, "43.jpg", 3, "78.jpg;79.jpg;80.jpg", "hyqy_hydq",time,0);
		nav=navService.findNavByEnglishName("hyqy_xhyaq");
		DetailInfo detail_11=new DetailInfo(nav, "43.jpg", 14, "81.jpg;82.jpg;83.jpg;84.jpg;85.jpg;86.jpg;87.jpg;88.jpg;89.jpg;90.jpg;91.jpg;92.jpg;93.jpg;94.jpg", "hyqy_xhyaq",time,0);
				
		nav=navService.findNavByEnglishName("lzyhy_jjrz");
		DetailInfo detail_12=new DetailInfo(nav, "44.jpg", 7, "95.jpg;96.jpg;97.jpg;98.jpg;99.jpg;100.jpg;101.jpg;", "lzyhy_jjrz",time,0);

		nav=navService.findNavByEnglishName("lzyhy_ybjrz");
		DetailInfo detail_13=new DetailInfo(nav, "44.jpg", 8, "131.jpg;132.jpg;133.jpg;134.jpg;135.jpg;136.jpg;137.jpg;138.jpg","lzyhy_ybjrz",time, 0);
		
		nav=navService.findNavByEnglishName("lzyhy_jdrz");
		DetailInfo detail_14=new DetailInfo(nav, "44.jpg", 9, "139.jpg;140.jpg;141.jpg;142.jpg;143.jpg;144.jpg;145.jpg;146.jpg;147.jpg", "lzyhy_jdrz",time, 0);
		
		session.save(detail1);
		session.save(detail2);
		session.save(detail3);
		session.save(detail4);
		session.save(detail5);
		session.save(detail6);
		session.save(detail7);
		session.save(detail8);
		session.save(detail9);
		session.save(detail_10);
		session.save(detail_11);
		session.save(detail_12);
		session.save(detail_13);
		session.save(detail_14);
		session.flush();
	}
	
	private void testHumanResTable(Session session){
		HumanResInfo humanResInfo1=new HumanResInfo("驾驶员", "面议", "高中及以上", "负责公司货物运送，清点数量，以及车辆的日常保养和清洁。", "1：男性，熟悉唐山市路况，驾龄三年以上。2：无不良驾驶违章记录，具有较强的安全意识。", "8：00--18：00", "0315——2336628");
		HumanResInfo humanResInfo2=new HumanResInfo("花艺师", "面议", "中专及以上学历", "鲜花日常护理，花束花盒设计，店面销售。", "有花店工作经验，能独立完成花束，插花工作，有自创新思想文字功底好。", "8：00--18：00", "0315——2336628");
		session.save(humanResInfo1);
		session.save(humanResInfo2);
	}
	
	private void testWechatTable(Session session){
		Timestamp time=new Timestamp(Calendar.getInstance().getTimeInMillis());
		WechatInfo weInfo1=new WechatInfo("#年宵闹春#大吉大利的年宵花1 ", "http://mp.weixin.qq.com/s?__biz=MjM5NTUxMzUwMw==&mid=416563675&idx=1&sn=94d698be1623dcfd472b4ff8d23de2d2#rd", time, time, 0);
		WechatInfo weInfo2=new WechatInfo("#年宵闹春#大吉大利的年宵花2 ", "http://mp.weixin.qq.com/s?__biz=MjM5NTUxMzUwMw==&mid=416563675&idx=1&sn=94d698be1623dcfd472b4ff8d23de2d2#rd", time, time, 0);
		WechatInfo weInfo3=new WechatInfo("#年宵闹春#大吉大利的年宵花 3", "http://mp.weixin.qq.com/s?__biz=MjM5NTUxMzUwMw==&mid=416563675&idx=1&sn=94d698be1623dcfd472b4ff8d23de2d2#rd", time, time, 0);
		WechatInfo weInfo4=new WechatInfo("#年宵闹春#大吉大利的年宵花 4", "http://mp.weixin.qq.com/s?__biz=MjM5NTUxMzUwMw==&mid=416563675&idx=1&sn=94d698be1623dcfd472b4ff8d23de2d2#rd", time, time, 0);
		WechatInfo weInfo5=new WechatInfo("#年宵闹春#大吉大利的年宵花 5", "http://mp.weixin.qq.com/s?__biz=MjM5NTUxMzUwMw==&mid=416563675&idx=1&sn=94d698be1623dcfd472b4ff8d23de2d2#rd", time, time, 0);
		WechatInfo weInfo6=new WechatInfo("#年宵闹春#大吉大利的年宵花 6", "http://mp.weixin.qq.com/s?__biz=MjM5NTUxMzUwMw==&mid=416563675&idx=1&sn=94d698be1623dcfd472b4ff8d23de2d2#rd", time, time, 0);
		session.save(weInfo1);
		session.save(weInfo2);
		session.save(weInfo3);
		session.save(weInfo4);
		session.save(weInfo5);
		session.save(weInfo6);
	}
	
	
	@Transactional
	public void install() {
		Session session = sessionFactory.getCurrentSession();
	   //testPageTable(session);
	   //testNavTable(session);
	   //testIndexModuleTable(session);
		//testDetailTable(session);
		//testHumanResTable(session);
		testWechatTable(session);
	//	List<IndexModuleInfo> list=indexService.findListByModuleEnglishName("1");
	//	System.out.println(list.size());
		
		
		// 保存超级管理员用户
	/*	UserInfo user = new UserInfo();
		user.setUserName("admin");
		String s = DigestUtils.md5Hex("123");
		user.setPassword(s);
		session.save(user);*/
				
	}

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		Installer installer = (Installer) ac.getBean("installer");
		installer.install();
	}

}
