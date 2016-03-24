package com.tangshan.hwq.service;

import com.tangshan.hwq.base.DaoSupport;
import com.tangshan.hwq.domain.DetailInfo;

public interface DetailService extends DaoSupport<DetailInfo> {
	public DetailInfo  findNavByEnglishName(String engName);
	public DetailInfo  findNavByEnglishNameAndSeletedNum(String engName, int seletedNum);
}
