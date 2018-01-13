package com.vic.service.productcategory.mpl;

import java.util.List;

import com.vic.dao.productcategory.ProductCategoryDao;
import com.vic.dao.productcategory.impl.ProductCategoryDaoImpl;
import com.vic.entity.ProductCategory;
import com.vic.service.productcategory.ProductCategoryService;

public class ProductCategoryServiceImpl implements ProductCategoryService {
	ProductCategoryDao pcdi=new ProductCategoryDaoImpl();
	@Override
	public List<ProductCategory> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductCategory> findByLevel(int type, int cateId) {
		
		return pcdi.findByLevel(type, cateId);
	}

	@Override
	public String findNameById(int pId) {
		ProductCategory pc=pcdi.findById(pId);
		return pc.getName();
	}

}
