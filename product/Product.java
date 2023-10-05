package com.kodNest.product;

public class Product {
	int pid;
	String pname;
	String pdesc;
	String pimage;
	int pprice;
	public Product(int pid,String pname,String pdesc,String image,int pprice) {
		super();
		this.pid=pid;
		this.pname=pname;
		this.pdesc=pdesc;
		this.pimage=image;
		this.pprice=pprice;
	}
	public int getPpid() {
		return this.pid;
	}
	public void setPpid(int pid) {
		this.pid=pid;
	}
	public String getPname() {
		return this.pname;
	}
	public void setPname(String pname) {
		this.pname=pname;
	}
	public String getPdesc() {
		return this.pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc=pdesc;
	}

	public int getPprice() {
		return this.pprice;
	}
	public void setPprice(int pprice) {
		this.pprice=pprice;
	}
	public String getPimage() {
		return this.pimage;
	}
	public void setPimage(String pimage) {
		this.pimage=pimage;
	}

}
