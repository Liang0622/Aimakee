package com.vic.service.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.vic.dao.product.ProductDao;
import com.vic.dao.product.impl.ProductDaoImpl;
import com.vic.entity.Product;
import com.vic.util.RedisSingle;
import com.vic.util.ShoppingCart;
import com.vic.util.ShoppingCartItem;

import redis.clients.jedis.Jedis;


public class CartService {
	
	Jedis jedis;
	
	private void getJedis() {
		jedis=RedisSingle.INSTANCE.getInstance();
	}
	//保存购物车到Redis中
	public void insertShoppingCartToRedis(ShoppingCart shoppingCart,String username) {
		List<ShoppingCartItem> items = shoppingCart.getItems();
		if(items.size()>0) {
			//redis中保存的是product为key ，quantity为value的Map集合
			Map<String,String> hash=new HashMap<String,String>();
			getJedis();
			for(ShoppingCartItem item:items) {
				//判断是否有同款
				if(jedis.hexists("buyerCart:"+username,String.valueOf(item.getProduct().getId()))) {
					jedis.hincrBy("buyerCart:"+username,String.valueOf(item.getProduct().getId()),item.getQuantity());
				}else {
					hash.put(String.valueOf(item.getProduct().getId()), String.valueOf(item.getQuantity()));
				}
			}
			
			if(hash.size()>0) {
				jedis.hmset("buyerCart:"+username,hash);
			}
		}
		if(jedis!=null) {
			RedisSingle.INSTANCE.closeInstance(jedis);
		}
	}
	
	 //取出Redis中购物车
	 public ShoppingCart selectShoppingCartFromRedis(String username){
		 ShoppingCart buyerCart = new ShoppingCart();
		 getJedis();
	     //获取所有商品, redis中保存的是skuId 为key , amount 为value的Map集合
	     Map<String, String> hgetAll = jedis.hgetAll("buyerCart:"+username);
	     Set<Entry<String, String>> entrySet = hgetAll.entrySet();
	     for (Entry<String, String> entry : entrySet) {
	         //entry.getKey(): skuId
	         Product sku = new Product();
	         sku.setId(Integer.parseInt(entry.getKey()));
	         ShoppingCartItem buyerItem = new ShoppingCartItem();
	         buyerItem.setProduct(sku);
	         //entry.getValue(): amount
	         buyerItem.setQuantity(Integer.parseInt(entry.getValue()));
	         //添加到购物车中
	         buyerCart.addItem(buyerItem);
	     }
	     if(jedis!=null) {
	 		RedisSingle.INSTANCE.closeInstance(jedis);
	 	}
	     return buyerCart;
	 }

	public ShoppingCart selectShoppingCartFromRedisByProductIds(String[] skuIds, String username) {
		ShoppingCart buyerCart = new ShoppingCart();
		getJedis();
		//获取所有商品, redis中保存的是skuId 为key , amount 为value的Map集合
		Map<String, String> hgetAll = jedis.hgetAll("buyerCart:"+username);
		if (null != hgetAll && hgetAll.size() > 0) {
		    Set<Entry<String, String>> entrySet = hgetAll.entrySet();
		    for (Entry<String, String> entry : entrySet) {
		        for (String skuId : skuIds) {
		            if (skuId.equals(entry.getKey())) {
		                //entry.getKey(): skuId
		                Product sku = new Product();
		                sku.setId(Integer.parseInt(entry.getKey()));
		                ShoppingCartItem buyerItem = new ShoppingCartItem();
		                buyerItem.setProduct(sku);
		                //entry.getValue(): amount
		                buyerItem.setQuantity(Integer.parseInt(entry.getValue()));
		                //添加到购物车中
		                buyerCart.addItem(buyerItem);
		            }
		        }
		    }
		}
		if(jedis!=null) {
		RedisSingle.INSTANCE.closeInstance(jedis);
		}
		return buyerCart;

	}

	public Product selectProductById(int id) {
		ProductDao ndi=new  ProductDaoImpl();
		return ndi.findProductById(id);
	}
	
}
