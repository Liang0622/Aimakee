package com.vic.dao.product;

import java.util.List;

import com.vic.dao.page.PageDao;
import com.vic.entity.Page;
import com.vic.entity.Product;

public interface ProductDao extends PageDao<Product>{
	//根据类别名和目录级别获得总记录
	int getCountByCateLevelId(int categoryId, int level);
	//根据用户的类别id和页面信息，查询相应的记录
	List<Product> findAllByPageAndCateId(Page page, int categoryId, int level);
	//获得所有商品的集合
	List<Product> findAllProduct(Page page);
}
