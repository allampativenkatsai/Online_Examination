package com.sai.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {

	public Connection connect() {

		String url = "jdbc:mysql://localhost:3306/Online_Examination";
		String username = "root";
		String psd = "sai123";
		Connection con = null ;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection(url, username, psd);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return con;
	}
	  
		   
		
	}
   

