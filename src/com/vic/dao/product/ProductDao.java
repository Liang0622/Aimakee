package com.vic.dao.product;

import java.util.List;

import com.vic.dao.page.PageDao;
import com.vic.entity.Page;
import com.vic.entity.Product;

public interface ProductDao extends PageDao<Product>{
	//根据商品的三级类别id，获得所有
	int getTotleCountByCate3Id(int cate3Id);
	//根据用户的类别id和页面信息，查询相应的记录
	List<Product> getAllByPageAndcate3Id(int cate3Id,Page page);
}
