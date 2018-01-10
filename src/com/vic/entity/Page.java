package com.vic.entity;
/**
 * 分页的工具类
 * @author Liang
 *
 */
public class Page {
	//定义分页的四要素
	private int totleCount;//数据库中的总记录数
	private int pageSize=16;//页大小
	private int pageCount;//总页数
	private int currentPage;//当前页
	
	public Page() {
		super();
	}

	public Page                                                                                                                                                                                                                                (int totleCount, int pageSize, int pageCount, int currentPage) {
		super();
		this.totleCount = totleCount;
		this.pageSize = pageSize;
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

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		pageCount=this.totleCount/this.pageSize==0?
				this.totleCount/this.pageSize:
					this.totleCount/this.pageSize+1;
		return pageCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
}
