package com.vic.dao.page;

import java.util.List;

import com.vic.util.Page;

public interface PageDao<T> {
	/**
	 * 查询总记录数
	 */
	 int getTotleCount();
	 
	 
}
