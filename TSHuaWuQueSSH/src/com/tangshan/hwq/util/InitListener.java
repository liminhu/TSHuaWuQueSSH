package com.tangshan.hwq.util;

import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.tangshan.hwq.domain.NavigationInfo;
import com.tangshan.hwq.domain.PageInfo;
import com.tangshan.hwq.service.NavigationService;
import com.tangshan.hwq.service.PageInfoService;

public class InitListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// 获取容器与相关的Service对象
		ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
		NavigationService navService = (NavigationService) ac.getBean("navigationServiceImpl");
		PageInfoService pageService = (PageInfoService) ac.getBean("pageInfoServiceImpl");
		PageInfo page=pageService.getFirstRecord();
		sce.getServletContext().setAttribute("page", page);
		// 准备数据：topNavigation
		List<NavigationInfo> topNavigationList = navService.findTopList();
		sce.getServletContext().setAttribute("topNavigationList", topNavigationList);
		System.out.println("------------> 已准备数据topNavigationList <------------"+topNavigationList.size());
    
		
	

/*		// 准备数据：childNavigation
		List<NavigationInfo> childNavList = navService.findAllNotTopList();
		sce.getServletContext().setAttribute("childNavigationList", childNavList);
		System.out.println("------------> 已准备数据childNavList <------------"+childNavList.size());
*/	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		sce.getServletContext().removeAttribute("topNavigationList");
		sce.getServletContext().removeAttribute("childNavigationList");
	}
	
}
