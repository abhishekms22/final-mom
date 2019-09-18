package com.quinnox.mom.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quinnox.mom.dao.EmployeeDAO;
import com.quinnox.mom.model.Employees;

/**
 * Servlet implementation class EditEmployee
 */
@WebServlet("/EditEmployee")
public class EditEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();  
        
        
	String sid = request.getParameter("id");	 
      long id=Long.parseLong(sid);  
		String name=request.getParameter("name");
      String email=request.getParameter("email");  
      String password=request.getParameter("password");  
      String desgn=request.getParameter("desgn");  
      String Dept_id=request.getParameter("deptid");
      int dept_id = Integer.parseInt(Dept_id);
//      String emp_stas=request.getParameter("status");
//      int emp_status = Integer.parseInt(emp_stas);
      
     
//      SimpleDateFormat formater = new SimpleDateFormat("ddMMyyyy");
//      String date= formater.format(hire_date);
      
      Employees e = new Employees();  
      
      e.setEmp_id(id);
      e.setEmp_name(name); 
      e.setEmp_email(email);  
      e.setEmp_pass(password);  
      e.setEmp_desgn(desgn);
      e.setDept_id(dept_id);
//      e.setEmp_status(emp_status);
      System.out.println(e.getEmp_name());
      System.out.println("Hello");
      
        
      int status=EmployeeDAO.updateEmployee(e);
      System.out.println(status);
      System.out.println(status);
      if(status>0){  
          response.sendRedirect("AdminDashboard.jsp");  
      }else{  
          out.println("Sorry! unable to update record");  
      }  
        
      out.close(); 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
