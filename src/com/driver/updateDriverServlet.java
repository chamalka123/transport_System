package com.driver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updateDriverServlet")
public class updateDriverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("driveid");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String license_no = request.getParameter("license_no");
		String salary = request.getParameter("salary");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		isTrue = driverdbutil.updatedriver(id, name, age, email, phone, license_no, salary, username, password);
		
		if(isTrue == true) {
			List<Driver> driveDetails = driverdbutil.getDriverDetails(id);
			request.setAttribute("driveDetails", driveDetails);
			RequestDispatcher dis = request.getRequestDispatcher("userAcccount.jsp");
			dis.forward(request, response);
			
			
		}
		else {
			List<Driver> driveDetails = driverdbutil.getDriverDetails(id);
			request.setAttribute("driveDetails", driveDetails);
			RequestDispatcher dis2 = request.getRequestDispatcher("userAcccount.jsp");
			dis2.forward(request, response);
		
		}
	}

	}

