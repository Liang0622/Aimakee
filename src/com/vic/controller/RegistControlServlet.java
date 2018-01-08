package com.vic.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vic.entity.User;
import com.vic.service.UserService;
import com.vic.service.impl.UserServiceImpl;
import com.vic.util.Md5Util;
@SuppressWarnings("serial")
@WebServlet(value="/user.php")
public class RegistControlServlet extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String sendCode=req.getSession().getAttribute("sendCode")+"";
		System.out.println(sendCode);
		
		String code=req.getParameter("phoneCode");
		System.out.println(code);
		//实例化一个用户
		User user=new User();
		
		user.setUserName(req.getParameter("username"));//添加用户名
		user.setUserEmail(req.getParameter("email"));//添加用户邮箱
		user.setPassword(req.getParameter("password"));//添加用户密码
		user.setUserQQ(req.getParameter("userQQ"));//用户QQ号
		user.setMobilePhone(req.getParameter("mobilePhone"));//手机
		user.setPasswordQuestion(req.getParameter("passwordQuestion"));//密码提示问题
		try {
			user.setPasswordAnswer(Md5Util.getEncryptedPwd(req.getParameter("passwordAnswer")));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}//密码问题答案
		
		UserService usi=new UserServiceImpl();
		
		if(sendCode.equals(code)){
			if(usi.addUser(user)){
				System.out.println("注册成功！");
				resp.sendRedirect("user_login.jsp");
			}else{
				System.out.println("注册失败！");
				resp.sendRedirect("user_register.jsp");
			}
		}else{
			System.out.println("验证码不匹配！");
			resp.sendRedirect("user_register.jsp");
		}
		
	}

}
