package com.tangshan.hwq.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.base.DaoSupportImpl;
import com.tangshan.hwq.domain.IndexModuleInfo;
import com.tangshan.hwq.service.IndexModuleService;

@Service
@Transactional
public class IndexModuleServiceImpl extends DaoSupportImpl<IndexModuleInfo> implements IndexModuleService{

	@SuppressWarnings("unchecked")
	@Override
	public List<IndexModuleInfo> findListByModuleEnglishName(
			String moduleEnglishName) {
		return  (List<IndexModuleInfo>)getSession().createQuery(//
				"FROM IndexModuleInfo u WHERE u.moduleEnglishName=?")//
				.setParameter(0, moduleEnglishName).list();
	}
	
}
