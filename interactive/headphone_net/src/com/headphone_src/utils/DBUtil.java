package com.headphone_src.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	 Connection connection;
	 String url="jdbc:mysql://localhost:3306/headphone?characterEncoding=utf-8";
	 String user="root";
	 String password="novell";
	
	public Connection getConn()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	public void closeConn()
	{
		try {
			if(connection!=null)
			{
				connection.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	

}
