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
@WebServlet("/viewMenuServlet")
public class ViewMenuServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		ProductCategoryService pcsi=new ProductCategoryServiceImpl();
		String parentId=req.getParameter("opr");
		String pcId=req.getParameter("pcId");
		if(parentId!=null) {
			int ptId=Integer.parseInt(parentId);
			int count=0;
			//获得二级目录的集合
			List<ProductCategory> pcleve2s=pcsi.findByLevel(2, ptId);
			//遍历二级目录
			//Gson gson=new Gson();
			//String view_ul_json=gson.toJson(pcleve2s);
			StringBuffer pc2Html=new StringBuffer();
			Iterator<ProductCategory> items=pcleve2s.iterator();
			while(items.hasNext()) {
				ProductCategory pc=items.next();
				pc2Html.append("<li><a href='product.jsp?pcId="+pc.getId()+"' >"+pc.getName()+"<b class='a_icon2'></b></a></li>");
			}
		
			out.print(pc2Html.toString());
			out.flush();
			out.close();
		}else if(pcId!=null) {
			String pcName=pcsi.findNameById(Integer.parseInt(pcId));
			out.print(pcName);
			out.close();
		}
	}
	
}
