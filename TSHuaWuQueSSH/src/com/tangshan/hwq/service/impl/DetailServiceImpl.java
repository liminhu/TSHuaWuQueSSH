package com.tangshan.hwq.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.base.DaoSupportImpl;
import com.tangshan.hwq.domain.DetailInfo;
import com.tangshan.hwq.service.DetailService;

@Service
@Transactional
public class DetailServiceImpl extends DaoSupportImpl<DetailInfo> implements DetailService{
	@Override
	public DetailInfo findNavByEnglishName(String engName) {
		return (DetailInfo)getSession().createQuery(//
				"FROM DetailInfo d WHERE d.navEnglishName=?")//
				.setParameter(0, engName)   //
				.uniqueResult();
	}
	
	@Override
	public DetailInfo findNavByEnglishNameAndSeletedNum(String engName,
			int seletedNum) {
		return (DetailInfo)getSession().createQuery(//
				"FROM DetailInfo d WHERE d.navEnglishName=? and  d.seletedNum=? ")//
				.setParameter(0, engName)   //
				.setParameter(1, seletedNum)  //
				.uniqueResult();
	}

	
}
