package com.sai.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sai.jdbc.Connector;

public class Register_Servlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) 
	{
	String email =	req.getParameter("email");
		if(req.getParameter("password").equals(req.getParameter("cpassword")))
		{			{
				
			
		String url = "jdbc:mysql://localhost:3306/Online_Examination";
		String username = "root";
		String psd = "sai123";
		PreparedStatement pst = null;
		Connector con = new Connector();
		String query = "insert into student(name,email,password,phno_num) values(?,?,?,?)";

		try {
            
			Connection c = con.connect();
			pst = c.prepareStatement(query);
			pst.setString(1, req.getParameter("name"));
			pst.setString(2, req.getParameter("email"));
			pst.setString(3, req.getParameter("password"));
			pst.setString(4, req.getParameter("phno_num"));
			pst.execute();
		  
			res.sendRedirect("login.html");
		

		} catch (SQLException e) {
			e.printStackTrace();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		
		}
			
		}
		else {
			try {
				res.sendRedirect("register.html");
			} catch (IOException e) {
			
				e.printStackTrace();
			}
		}
	}
}
