package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;

import com.google.gson.Gson;
import com.sun.corba.se.impl.orbutil.closure.Constant;
import com.vic.entity.Product;
import com.vic.entity.User;
import com.vic.service.cart.CartService;
import com.vic.util.RequestUtils;
import com.vic.util.ShoppingCart;
import com.vic.util.ShoppingCartItem;

@SuppressWarnings("serial")
@WebServlet("/shoppingCartServlet")
public class ShoppingCartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pId=req.getParameter("productId");
		String quantity=req.getParameter("amount");
		boolean flag=shoppingCart(pId,Integer.parseInt(quantity),req,resp);
		PrintWriter out=resp.getWriter();
		out.print(flag);
		out.close();
	}
	public boolean shoppingCart(String pId,Integer quantity,
			HttpServletRequest req, HttpServletResponse resp) 
					throws ServletException, IOException {
		Integer productId;
		//ObjectMapper om=new ObjectMapper();
		//om.setSerializationInclusion(Include.);//优化null的情况。不会操作
		Gson gson=new Gson();
		ShoppingCart shoppingCart=null;
		
		Cookie[] cookies=req.getCookies();
		if(null!=cookies && cookies.length>0) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("shoppingCart")) {
					//将cookie中保存的字符串转换为购物车对象
					System.out.println(cookie.getValue());
					shoppingCart=gson.fromJson(cookie.getValue(), ShoppingCart.class);
					break;
				}
			}
		}
		//cookie中没有购物车，创建购物车对象
		if(shoppingCart==null) {
			shoppingCart = new ShoppingCart();
		}
		//将当前商品追加到购物车
		if(pId!=null && quantity !=null) {
			productId=Integer.parseInt(pId);
			Product product=new Product();
			product.setId(productId);
			//添加商品到购物项
			ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
			shoppingCartItem.setProduct(product);
			//添加购物项到购物车
			shoppingCartItem.setQuantity(quantity);
			shoppingCart.addItem(shoppingCartItem);
		}
		//排序
		List<ShoppingCartItem> items=shoppingCart.getItems();
		Collections.sort(items, new Comparator<ShoppingCartItem>() {
			@Override
			public int compare(ShoppingCartItem it0,ShoppingCartItem it1) {
				return -1;
			}
		});
		//前三点，登录和没登录做的都是一样的操作，在第四点需要判断
		HttpSession session=req.getSession();
		User user=(User)session.getAttribute("user");
		if(user!=null) {
			String username=user.getUserName();
			CartService cartService=new CartService();
			//登录了
			//将购物车添加到Redis中
			cartService.insertShoppingCartToRedis(shoppingCart,username);
			//清空Cookie, 设置存活时间为0，当即销毁
			Cookie cookie=new Cookie("shoppingCart",null);
			cookie.setPath("/");
			cookie.setMaxAge(0);
			resp.addCookie(cookie);
			return true;
		}else {
			//没有登录
			//保存购物车到Cookie中
			//将对象转换成json格式
			//Writer w=new StringWriter();
			String cartjson=gson.toJson(shoppingCart);
			Cookie cookie=new Cookie("shoppingCart",cartjson);
			//设置path是可以共享Cookie
			cookie.setPath("/");
			//设置cookie的过期时间：-1 表示关闭浏览器失效，0：立即失效，>0：多少秒后失效，单位是秒
			cookie.setMaxAge(7*24*60*60);
			//Cookie写回浏览器
			resp.addCookie(cookie);
			return true;
		}
	}

}
