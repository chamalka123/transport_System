package com.driver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/deleteDriver")
public class deleteDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("driveid");
		
		boolean isTrue;
		isTrue = driverdbutil.deleteDriver(id);
		if(isTrue==true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("driverInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Driver> driveDetails = driverdbutil.getDriverDetails(id);
			request.setAttribute("driveDetails", driveDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("userAcccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
