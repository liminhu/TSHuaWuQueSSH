package com.tangshan.hwq.service;

import java.util.List;

import com.tangshan.hwq.base.DaoSupport;
import com.tangshan.hwq.domain.DetailInfo;
import com.tangshan.hwq.domain.IndexModuleInfo;

public interface IndexModuleService extends DaoSupport<IndexModuleInfo> {
	List<IndexModuleInfo> findListByModuleEnglishName(String moduleEnglishName);
	public IndexModuleInfo  findModuleByEnglishNameAndSeletedNum(String engName, int seletedNum);
}
