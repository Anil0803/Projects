package com.kodNest.product;

import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kodNest.dbHandler.DataFetcher;

@WebServlet("/remove-from-cart")
public class RemoveFromCart extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) {
		try {
		int pid=Integer.parseInt( req.getParameter("pid"));
		Product product=DataFetcher.getProductById(pid);
		HttpSession s=req.getSession();
		Cart cart=(Cart)s.getAttribute("cart");
		List<Product> items= cart.getItem();
		Product p=null;
		for(int i=0;i<items.size();i++) {
			if(product.getPpid() == items.get(i).getPpid()) {
				 p=items.get(i);
				break;
			}
		}
		cart.removeItem(p);
		resp.sendRedirect("cart.jsp");
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
