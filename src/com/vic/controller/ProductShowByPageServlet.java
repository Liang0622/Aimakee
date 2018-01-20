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
import com.vic.entity.Product;
import com.vic.service.product.ProductService;
import com.vic.service.product.impl.ProductServiceImpl;
import com.vic.util.Page;
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
		String curPage=req.getParameter("curPage");
		int currentPage=Integer.parseInt(curPage);//当前页码
		String cId=req.getParameter("categoryId");
		String lev=req.getParameter("level");
		List<Product> products;
		Page page=new Page();
		if(lev==null||lev.trim().equals("")) {
			//查询所有商品的记录
			int totleCount=psi.getAllProductCount();
			page.setTotleCount(totleCount);
			page.setCurrentPage(currentPage);
			page.setPageCount();
			products=psi.findAllProduct(page);
			products.get(0).setPage(page);
		}else {
			
			int categoryId=Integer.parseInt(cId);//目录id
			int level=Integer.parseInt(lev);//目录级别
			
			int totleCount=psi.getCountByCateLevelId(categoryId,level);
			page.setTotleCount(totleCount);
			page.setCurrentPage(currentPage);
			page.setPageCount();
			products=psi.findAllByPageAndCateId(page, categoryId,level);
			products.get(0).setPage(page);
		}
		Gson gson=new Gson();
		String json=gson.toJson(products);
		PrintWriter out=resp.getWriter();
		out.print(json);
		out.close();
	}
}
