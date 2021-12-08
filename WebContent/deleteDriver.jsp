<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<style type="text/css">
	
		body{
		background-color: #50495B ;
			font-family: Hind SemiBold;
		}
.main-container{
    padding: 5px;
    border: 1px solid #1F1B36;
    margin: 25px;
    border-radius: 4px;
}		
table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
}
table td, table th {
  border: 1px solid #eee;
  padding: 6px;
}
table tr:nth-child(even){background-color: #f2f2f2;}
table tr:hover {background-color: #ddd;}
table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
.btn {
    font-size: 20px;
    padding: 8px;
    background-color: #336699;
    border-radius: 4px;
    color: white;
    border: none;
}
/* Style the footer */
footer {
  background-color: #020406;
  padding: 10px;
  text-align: center;
  color: white;
}
</style>
</head>
<body>
<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String license_no = request.getParameter("license_no");
		String salary = request.getParameter("salary");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	<center>
		<div style="background-color: #412b56; padding: 10px">
    <h1 class="text-center" style="color: white">Delete Profile</h1>
</div>
	<br>
	<div class="card main-container" style="background-color: #949393">
	<br>
	<form action="delete" method="post">
	<b>
	<table>
		<tr>
			<td>Driver ID</td>
			<td><input type="text" name="driveid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
			<td>Age</td>
			<td><input type="text" name="age" value="<%= age %>" readonly></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>" readonly></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	</tr>
	<tr>
			<td>License Number</td>
			<td><input type="text" name="license_no" value="<%=license_no %>" readonly></td>
		</tr>
		<tr>
			<td>Salary</td>
			<td><input type="text" name="salry" value="<%= salary %>" readonly></td>
		</tr>
	<tr>
		<td>User Name</td>
		<td><input type="text" name="uname" value="<%= userName %>" readonly></td>
	</tr>		
	</table>
	</b>
	<br>
	<button class="btn f-width h-pointer"  input type= "submit" name="submit" value="delete details">Remove Details</button>
	</form>
</center>
</div>
<br>
<br>
<footer>
  <p> | Copyright &copy; 2021 TUKTUK.LK | </p>
</footer>
</body>
</html>