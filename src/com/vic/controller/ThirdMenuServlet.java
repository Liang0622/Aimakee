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
@WebServlet("/thirdMenuServlet")
public class ThirdMenuServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		ProductCategoryService pcsi=new ProductCategoryServiceImpl();
		String parentId=req.getParameter("opr");
		
		int ptId=Integer.parseInt(parentId);
		int count=0;
		//获得三级级目录的集合
		List<ProductCategory> pcleve3s=pcsi.findByLevel(3, ptId);
		//返回JSON数据
		Gson gson=new Gson();
		String json=gson.toJson(pcleve3s);
		out.print(json);
		out.flush();
		out.close();
	}

}
