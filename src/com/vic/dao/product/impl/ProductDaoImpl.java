package com.vic.dao.product.impl;

import java.sql.SQLException;
import java.util.List;

import com.vic.dao.BaseDao;
import com.vic.dao.product.ProductDao;
import com.vic.entity.Page;
import com.vic.entity.Product;
import com.vic.util.PageResultUtil;

public class ProductDaoImpl extends BaseDao implements ProductDao {

	@Override
	public int getTotleCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Product> getAllByPageAndcate3Id(int cate3Id,Page page) {
		String sql="select * from easybuy_product where categoryLevel3Id=? limit ?,?";
		Object[] params= {cate3Id,(page.getCurrentPage()-1)*page.getPageSize(),page.getPageSize()};
		
		rs=this.executeQuery(sql, params);
		List<Product> products=PageResultUtil.eachResultSet(rs, Product.class);
		return products;
	}

	@Override
	public int getTotleCountByCate3Id(int cate3Id) {
		int resNum=0;
		String sql="select count(*) from easybuy_product where categoryLevel3Id=?";
		Object[] params= {cate3Id};
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

}
