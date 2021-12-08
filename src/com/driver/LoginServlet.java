package com.driver;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String username= request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = driverdbutil.validate(username,  password);
		if(isTrue == true) {
			List<Driver> driveDetails = driverdbutil.getDriver(username);
			request.setAttribute("driveDetails", driveDetails);
			RequestDispatcher dis = request.getRequestDispatcher("userAcccount.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Incorrect Username and Password');");
			out.println("location='DriverLogin.jsp'");
			out.println("</script>");
			
		}
	}

}