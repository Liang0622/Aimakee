package com.vic.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
/**
 * 购物车
 * @author Liang
 */
@SuppressWarnings("serial")
public class ShoppingCart implements Serializable{
	//商品的结果集
	private List<ShoppingCartItem> items=new ArrayList<ShoppingCartItem>();
	
	private double totleCost;
	//添加商品到购物车
	public void addItem(ShoppingCartItem item) {
		//判断购物车中是否已存在此商品
		if(items.contains(item)) {
			//追加数量
			for (ShoppingCartItem shoppingCartItem : items) {
				if(shoppingCartItem.equals(item)) {
					shoppingCartItem.setQuantity(item.getQuantity()+shoppingCartItem.getQuantity());
				}
			}
		}else {
			items.add(item);
		}
	}
	
	//商品数量
	public Integer getProductAmount() {
		Integer result=0;
		//计算
		for (ShoppingCartItem shoppingCartItem: items) {
			result += shoppingCartItem.getQuantity();
		}
		return result;
		
	}
	//商品金额
	public Float getProductPrice() {
		Float result=0f;
		for (ShoppingCartItem shoppingCartItem: items) {
			result += shoppingCartItem.getQuantity()*
					shoppingCartItem.getProduct().getPrice();
		}
		return result;
	}
	public List<ShoppingCartItem> getItems() {
		return items;
	}
	public void setItems(List<ShoppingCartItem> items) {
		this.items = items;
	}

	public double getTotleCost() {
		setTotleCost();
		return totleCost;
	}

	private void setTotleCost() {
		double sum=0;
		for (ShoppingCartItem shoppingCartItem : items) {
			sum=sum+shoppingCartItem.getCost();
		}
		this.totleCost = sum;
	}
}
