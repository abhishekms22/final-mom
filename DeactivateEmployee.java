package com.quinnox.mom.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.quinnox.mom.dao.EmployeeDAO;
import com.quinnox.mom.model.Employees;

/**
 * Servlet implementation class DeactivateEmployee
 */
@WebServlet("/DeactivateEmployee")
public class DeactivateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeactivateEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		Connection con = EmployeeDAO.getConnection();
		
		 
		 try{
			 PreparedStatement ps = con.prepareStatement("Update employees set emp_status=0 where emp_id=?");
			 System.out.println(Long.parseLong(request.getParameter("id")));
			 long empid=Long.parseLong(request.getParameter("id"));
			 ps.setLong(1,empid);
			 ps.executeUpdate();
			 System.out.println("dont shout");
		}catch(Exception e){
			System.out.println(e);
		}
		 
		 response.sendRedirect("AdminDashboard.jsp");
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}
}
