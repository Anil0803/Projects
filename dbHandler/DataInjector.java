package com.kodNest.dbHandler;

import java.sql.*;

public class DataInjector {

	public static void addCustomer(String uname,String mail,String password,String gender,String address) {
		try {	
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pass="system";
		String sql="insert into customers values(?,?,?,?,?)";
		Class.forName(driver);
		Connection con=DriverManager.getConnection(url, user, pass);
		PreparedStatement p=con.prepareStatement(sql);
		p.setString(1, uname);
		p.setString(2, mail);
		p.setString(3, password);
		p.setString(4, gender);
		p.setString(5, address);
		p.executeUpdate();
		System.out.println("success");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("failed");
		}
	}
		public static void addProd(String pid,String pname,String pdesc, String pprice, String pimg ) {
			try {	
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="system";
			String pass="system";
			String sql="insert into product values(?,?,?,?,?)";
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, user, pass);
			PreparedStatement p=con.prepareStatement(sql);
			p.setString(1, pid);
			p.setString(2, pname);
			p.setString(3, pdesc);
			p.setString(4, pprice);
			p.setString(5, pimg);
			p.executeUpdate();
			System.out.println("success");
			}
			catch(Exception e)
			{
				e.printStackTrace();
				System.out.println("failed");
			}
		
	}
		public static void setPassword(String mail,String password) {
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String user="system";
			String pass="system";
			String sql="update customers set pass=? where mail=?";
			try {
				Class.forName(driver);
				Connection con=DriverManager.getConnection(url, user, pass);
				PreparedStatement p=con.prepareStatement(sql);
				p.setString(1, password);
				p.setString(2, mail);
				p.executeUpdate();
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		}
}
