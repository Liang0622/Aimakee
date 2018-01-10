package com.vic.dao.productcategory.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vic.dao.BaseDao;
import com.vic.dao.productcategory.ProductCategoryDao;
import com.vic.entity.ProductCategory;

public class ProductCategoryDaoImpl extends BaseDao implements ProductCategoryDao {

	@Override
	public List<ProductCategory> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductCategory> findByLevel(int type ,int parentId) {
		List<ProductCategory> productCategorys=new ArrayList<ProductCategory>();
		String sql="select id,name,iconClass from easybuy_product_category "
				+ "where parentId=? and type=?";
		Object[] params= {parentId,type};
		rs=this.executeQuery(sql,params);
		try {
			while(rs.next()) {
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String iconClass=rs.getString("iconClass");
				productCategorys.add(new ProductCategory(id, name, parentId, type, iconClass));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll();
		}
		return productCategorys;
	}

	@Override
	public ProductCategory findById(int pId) {
		ProductCategory productCategory=null;
		String sql="select name from easybuy_product_category "
				+ "where id=?";
		Object[] params= {pId};
		rs=this.executeQuery(sql,params);
		try {
			if(rs.next()) {
				productCategory=new ProductCategory();
				productCategory.setName(rs.getString(1));;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll();
		}
		return productCategory;
	}

}
