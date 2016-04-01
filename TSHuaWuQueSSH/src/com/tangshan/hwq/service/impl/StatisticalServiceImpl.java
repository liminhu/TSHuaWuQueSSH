package com.tangshan.hwq.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.base.DaoSupportImpl;
import com.tangshan.hwq.domain.StatisticalInfo;
import com.tangshan.hwq.service.StatisticalService;

@Service
@Transactional
public class StatisticalServiceImpl extends DaoSupportImpl<StatisticalInfo> implements StatisticalService{

	@Override
	public StatisticalInfo getFirstStatisticalRecord() {
		return findAll().get(0);
	}
}
