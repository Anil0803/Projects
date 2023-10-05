package com.kodNest.admin;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kodNest.dbHandler.DataInjector;

@WebServlet("/addp")
public class ProductServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		String pid=req.getParameter("prod_id");
		String pname=req.getParameter("prod_name");
		String pdesc=req.getParameter("prod_desc");
		String pprice=req.getParameter("prod_price");
		String pimg=req.getParameter("prod_img");
		DataInjector.addProd(pid, pname, pdesc, pprice, pimg);
		resp.sendRedirect("admin.jsp");
	}
}
