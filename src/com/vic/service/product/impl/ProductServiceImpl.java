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
	public List<Product> findAllByPageAndCate3Id(Page page, int cate3Id) {
		return pdi.getAllByPageAndcate3Id(cate3Id, page);
	}

	@Override
	public int getCountByCate3Id(int cate3Id) {
		return pdi.getTotleCountByCate3Id(cate3Id);
	}
	
}
