package com.school;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteStudent")
public class DeleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("sid");
		
		boolean isTrue;
		
		isTrue = SchoolDBUtil.deleteCustomer(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("students.jsp");
			dis.forward(request, response);
		}else {
			List<Student> stDelete = SchoolDBUtil.getStudentDetails(id);
			request.setAttribute("stDelete", stDelete);
			
			RequestDispatcher dis = request.getRequestDispatcher("students.jsp");
			dis.forward(request, response);
		}
	}

}
