package com.tangshan.hwq.service.impl;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.base.DaoSupportImpl;
import com.tangshan.hwq.domain.UserInfo;
import com.tangshan.hwq.service.UserService;

@Service
@Transactional
public class UserServiceImpl extends DaoSupportImpl<UserInfo> implements UserService{
	public UserInfo findByLoginNameAndPassword(String loginName, String password) {
		// 使用密码的MD5摘要进行对比
		String md5Digest = DigestUtils.md5Hex(password);
		return (UserInfo) getSession().createQuery(//
				"FROM UserInfo u WHERE u.userName=? AND u.password=?")//
				.setParameter(0, loginName)//
				.setParameter(1, md5Digest)//
				.uniqueResult();
	}

}
