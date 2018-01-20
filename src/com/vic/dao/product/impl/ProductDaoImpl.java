package com.vic.dao.product.impl;

import java.sql.SQLException;
import java.util.List;

import com.vic.dao.BaseDao;
import com.vic.dao.product.ProductDao;
import com.vic.entity.Product;
import com.vic.util.Page;
import com.vic.util.PageResultUtil;

public class ProductDaoImpl extends BaseDao implements ProductDao {
	//根据类别名和目录级别获得总记录
	@Override
	public int getCountByCateLevelId(int categoryId, int level) {
		int resNum=0;
		String sql="select count(*) from easybuy_product where categoryLevel"+level+"Id=?";
		Object[] params= {categoryId};
		rs=this.executeQuery(sql, params);
		try {
			if(rs.next()) {
				resNum=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resNum;
	}
	//根据目录级别和类别id获得商品的集合
	@Override
	public List<Product> findAllByPageAndCateId(Page page, int categoryId, int level) {
		String sql="select * from easybuy_product where categoryLevel"+level+"Id=? limit ?,?";
		Object[] params= {categoryId,(page.getCurrentPage()-1)*page.getPageSize(),page.getPageSize()};
		rs=this.executeQuery(sql, params);
		List<Product> products=PageResultUtil.eachResultSet(rs, Product.class);
		this.closeAll();
		return products;
	}
	//获得所有商品总记录数
	@Override
	public int getTotleCount() {
		int resNum=0;
		String sql="select count(*) from easybuy_product";
		rs=this.executeQuery(sql);
		try {
			if(rs.next()) {
				resNum=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resNum;
	}
	//获得所有商品的集合
	@Override
	public List<Product> findAllProduct(Page page) {
		String sql="select * from easybuy_product limit ?,?";
		Object[] params= {(page.getCurrentPage()-1)*page.getPageSize(),page.getPageSize()};
		rs=this.executeQuery(sql, params);
		List<Product> products=PageResultUtil.eachResultSet(rs, Product.class);
		this.closeAll();
		return products;
	}
	@Override
	public Product findProductById(int id) {
		String sql="select * from easybuy_product where id=?";
		Object[] params= {id};
		rs=this.executeQuery(sql, params);
		Product product=PageResultUtil.eachOneResultSet(rs, Product.class);
		this.closeAll();
		return product;
	}
}
