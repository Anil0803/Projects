package com.kodNest.customer;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kodNest.dbHandler.DataInjector;

@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		String uname=req.getParameter("uname");
		String mail=req.getParameter("mail");
		String password=req.getParameter("pass");
		String gender=req.getParameter("gender");
		String address=req.getParameter("add");
		
		DataInjector.addCustomer(uname,mail,password,gender,address);
		resp.sendRedirect("login.jsp");
	}
}
