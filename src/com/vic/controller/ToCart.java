package com.vic.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import com.vic.entity.User;
import com.vic.service.cart.CartService;
import com.vic.service.product.ProductService;
import com.vic.util.ShoppingCart;
import com.vic.util.ShoppingCartItem;
@SuppressWarnings("serial")
@WebServlet("/toCart")
public class ToCart extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		resp.sendRedirect(toCart(req,resp));
		
	}
	
	private CartService cartService=new CartService();
	//去购物车结算, 这里有两个地方可以直达: 1,在商品详情页 中点击加入购物车按钮  2, 直接点击购物车按钮
	public String toCart( HttpServletRequest request,
			HttpServletResponse response) throws JsonParseException, JsonMappingException, IOException{ 
		//将对象转换成json字符串/json字符串转成对象
	    //ObjectMapper om = new ObjectMapper();
	    //om.setSerializationInclusion(Include.NON_NULL);
		Gson gson=new Gson();
	    ShoppingCart buyerCart = null;
	    //1,获取Cookie中的购物车
	    Cookie[] cookies = request.getCookies();
	    if (null != cookies && cookies.length > 0) {
	        for (Cookie cookie : cookies) {
	          //
	        	if ("shoppingCart".equals(cookie.getName())) {
	                  //购物车 对象 与json字符串互转
	                buyerCart = gson.fromJson(cookie.getValue(), ShoppingCart.class);
	                break;
	            }
	        }
	    }
	    HttpSession session=request.getSession();
	    //判断是否登录
	    User user = (User)session.getAttribute("user");
	    if (null != user) {
	    	String username=user.getUserName();
	    	//登录了
	    	//2, 购物车 有东西, 则将购物车的东西保存到Redis中
	    	if (null != buyerCart) {
	    		cartService.insertShoppingCartToRedis(buyerCart, username);
	    		//清空Cookie 设置存活时间为0, 立马销毁
		    	Cookie cookie = new Cookie("shopingCart", null);
	            cookie.setPath("/");
	            cookie.setMaxAge(0);
	            response.addCookie(cookie);
	    	}
	    	//3, 取出Redis中的购物车
	    	buyerCart = cartService.selectShoppingCartFromRedis(username);
	    }else {
	    	System.out.println("用户没登陆");
	    }
	    //4, 没有 则创建购物车
	    if (null == buyerCart) {
	    	buyerCart = new ShoppingCart();
	    }
	    //5, 将购物车装满, 前面只是将skuId装进购物车, 这里还需要查出porduct详情
	    List<ShoppingCartItem> items = buyerCart.getItems();
	    if(items.size() > 0){
	    	//只有购物车中有购物项, 才可以将product相关信息加入到购物项中
	    	for (ShoppingCartItem buyerItem : items) {
	    		buyerItem.setProduct(cartService.selectProductById(buyerItem.getProduct().getId()));
	    	}
	    }
	    //5,上面已经将购物车装满了, 这里直接回显页面
		session.setAttribute("shoppingCart", buyerCart);
		for(ShoppingCartItem s : buyerCart.getItems()) {
			
			if(s==null||s.toString().trim().equals(""))
				System.out.println("没货");
			System.out.println(s);
		}
	    //跳转购物页面
		return "flow_cart.jsp";
	}
}
