package com.tangshan.hwq.service;

import com.tangshan.hwq.base.DaoSupport;
import com.tangshan.hwq.domain.WechatInfo;
import com.tangshan.hwq.util.PageBean;
import com.tangshan.hwq.util.QueryHelper;

public interface WechatService extends DaoSupport<WechatInfo> {
	public PageBean myGetPageBean(int pageNum, int pageSize, QueryHelper queryHelper);
}
