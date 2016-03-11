package com.tangshan.hwq.base;


import java.lang.reflect.ParameterizedType;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.tangshan.hwq.util.PageBean;
import com.tangshan.hwq.util.QueryHelper;

/**
 * 
 * 1、getSession()和getHibernateTemplate都可以自动释放连接（当然你的配置要正确），
 *    但是在一个线程内getSession会get很多个session（就是开很多个会话、连接），很可能导致数据库连接超过上限。所以推荐使用getHibernateTemplate。
 *    
 * 2、如果有些语句无法用getHibernateTemplate实现，可以使用getHibernateTemplate.
 *    execute使用HibernateCallback回调接口。
 */

//@Transactional注解可以被继承
//@Transactional注解对父类中声明的方法无效
@Transactional
@SuppressWarnings("unchecked")
public abstract class DaoSupportImpl<T> implements DaoSupport<T> {

	@Resource
	private SessionFactory sessionFactory;
	
	private Class<T> clazz;

	public DaoSupportImpl() {
		// 使用反射技术得到T的真实类型
		ParameterizedType pt = (ParameterizedType) this.getClass()
				.getGenericSuperclass(); // 获取当前new的对象的 泛型的父类 类型
		this.clazz = (Class<T>) pt.getActualTypeArguments()[0]; // 获取第一个类型参数的真实类型
		System.out.println("clazz ---> " + clazz);
	}

	/**
	 * 获取当前可用的Session
	 */
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public void save(T entity) {
		getSession().save(entity);
	}

	public void delete(Integer id) {
		Object obj = getById(id);
		if (obj != null) {
			getSession().delete(obj);
		}
	}

	public void update(T entity) {
		getSession().saveOrUpdate(entity);
	}

	public T getById(Integer id) {
		if (id == null)
			return null;
		else {
			return (T) getSession().get(clazz, id);
		}
	}
	
	public List<T> getByIds(Integer[] ids) {
		if (ids == null || ids.length == 0)
			return Collections.EMPTY_LIST;
		else {
			return getSession()
					.createQuery(
							"FROM " + clazz.getSimpleName()
									+ " WHERE id IN (:ids)")
					.setParameterList("ids", ids).list();
		}
	}

	public List<T> findAll() {
		return getSession().createQuery("from " + clazz.getSimpleName()).list();
	}
	public List<T> findMember() {
		return getSession().createQuery("from " + clazz.getSimpleName()+" where state=0").list();
	}
	public List<T> findManager() {
		return getSession().createQuery("from " + clazz.getSimpleName()+" where state!=0").list();
	}
	public PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper) {
		System.out.println("-------> DaoSupportImpl.getPageBean( int pageNum, int pageSize, QueryHelper queryHelper )");

		// 参数列表
		List<Object> parameters = queryHelper.getParameters();

		// 查询本页的数据列表
		Query listQuery = getSession().createQuery(queryHelper.getListQueryHql()); // 创建查询对象
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
