package com.driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class listdbUtil {
    private static String url = "jdbc:mysql://localhost:3306/transport";
    private static String username = "root";
    private static String password = "root1234567890sasini";
	
	
	 private static final String SELECT_DRIVER_BY_ID = "select id,name,age,email,phone,license_no, salary, username, passsword from driver where id =?";
	    private static final String SELECT_ALL_DRIVERS= "select * from driver";
	    
	    public listdbUtil() {}
	    protected static Connection getConnection() {
	        Connection connection = null;
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            connection = DriverManager.getConnection(url, username, password);
	        } catch (SQLException e) {
	           
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            
	            e.printStackTrace();
	        }
	        return connection;
	    }
	    public Driver selectDriver(int id) {
	        Driver driver = null;
	        
			// Step 1: Establishing a Connection
	        try (Connection connection = getConnection();
	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_DRIVER_BY_ID);) {
	            preparedStatement.setInt(1, id);
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	                String name = rs.getString("name");
	                String age = rs.getString("age");
	                String email = rs.getString("email");
	                String phone = rs.getString("phone");
	                String license_no = rs.getString("license_no");
	                String salary = rs.getString("salary");
	                String username = rs.getString("username");
	                String password = rs.getString("password");
	                driver = new Driver(id, name, age, email, phone, license_no, salary, username, password);
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return driver;
	    }

	    public static  List < Driver > selectAllDrivers() {

	       
	        List < Driver > driver = new ArrayList < > ();
	        // Step 1: Establishing a Connection
	        
			try (Connection connection = getConnection();

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_DRIVERS);) {
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String name = rs.getString("name");
	                String age = rs.getString("age");
	                String email = rs.getString("email");
	                String phone = rs.getString("phone");
	                String license_no = rs.getString("license_no");
	                String salary = rs.getString("salary");
	                String username = rs.getString("username");
	                String password = rs.getString("password");
	                driver.add(new Driver(id, name, age, email, phone, license_no, salary, username, password));
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return driver;
	    }

	    private static void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
}
