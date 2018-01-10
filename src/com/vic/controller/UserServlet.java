package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vic.entity.User;
@SuppressWarnings("serial")
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		User user=(User) session.getAttribute("user");
		String opr=req.getParameter("opr");
		switch(opr) {
		case "user_icon1":
			req.getRequestDispatcher("loginUserPages/user_welcome.jsp").forward(req, resp);
			break;
		case "user_icon2":
			req.getRequestDispatcher("loginUserPages/user_order.jsp").forward(req, resp);
			break;
		case "user_icon3":
			req.getRequestDispatcher("loginUserPages/user_credit.jsp").forward(req, resp);
			break;
		case "user_icon4":
			req.getRequestDispatcher("loginUserPages/user_address.jsp").forward(req, resp);
			break;
		case "user_icon5":
			req.getRequestDispatcher("loginUserPages/user_info.jsp").forward(req, resp);
			break;
		case "user_icon6":
			req.getRequestDispatcher("loginUserPages/user_album.jsp").forward(req, resp);
			break;
		case "user_icon7":
			req.getRequestDispatcher("loginUserPages/user_recommend.jsp").forward(req, resp);
			break;
		case "user_icon8":
			req.getRequestDispatcher("loginUserPages/user_comment.jsp").forward(req, resp);
			break;
		case "user_icon9":
			req.getRequestDispatcher("loginUserPages/user_message.jsp").forward(req, resp);
			break;
		}
	}
	
	
}
