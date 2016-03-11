package com.tangshan.hwq.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.base.DaoSupportImpl;
import com.tangshan.hwq.domain.PageInfo;
import com.tangshan.hwq.service.PageInfoService;

@Service
@Transactional
public class PageInfoServiceImpl extends DaoSupportImpl<PageInfo> implements PageInfoService{

	public PageInfo getFirstRecord(){
		return findAll().get(0);
	}
	
}
