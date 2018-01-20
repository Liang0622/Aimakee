package com.vic.service.product;

import java.util.List;

import com.vic.entity.Product;
import com.vic.util.Page;

public interface ProductService {
	//根据类别id和目录级别查询商品总数
	int getCountByCateLevelId(int categoryId, int level);
	//根据类别id和目录级别查询商品
	List<Product> findAllByPageAndCateId(Page page, int categoryId,int level);
	//获得所有商品的总数
	int getAllProductCount();
	//获得素有商品的集合
	List<Product> findAllProduct(Page page);
	//获得相应id的商品详情
	Product searchById(int id);
}
