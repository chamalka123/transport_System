<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Drivers</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
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
<header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #5c5c5c">
                    <div>
                       <a href="<%=request.getContextPath()%>/list" class="navbar-brand"> Details about Drivers</a>
                    </div>
</nav>
</header>
<br>
            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Details of our Drivers</h3>                    
                    <hr>
                   <br> 
                    <br>
                    <table class="table table-bordered">
	
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Age</th>
                                <th>Email</th>
                                <th>Phone Number</th>
                                <th>License Number</th>
                               <th>Salary</th>
                               <th>User Name</th>
                               <th>Password</th>
                              
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="driver" items="${listDriver}">
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
                                    <td>
                                        <c:out value="${driver.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${driver.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${driver.age}" />
                                    </td>
                                    <td>
                                        <c:out value="${driver.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${driver.phone}" />
                                    </td>
                                    <td>
                                        <c:out value="${driver.license_no}" />
                                    </td>
                                    <td>
                                        <c:out value="${driver.salary}" />
                                    </td>
                                    <td>
                                        <c:out value="${driver.username}" />
                                    </td>
                                    <td>
                                        <c:out value="${driver.password}" />
                                    </td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
<footer>
  <p> | Copyright &copy; 2021 TUKTUK.LK | </p>
</footer>
</body>
</html>