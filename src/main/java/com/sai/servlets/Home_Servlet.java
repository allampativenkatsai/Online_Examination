package com.sai.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sai.jdbc.Connector;

public class Home_Servlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		Connector con = new Connector();
		Connection c = con.connect();
		String query = "select * from subjects where year=?";
		HttpSession session = req.getSession();
		String rollno = (String) session.getAttribute("rollno");
		 String temp = "";
		if(rollno!=null) {
	    temp = rollno.substring(0,2);
		}
	    int val = Integer.valueOf(temp);
		
	    int year = 24 - val ;
		try {
			PreparedStatement pst =c.prepareStatement(query);
			pst.setInt(1, year);
			ResultSet result = pst.executeQuery();
			result .next();
			session.setAttribute("sem", result.getString(2));
			session.setAttribute("sub1", result.getString(3));
			session.setAttribute("sub2", result.getString(4));
			session.setAttribute("sub3", result.getString(5));
			session.setAttribute("sub4", result.getString(6));
			session.setAttribute("sub5", result.getString(7));
			session.setAttribute("sub6", result.getString(8));
			res.sendRedirect("home.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
