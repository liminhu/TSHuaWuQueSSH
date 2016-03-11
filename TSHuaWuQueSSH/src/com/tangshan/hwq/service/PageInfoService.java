package com.tangshan.hwq.service;

import com.tangshan.hwq.base.DaoSupport;
import com.tangshan.hwq.domain.PageInfo;

public interface PageInfoService extends DaoSupport<PageInfo> {
	PageInfo getFirstRecord();
}
