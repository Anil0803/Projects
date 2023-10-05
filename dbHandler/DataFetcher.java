package com.kodNest.dbHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import com.kodNest.product.Product;

public class DataFetcher {
	public static String fetchPassword(String uname) {
		String dbPass="";
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pass="system";
		String sql="select pass from customers where uname=?";
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, user, pass);
			PreparedStatement p=con.prepareStatement(sql);
			p.setString(1, uname);
			ResultSet rs= p.executeQuery();
			rs.next();
			dbPass=rs.getString(1);
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("login issues");
		}
		return dbPass;
	}
	
	public static List fetchUserInfo() {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pass="system";
		String sql="select uname,mail,gender,address from customers";
		List ulist=new ArrayList();
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, user, pass);
			Statement s =con.createStatement();
			ResultSet rs =s.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				ulist.add(temp);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("login issues");
		}
		return ulist;
	}
	public static List fetchProdInfo() {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pass="system";
		String sql="select pid,pname,pdesc,pprice,pimg from product";
		List plist=new ArrayList();
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, user, pass);
			Statement s =con.createStatement();
			ResultSet rs =s.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4)+":"+rs.getString(5);
				plist.add(temp);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("login issues");
		}
		return plist;
	}
	public static boolean getPassword(String mail) {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pass="system";
		String sql="select pass from customers where mail=?";
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, user, pass);
			PreparedStatement p=con.prepareStatement(sql);
			p.setString(1, mail);
			ResultSet rs=p.executeQuery();
			rs.next();
			rs.getString(1);
			return true;
		}
		catch(Exception e) {
			System.out.println("error from datafetcher");
			return false;
		}
	}
	public static Product getProductById(int pid) {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pass="system";
		String sql="select pname ,pdesc, pimg,pprice from product where pid=?";
		Product p=null;
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, user, pass);
			PreparedStatement s=con.prepareStatement(sql);
			s.setInt(1,pid);
			ResultSet rs=s.executeQuery();
			rs.next();
			String prod_Name=rs.getString(1);
			String prod_Desc=rs.getString(2);
			String prod_Image=rs.getString(3);
			int prod_Price=rs.getInt(4);
			p= new Product(pid,prod_Name,prod_Desc,prod_Image, prod_Price);
		}
		catch (Exception e) {
			System.out.println("issues in fetching product");
			e.printStackTrace();
		}
		finally {
			return p;
		}
	}
}
