package com.vic.service.product.impl;

import java.util.List;

import com.vic.dao.product.ProductDao;
import com.vic.dao.product.impl.ProductDaoImpl;
import com.vic.entity.Page;
import com.vic.entity.Product;
import com.vic.service.product.ProductService;

public class ProductServiceImpl implements ProductService{
	ProductDao pdi=new ProductDaoImpl();

	@Override
	public int getCountByCateLevelId(int categoryId, int level) {
		return pdi.getCountByCateLevelId(categoryId,level);
	}

	@Override
	public List<Product> findAllByPageAndCateId(Page page, int categoryId, int level) {
		return pdi.findAllByPageAndCateId(page, categoryId, level);
	}


	@Override
	public List<Product> findAllProduct(Page page) {
		return pdi.findAllProduct(page);
	}

	@Override
	public int getAllProductCount() {
		// TODO Auto-generated method stub
		return pdi.getTotleCount();
	}

}
