package com.driver;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class driverdbutil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs  = null;
	
	public static boolean validate (String username,String password) {
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from driver where username='"+username+"' and password='"+password+"'";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
	public static List<Driver> getDriver(String username){
		
		
		ArrayList<Driver> drive = new ArrayList<>();
		
		
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
		    String sql = "select * from driver where username='"+username+"'" ;		    
		    rs = stat.executeQuery(sql);
		    
		    while(rs.next()) {
		    	int id = rs.getInt(1);
		    	String name = rs.getString(2);
		    	String age = rs.getString(3);
		    	String email = rs.getString(4);
		    	String phone = rs.getString(5);
		    	String license_no = rs.getString(6);
		    	String salary = rs.getString(7);
		    	String useru = rs.getString(8);
		    	String passU = rs.getString(9);
		    	
		    	Driver c = new Driver(id, name, age, email, phone, license_no, salary, useru, passU);
		    	drive.add(c);	
		       }
		   	}
		catch(Exception e) {
			e.printStackTrace();
		}
		return drive;
	}
	
	public static boolean insertdriver(String name, String age, String email, String phone, String license_no, String salary, String username, String password) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "insert into driver values (0, '"+name+"', '"+age+"', '"+email+"', '"+phone+"', '"+license_no+"', '"+salary+"', '"+username+"', '"+password+"')";
			int rs = stat.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		

		return isSuccess;
		}
	
	public static boolean updatedriver(String id, String name, String age, String email,String phone, String license_no, String salary, String username, String password) {
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "update driver set name='"+name+"', age='"+age+"', email='"+email+"', phone='"+phone+"', license_no='"+license_no+"', salary='"+salary+"', username='"+username+"', password='"+password+"'"
					 + "where id='"+id+"'";
			int rs = stat.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
					
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static List<Driver> getDriverDetails(String Id){
		int convertedID = Integer.parseInt(Id);
		ArrayList<Driver> drive = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from driver where id='"+convertedID+"'";
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String age = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String license_no = rs.getString(6);
				String salary = rs.getString(7);
				String username = rs.getString(8);
				String password = rs.getString(9);
				
				Driver c = new Driver(id, name, age, email, phone, license_no, salary, username, password);
				drive.add(c);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return drive;
	}
	
public static boolean deleteDriver(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "delete from driver where id='"+convId+"'";
    		int r = stat.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
}