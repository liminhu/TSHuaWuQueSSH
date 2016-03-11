package com.tangshan.hwq.service;

import java.util.List;

import com.tangshan.hwq.base.DaoSupport;
import com.tangshan.hwq.domain.NavigationInfo;

public interface NavigationService extends DaoSupport<NavigationInfo> {
	public List<NavigationInfo> findTopList();
	public List<NavigationInfo> findAllNotTopList();
	public List<NavigationInfo> getAllChildrenNavList(Integer parentId);
	
	public NavigationInfo findNavByEnglishName(String engName);
}
