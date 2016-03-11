package com.tangshan.hwq.service;

import com.tangshan.hwq.base.DaoSupport;
import com.tangshan.hwq.domain.UserInfo;

public interface UserService extends DaoSupport<UserInfo> {
	UserInfo findByLoginNameAndPassword(String loginName, String password);
}
