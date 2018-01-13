package com.vic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.vic.entity.ProductCategory;
import com.vic.service.productcategory.ProductCategoryService;
import com.vic.service.productcategory.mpl.ProductCategoryServiceImpl;
@SuppressWarnings("serial")
@WebServlet("/proMenuServlet")
public class ProMenuServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		ProductCategoryService pcsi=new ProductCategoryServiceImpl();
		
		String cId=req.getParameter("categoryId");
		String lev=req.getParameter("level");
		
		int cateId=Integer.parseInt(cId);
		int level=Integer.parseInt(lev);
		//获相应目录的集合
		List<ProductCategory> procateList=pcsi.findByLevel(level, cateId);
		//返回JSON数据
		Gson gson=new Gson();
		String json=gson.toJson(procateList);
		out.print(json);
		out.flush();
		out.close();
	}

}
