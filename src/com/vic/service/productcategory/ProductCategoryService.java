package com.vic.service.productcategory;

import java.util.List;

import com.vic.entity.ProductCategory;

public interface ProductCategoryService {
	
	List<ProductCategory> findAll();
	//查找一级目录
	List<ProductCategory> findByLevel(int type,int parentId);
	//根据id查找类别名称
	String findNameById(int pId);
}
