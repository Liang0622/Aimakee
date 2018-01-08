package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vic.entity.User;
import com.vic.service.UserService;
import com.vic.service.impl.UserServiceImpl;
import com.vic.util.Md5Util;
@SuppressWarnings("serial")
@WebServlet(value="/loginServlet")
public class LoginServlet extends HttpServlet {
	
	HttpSession session=null;
	PrintWriter out=null;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		session=req.getSession();
		out=resp.getWriter();
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		//将用户输入的用户名和密码存储到cookie中
		Cookie c1=new Cookie("username", URLEncoder.encode(username, "utf-8"));
		Cookie c2=new Cookie("password", URLEncoder.encode(password, "utf-8"));

		
		//获取session中保存的验证码
		String loginCode=session.getAttribute("loginCode")+"";
		//获取用户输入的登录验证码
		String userCode=req.getParameter("inputCode");
		if(userCode.equals(loginCode)){//如果验证码匹配
			UserService usi=new UserServiceImpl();
			User user=usi.userLoing(username);
			if(user!=null){//如果返回的用户不为空，表示用户存在
				try {
					if(Md5Util.validPassword(password, user.getPassword())) {
						session.setAttribute("user", user);
						String[] flag=req.getParameterValues("checkbox");
						//判断用户是否勾选了保存密码
						if(flag!=null){
							c1.setMaxAge(7*24*60*60);
							c2.setMaxAge(7*24*60*60);
						}else{
							c1.setMaxAge(0);
							c2.setMaxAge(0);
						}
						resp.addCookie(c1);
						resp.addCookie(c2);
						//重定向到主页面
						resp.sendRedirect("index.jsp");	
					}else {
						out.print("<script type='text/javascript'>");
						out.print("alert('密码错误，3秒后跳转至登录页面')");
						out.print("</script>");
						resp.sendRedirect("user_login.jsp");
					}
				} catch (NoSuchAlgorithmException e) {
					e.printStackTrace();
				}
				
			}else{
				out.print("<script type='text/javascript'>");
				out.print("alert('用户不存在，3秒后跳转至注册页面')");
				out.print("</script>");
				resp.sendRedirect("user_register.jsp");
			}
		}else{
			out.print("<script type='text/javascript'>");
			out.print("alert('验证码不匹配，3秒后跳转至登录页面')");
			out.print("</script>");
			resp.sendRedirect("user_login.jsp");
		}
		
	}
	
}
