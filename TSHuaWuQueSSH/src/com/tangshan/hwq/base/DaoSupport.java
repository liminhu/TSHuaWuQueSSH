package com.tangshan.hwq.base;

import java.util.List;

import com.tangshan.hwq.util.PageBean;
import com.tangshan.hwq.util.QueryHelper;


public interface DaoSupport<T> {
	void save(T entity);
	void delete(Integer id);
	void update(T entity);
	T getById(Integer id);

	
	List<T> getByIds(Integer[] ids);
	List<T> findAll();
	List<T> findMember();
	List<T> findManager();
	/**
	 * 公共的查询分页信息的方法（最终版）
	 * 
	 * @param pageNum
	 * @param pageSize
	 * @param queryHelper
	 *            HQL语句与参数列表
	 * @return
	 */
	PageBean getPageBean(int pageNum, int pageSize, QueryHelper queryHelper);

	
}
