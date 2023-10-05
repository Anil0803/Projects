package com.kodNest.customer;


import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kodNest.dbHandler.DataInjector;

@WebServlet("/for")
public class forgotServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		String mail=req.getParameter("umail");
		String password=req.getParameter("pwd");
		boolean res=Validator.validMail(mail);
		if(res) 
		{
			DataInjector.setPassword(mail,password);
			resp.sendRedirect("login.jsp");
		}
		else {
			resp.sendRedirect("forgot.jsp");
			
		}
	}
}
