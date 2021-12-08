package com.driver;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ListServlet")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		String action = request.getServletPath();

        try {
            switch (action) {
                case "/list":
                    listDriver(request, response);
                    break;
            }
            
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
        }
	private void listDriver(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException, ServletException {
		List < Driver> listDriver = listdbUtil.selectAllDrivers();
        request.setAttribute("listDriver", listDriver);
        RequestDispatcher dispatcher = request.getRequestDispatcher("driverList.jsp");
        dispatcher.forward(request, response);
    }
}
		
	


	


