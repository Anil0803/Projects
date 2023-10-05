package com.kodNest.product;

import java.util.*;

public class Cart {
	public List<Product>items;
	public Cart() {
		items=new ArrayList<>();
	}
	public void addItem(Product product) {
		items.add(product);
	}
	public List<Product> getItem(){
		return items;
	}
	public void  removeItem(Product p){
		items.remove(p);
	}
	public double getTotal() {
		double total=0.0;
		for(Product p:items)
		{
			total+=p.pprice;
		}
		return total;
	}
}
