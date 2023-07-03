package com.school;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String grade = request.getParameter("grade");
		
		boolean isTrue;
		
		isTrue = SchoolDBUtil.insertStudent(name, address, grade);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("students.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("addStudents.jsp");
			dis.forward(request, response);
		}
	}

}
