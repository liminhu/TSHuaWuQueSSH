package com.tangshan.hwq.service;

import com.tangshan.hwq.base.DaoSupport;
import com.tangshan.hwq.domain.StatisticalInfo;

public interface StatisticalService extends DaoSupport<StatisticalInfo> {
	 StatisticalInfo getFirstStatisticalRecord();
}
