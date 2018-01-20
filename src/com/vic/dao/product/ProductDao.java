package com.vic.dao.product;

import java.util.List;

import com.vic.dao.page.PageDao;
import com.vic.entity.Product;
import com.vic.util.Page;

public interface ProductDao extends PageDao<Product>{
	//根据类别名和目录级别获得总记录
	int getCountByCateLevelId(int categoryId, int level);
	//根据用户的类别id和页面信息，查询相应的记录
	List<Product> findAllByPageAndCateId(Page page, int categoryId, int level);
	//获得所有商品的集合
	List<Product> findAllProduct(Page page);
	//根据id获得商品详情
	Product findProductById(int id);
}
