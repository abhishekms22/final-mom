package com.quinnox.mom.controller;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.quinnox.mom.dao.LoginDAO;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String email = request.getParameter("u");
		String pass = request.getParameter("p");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		
		
		if (LoginDAO.validate(email, pass)) {
			HttpSession session1 = request.getSession(true);
			int id = LoginDAO.getEmpid(email, pass);
			String empdesg = LoginDAO.getEmpdesg(email, pass);
			System.out.println(empdesg);
			
			if((empdesg.equals("Admin"))||(empdesg.equals("admin"))){
			session1.setAttribute("emp_email", email);
			session1.setAttribute("id", id);
			
//			System.out.println(id);
			
			RequestDispatcher rd = request.getRequestDispatcher("AdminDashboard.jsp");
		rd.include(request, response);
			System.out.println("login successfull as a admin");
			}
			else {
				session1.setAttribute("emp_email", email);
			session1.setAttribute("id", id);
			
//			System.out.println(id);
			
			RequestDispatcher rd = request.getRequestDispatcher("EmployeeDashboard.jsp");
		rd.include(request, response);
			System.out.println("login successfull as a Employee");
			}
			
		} else {
			
			out.print("Sorry username or password error");
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
