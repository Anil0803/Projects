package com.kodNest.product;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kodNest.dbHandler.DataFetcher;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		int pid=Integer.parseInt(req.getParameter("prod_Id"));
		Product product=DataFetcher.getProductById(pid);
		HttpSession sess= req.getSession(true);
		Cart cart=(Cart)sess.getAttribute("cart");
		if(cart==null) {
			 cart = new Cart();
			 sess.setAttribute("cart",cart);
		}
		else {
			cart.addItem(product);
			resp.sendRedirect("home.jsp");
		}
	}
}
