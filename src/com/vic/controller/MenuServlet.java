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

import com.vic.entity.ProductCategory;
import com.vic.service.productcategory.ProductCategoryService;
import com.vic.service.productcategory.mpl.ProductCategoryServiceImpl;
@SuppressWarnings("serial")
@WebServlet("/menuServlet")
public class MenuServlet extends HttpServlet {
	ProductCategoryService pcsi=new ProductCategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StringBuffer levelHtml=new StringBuffer();
		int count=0;
		//获得一级目录的集合
		List<ProductCategory> pcleve1s=pcsi.findByLevel(1, 0);
		//遍历一级目录
		Iterator<ProductCategory> it1s=pcleve1s.iterator();
		while(it1s.hasNext()) {
			count++;
			ProductCategory pcleve1=it1s.next();
			String pcleve1Name=pcleve1.getName();
			int pcleve1Id=pcleve1.getId();
			levelHtml.append("<li id='foucs"+pcleve1Id+"' onmouseenter='view_menu("+pcleve1Id+")' onmouseleave='hide_menu("+pcleve1Id+")' >"
					+ "<div><a href='product.jsp'>"+pcleve1Name+"<b class='a_icon1'></b></a></span></div><ul id='view_ul"+pcleve1Id+"'></ul></li>");
		}
		PrintWriter out=resp.getWriter();
		out.print(levelHtml.toString());
		out.flush();
		out.close();
	}
	
}




