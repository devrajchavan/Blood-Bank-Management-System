package com.DBConnection;

import java.sql.*;



public class ConnectionProvider {
	
	public static Connection getCon()
	{
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/bloodbank";
			String username = "root";
			String password = "root";
			Connection con = DriverManager.getConnection(url, username, password);
			
			return con;
			
		}
		catch(Exception e){
			System.out.println(e);
			return null;
		}
		
	}
	
}
