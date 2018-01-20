package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vic.entity.User;
import com.vic.util.RedisSingle;

import redis.clients.jedis.Jedis;
@WebServlet("/cartControlServlet")
public class CartControlServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		boolean flag=false;
		String control=req.getParameter("control");
		System.out.println("control====>"+control);
		if(control.equals("clear")) {
			//判断用户是否登录
			HttpSession session=req.getSession();
			User user=(User) session.getAttribute("user");
			if(user==null) {//用户没有登录，清空cookie中的购物车
				System.out.println("用户为空");
				Cookie cookie=new Cookie("shoppingCart",null);
				cookie.setPath("/");
				cookie.setMaxAge(0);
				resp.addCookie(cookie);
				flag=true;
			}else {//用户登录了，清空redis缓存中的购物车
				System.out.println("用户不为空");
				String username=user.getUserName();
				Jedis jedis=RedisSingle.INSTANCE.getInstance();
				jedis.del("buyerCart:"+username);
				RedisSingle.INSTANCE.closeInstance(jedis);
				flag=true;
			}
		}
		PrintWriter out=resp.getWriter();
		out.println(flag);
		out.close();
	}
	
}
