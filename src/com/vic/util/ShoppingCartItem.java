package com.vic.util;

import java.io.Serializable;

import com.vic.entity.Product;
/**
 * 购物车的元素类
 * @author Liang
 */
@SuppressWarnings("serial")
public class ShoppingCartItem implements Serializable{
	private Product product;//商品
	private Integer quantity;//商品数量
	private float cost;//单价
	//是否有货
	private Boolean isHave;
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public float getCost() {
		setCost();
		return cost;
	}
	public void setCost() {
		this.cost = product.getPrice()*quantity;
	}
	//重写Object中的比较方法
	@Override
	public boolean equals(Object obj) {
		if(obj==null||product==null) {
			return false;//如果传入的是null则返回false
		}else if(getClass()!=obj.getClass()) {
			return false;//如果不是同类的实例，则返回false
		}else if(this==obj){//比较地址
			return true;
		}else {
			ShoppingCartItem other = (ShoppingCartItem) obj;
			if(other.product==null) {
				return false;//如果购物项中的商品为空，则返回false
			}else if(product.getId()!=other.product.getId()) {
				return false;//两个购物项中的商品不同返回false
			}
		}
		return true;
		
	}
	
	@Override
	public String toString() {
		return "ShoppingCartItem [product=" + product + ", quantity=" + quantity + ", cost=" + cost + ", isHave="
				+ isHave + "]";
	}
	//重写Object中的hashCode方法，后续用到排序
	@Override
	public int hashCode() {
		final int prime=31;
		int result=1;
		result=prime*result+((product==null)?0:product.hashCode());
		return result;
	}
	public Boolean getIsHave() {
		return isHave;
	}
	public void setIsHave(Boolean isHave) {
		this.isHave = isHave;
	}
}
