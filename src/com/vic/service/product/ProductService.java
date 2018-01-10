package com.vic.service.product;

import java.util.List;

import com.vic.entity.Page;
import com.vic.entity.Product;

public interface ProductService {
	//根据三级类别id和当前页信息，查询相关记录
	List<Product> findAllByPageAndCate3Id(Page page,int cate3Id);
	//根据三级类别id查询总记录数
	int getCountByCate3Id(int cate3Id);
}
