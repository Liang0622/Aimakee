package com.vic.util;
/**
 * 分页的工具类
 * @author Liang
 *
 */
public class Page {
	//定义分页的四要素
	private int totleCount;//数据库中的总记录数
	private final int pageSize=8;//页大小
	private int pageCount;//总页数
	private int currentPage;//当前页
	
	public Page() {
		super();
	}

	public Page                                                                                                                                                                                                                                (int totleCount, int pageSize, int pageCount, int currentPage) {
		super();
		this.totleCount = totleCount;
		this.pageCount = pageCount;
		this.currentPage = currentPage;
	}

	public int getTotleCount() {
		return totleCount;
	}

	public void setTotleCount(int totleCount) {
		this.totleCount = totleCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getPageCount() {
		
		return pageCount;
	}
	public void setPageCount() {
		pageCount=this.totleCount%this.pageSize==0?
				this.totleCount/this.pageSize:
					this.totleCount/this.pageSize+1;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
}
