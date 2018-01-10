package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.vic.entity.Page;
import com.vic.entity.Product;
import com.vic.service.product.ProductService;
import com.vic.service.product.impl.ProductServiceImpl;
@SuppressWarnings("serial")
@WebServlet("/productShowByPageServlet")
public class ProductShowByPageServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductService psi=new ProductServiceImpl();
		String curPage=req.getParameter("currentPage");
		int currentPage=Integer.parseInt(curPage);
		String opr1=req.getParameter("opr1");
		String opr2=req.getParameter("opr2");
		String opr3=req.getParameter("opr3");
		if(opr1!=null) {
			
		}else if(opr2!=null) {
			
		}else if(opr3!=null) {
			int cate3Id=Integer.parseInt(opr3);
			Page page=new Page();
			int totleCount=psi.getCountByCate3Id(cate3Id);
			page.setTotleCount(totleCount);
			page.setCurrentPage(currentPage);
			List<Product> products=psi.findAllByPageAndCate3Id(page, cate3Id);
			Gson gson=new Gson();
			String json=gson.toJson(products);
			System.out.println(json);
			PrintWriter out=resp.getWriter();
			out.print(json);
			out.close();
		}
	}

}
