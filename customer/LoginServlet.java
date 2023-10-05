package com.kodNest.customer;

import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/log")
public class LoginServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		String uname=req.getParameter("uname");
		String password=req.getParameter("pass");
		boolean val=Validator.isValid(uname, password);
		
		if(val==true && uname.equals("admin")) {
			resp.sendRedirect("admin.jsp");
		}
		else if(val==true) {
			resp.sendRedirect("home.jsp");
		}
		else {
			resp.sendRedirect("login.jsp");
			System.out.println(" incorrect Login credientials");
		}
	}
}
