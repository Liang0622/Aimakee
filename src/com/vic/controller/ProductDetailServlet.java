package com.vic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vic.entity.Product;
import com.vic.service.product.ProductService;
import com.vic.service.product.impl.ProductServiceImpl;
@SuppressWarnings("serial")
@WebServlet("/product_detailServlet")
public class ProductDetailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductService psi=new ProductServiceImpl();
		String productId=req.getParameter("productId");
		
		Product product=psi.searchById(Integer.parseInt(productId));
		HttpSession session=req.getSession();
		session.setAttribute("product", product);
		resp.sendRedirect("product_detail.jsp");
	}

}
