package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vic.util.SendMs;
@SuppressWarnings("serial")
@WebServlet(value="/phoneServlet")
public class PhoneServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String mobilePhone=req.getParameter("mobilePhone");
		boolean send=false;
		int sendCode=SendMs.send(mobilePhone);
		HttpSession session=req.getSession();
		//设置这个session的失效时间
		session.setMaxInactiveInterval(30*60);
		if(sendCode!=0){
			//将发送的短信保存到session中
			session.setAttribute("sendCode", sendCode);
			send=true;
		}else{
			send=false;
		}
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out=resp.getWriter();
		out.print(send);
		out.flush();
		out.close();
	
	}
	
}
