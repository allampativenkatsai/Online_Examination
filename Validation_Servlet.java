package com.sai.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sai.jdbc.Connector;

public class Validation_Servlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		Connector con = new Connector();
		Connection c = con.connect();
		String query = "select * from questfec where subject=? and qno=?";
		
	
		try {
			PreparedStatement pst =c.prepareStatement(query);
			System.out.println(session.getAttribute("subject")+"   "+(String) session.getAttribute("qno"));
			pst.setString(1, (String) session.getAttribute("subject"));
			pst.setString(2, (String) session.getAttribute("qno"));
			ResultSet result = pst.executeQuery();
			
			
		
			System.out.println("hii");
			System.out.println("hii");
			if(result.next()) {
			String ans = result.getString("answer");
			System.out.println(ans);
			if(req.getParameter("answer").equals(ans)) {
				String query1 = "update marks set marks=marks+1 where rollno=?";
				System.out.println("i am in ");
				PreparedStatement psmt =c.prepareStatement(query1);
				psmt.setString(1, (String) session.getAttribute("rollno"));
				System.out.println("near exc");
				psmt.execute();
				System.out.println("bhye");
				try {
					res.sendRedirect("Spl_Servlet");
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else {
				try {
					res.sendRedirect("Spl_Servlet");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
	}

}
