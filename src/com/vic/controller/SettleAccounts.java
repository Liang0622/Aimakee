package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vic.entity.User;
import com.vic.service.cart.CartService;
import com.vic.util.ShoppingCart;
import com.vic.util.ShoppingCartItem;
@SuppressWarnings("serial")
@WebServlet("/settleAccounts")
public class SettleAccounts extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String returnFlag="";
		//1, 购物车必须有商品, 
        //取出用户名  再取出购物车
    	HttpSession session=req.getSession();
    	//判断用户是否登录，如果没有登录，返回登录页面、
    	User user=(User) session.getAttribute("user");
    	if(user==null) {
    		System.out.println("session中没有保存用户信息");
    		resp.sendRedirect("loginUserPages/user_login.jsp");
    	}else {
    		String pidArrayString=req.getParameter("pidArray");
    		String[] skuIds = pidArrayString.split(",");
    		String username=user.getUserName();
            //取出所有购物车
    		CartService cartService=new CartService();
            ShoppingCart buyerCart = cartService.selectShoppingCartFromRedisByProductIds(skuIds, username);
            List<ShoppingCartItem> items = buyerCart.getItems();
            if (items.size() > 0) {
                //购物车中有商品
                //判断所勾选的商品是否都有货, 如果有一件无货, 那么就刷新页面.
                Boolean flag = true;
                //2, 购物车中商品必须有库存 且购买大于库存数量时视为无货. 提示: 购物车原页面不动. 有货改为无货, 加红提醒.
                for (ShoppingCartItem buyerItem : items) {
                    //装满购物车的购物项, 当前购物项只有skuId这一个东西, 我们还需要购物项的数量去判断是否有货
                    buyerItem.setProduct(cartService.selectProductById(buyerItem.getProduct().getId()));
                    //校验库存
                    if (buyerItem.getQuantity() > buyerItem.getProduct().getStock()) {
                        //无货
                        buyerItem.setIsHave(false);
                        flag = false;
                    }
                    if(flag) {
                    	//3, 正常进入下一个页面
                    	resp.sendRedirect("flow_pay.jsp");
                    }else {
                        //无货, 原页面不动, 有货改成无货, 刷新页面.
                       // model.addAttribute("buyerCart", buyerCart);
                    	returnFlag="nostock";
                    }
                }
            }else {
                //购物车没有商品
                //没有商品: 1>原购物车页面刷新(购物车页面提示没有商品)
            	returnFlag="nocart";
                 
            }
           PrintWriter out=resp.getWriter(); 
           out.print(returnFlag);
           out.close();
    	}
		
    }	

}
