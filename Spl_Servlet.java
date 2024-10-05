package com.sai.servlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Spl_Servlet  extends Ques_Servlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) {
	
		HttpSession session = req.getSession();
		
		ResultSet result = (ResultSet) session.getAttribute("result");
		
         try {
        	
			if(result.next() ) {
			
				 String s =result.getString("qno");
		 			int qno = Integer.parseInt(s);
		 			System.out.println(qno);
		 			if(qno < 6) {
				
				session.setAttribute("qno", result.getString("qno"));
				session.setAttribute("question", result.getString(2));
				session.setAttribute("a", result.getString(3));
				session.setAttribute("b", result.getString(4));
				session.setAttribute("c", result.getString(5));
				session.setAttribute("d", result.getString(6));
				System.out.println("hbhj");System.out.println("spli");
		 			}else {
		 				try {
							res.sendRedirect("end.html");
							return;
						} catch (IOException e) {
							e.printStackTrace();
						}
		 			}
				}
			else {
				try {
					res.sendRedirect("end.html");
					return;
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			try {
				res.sendRedirect("question.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
	}

}
