package com.tangshan.hwq.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.base.DaoSupportImpl;
import com.tangshan.hwq.domain.NavigationInfo;
import com.tangshan.hwq.service.NavigationService;

@Service
@Transactional
@SuppressWarnings("unchecked")
public class NavigationServiceImpl extends DaoSupportImpl<NavigationInfo> implements NavigationService{
	@Override
	public List<NavigationInfo> findTopList() {
		return getSession().createQuery(//
				"FROM NavigationInfo n WHERE n.navigationInfo IS NULL order by n.navigationId ASC")//
				.list();
	}
	
	
	@Override
	public List<NavigationInfo> findAllNotTopList() {
		return getSession().createQuery(//
				"FROM NavigationInfo n WHERE n.navigationInfo IS not NULL order by n.navigationId ASC")//
				.list();
	}

	@Override
	public List<NavigationInfo> getAllChildrenNavList(Integer parentId) {
		return getSession().createQuery(//
				"FROM NavigationInfo n WHERE n.navigationInfo.navigationId=? order by n.navigationId ASC")//
				.setParameter(0, parentId)   //
				.list();
	}
	
	
	@Override
	public NavigationInfo findNavByEnglishName(String engName) {
		return (NavigationInfo)getSession().createQuery(//
				"FROM NavigationInfo n WHERE n.navEnglishName=? ")//
				.setParameter(0, engName)   //
				.uniqueResult();
	}
	
}
