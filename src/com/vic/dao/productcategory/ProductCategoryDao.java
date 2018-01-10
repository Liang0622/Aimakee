package com.vic.dao.productcategory;

import java.util.List;

import com.vic.entity.ProductCategory;

public interface ProductCategoryDao {
	
	List<ProductCategory> findAll();
	//查找一级目录
	List<ProductCategory> findByLevel(int type,int parentId);
	//根据id查找分类
	ProductCategory findById(int pId);
	
}
