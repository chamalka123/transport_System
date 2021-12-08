<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Driver Profile</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="userStyle.css">
<style type="text/css">
		body{
		background-color: #f7f7f7;
			font-family: Hind SemiBold;
}
.main-container{
    padding: 5px;
    border: 1px solid #1F1B36;
    margin: 25px;
    border-radius: 4px;
}
/* Header/Logo Title */
.header {
  padding: 0px;
  text-align: center;
  background: #3c4370;
  color: white;
  font-size: 14px;
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
  padding: 35px;
  text-align: center;
  color: white;
}
</style>
</head>
<body>
	<div style="background-color: #2F2E2F; padding: 15px">
    <h1 class="text-center" style="color: white">WELCOME..!!!</h1>
</div>
<center>
<div class="card main-container" style="background-color: #807F80  ">
<div class="header">
  <h1>Remove / Update Details...</h1>
  
</div>
<br>
<b>
<table>
	<c:forEach var="drive" items="${driveDetails}">
	
	<c:set var="id" value="${drive.id}"/>
	<c:set var="name" value="${drive.name}"/>
	<c:set var="age" value="${drive.age}"/>
	<c:set var="email" value="${drive.email}"/>
	<c:set var="phone" value="${drive.phone}"/>	
	<c:set var="license_no" value="${drive.license_no}"/>
	<c:set var="salary" value="${drive.salary}"/>
	<c:set var="username" value="${drive.username}"/>
	<c:set var="password" value="${drive.password}"/>
	<tr>
		<td>Driver ID</td>
		<td>${drive.id}</td>
	</tr>
	<tr>
		<td>Driver Name</td>
		<td>${drive.name}</td>
	</tr>
	<tr>
		<td>Driver 	Age</td>
		<td>${drive.age}</td>
	</tr>
	<tr>
		<td>Driver Email</td>
		<td>${drive.email}</td>
	</tr>
	<tr>
		<td>Driver Phone</td>
		<td>${drive.phone}</td>
	</tr>
	<tr>
		<td>Driver License Number</td>
		<td>${drive.license_no}</td>
	</tr>
	<tr>
		<td>Driver Salary</td>
		<td>${drive.salary}</td>
	</tr>
	<tr>
		<td>Driver User Name</td>
		<td>${drive.username}</td>
	</tr>
	<tr>
		<td>Driver Password</td>
		<td>${drive.password}</td>
	</tr>
	</c:forEach>
	
</table>
</b>
<c:url value="UpdateDriver.jsp" var="driveupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="age" value="${age}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="license_no" value="${license_no}"/>
	<c:param name="salary" value="${salary}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>
</c:url>
<a href="${driveupdate}">
<br>
<br>
<button class="btn f-width h-pointer" input type= "button" name="update" value="update details">Update Details</button>
</a>
<br>
<br>
<p> OR</p>
<p><b>Do you want to remove details ?</b></p>
<br>
<c:url value="deleteDriver.jsp" var="drivedelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="age" value="${age}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="license_no" value="${license_no}" />
		<c:param name="salary" value="${salary}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${drivedelete}">
	
	<button class="btn f-width h-pointer" input type= "button" name="delete" value="delete details">Delete Details</button>
	</a>
	</center>
	<br>
	</div>
	<br>
<!-- Container (TOUR Section) -->
<div class="bg-1">
  <div class="container">
    <h3 class="text-center">YOUR DETAILS</h3>
    <p class="text-center">Lorem ipsum Lorem ipsum<br> Lorem ipsum!</p>
    
    
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="img/cabs3.jpg" alt="order" width="400" height="500">
          
          <p>Fri. 28 May 2021</p>
          <button class="btn">Today Orders</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="img/salary.jpg" alt="sal" width="400" height="300">
     
          <p>May 2021</p>
          <button class="btn">Your Salaries</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="img/ann.png" alt="announce" width="400" height="100">
      <p>Fri. 28 May 2021</p>
          <button class="btn">Announcements</button>
        </div>
      </div>
    </div>
</div>
</div>	
<br>
	<footer>
  <p> | Copyright &copy; 2021 TUKTUK.LK | </p>
</footer>
</body>
</html>