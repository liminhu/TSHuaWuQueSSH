package com.tangshan.hwq.service.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.base.DaoSupportImpl;
import com.tangshan.hwq.domain.WechatInfo;
import com.tangshan.hwq.service.WechatService;
import com.tangshan.hwq.util.PageBean;
import com.tangshan.hwq.util.QueryHelper;

@Service
@Transactional
public class WechatServiceImpl extends DaoSupportImpl<WechatInfo> implements WechatService{
	@Override
	public PageBean myGetPageBean(int pageNum, int pageSize,
			QueryHelper queryHelper) {
		// 参数列表
				List<Object> parameters = queryHelper.getParameters();
				// 查询本页的数据列表
				ApplicationContext ac = new ClassPathXmlApplicationContext(
						"applicationContext.xml");
				SessionFactory mysessionFactory=(SessionFactory)ac.getBean("sessionFactory"); 
				Query listQuery = mysessionFactory.getCurrentSession().createQuery(queryHelper.getListQueryHql()); // 创建查询对象
				if (parameters != null) { // 设置参数
					for (int i = 0; i < parameters.size(); i++) {
						listQuery.setParameter(i, parameters.get(i));
					}
				}
				listQuery.setFirstResult((pageNum - 1) * pageSize);
				listQuery.setMaxResults(pageSize);
				List list = listQuery.list(); // 执行查询

				// 查询总记录数量
				Query countQuery = getSession().createQuery(queryHelper.getCountQueryHql());
				if (parameters != null) { // 设置参数
					for (int i = 0; i < parameters.size(); i++) {
						countQuery.setParameter(i, parameters.get(i));
					}
				}
				Long count = (Long) countQuery.uniqueResult(); // 执行查询

				return new PageBean(pageNum, pageSize, count.intValue(), list);
	}
}
