package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vic.service.UserService;
import com.vic.service.impl.UserServiceImpl;
@SuppressWarnings("serial")
@WebServlet("/hasUserServlet")
public class UserNameServlet extends HttpServlet {
	
	UserService usi=new UserServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String preName=req.getParameter("username");
		 boolean flag=usi.userNameOk(preName);
		 PrintWriter out=resp.getWriter();
		 out.print(flag);
		 out.flush();
		 out.close();
	}
	
}
