package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(value="/codeServlet")
public class CodeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//获得一个4位的随机数
		Random rand=new Random();
		String loginCode=rand.nextInt(9000)+1000+"";
		HttpSession session=req.getSession();
		//将验证码添加到session作用域
		session.setAttribute("loginCode", loginCode);
		//向前台返回数据
		resp.setContentType("text/html:character=UTF-8");
		PrintWriter out=resp.getWriter();
		out.print(loginCode);
		out.flush();
		out.close();
	}
	
}
