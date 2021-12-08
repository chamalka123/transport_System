<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task Successful</title>
<link rel="stylesheet" type="text/css" href="style.css" title="style" />
<style>
.row {
  display: flex;
}

/* Create three equal columns that sits next to each other */
.column {
  flex: 33.33%;
  padding: 5px;
}
/* Style the footer */
footer {
  background-color: #020406;
  padding: 40px;
  text-align: center;
  color: white;
}
</style>
</head>
<body>

	<h1>Inserted Successfully!!!</h1>
<br>
<br>
<br>
<center>
<a href="<%=request.getContextPath()%>/list" class="navbar-brand"> Click here to search details about our Drivers ></a>
</center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="row">
  <div class="column">
    <img src="img/driver.jpg" alt="driver" style="width:100%" >
  </div>
  <div class="column">
    <img src="img/driver3.jpg" alt="driver3" style="width:100%" style="height:50%">
  </div>
  <div class="column">
    <img src="img/driver4.jpg" alt="driver4" style="width:100%" >
  </div>
</div>
<br>
<footer>
  <p> | Copyright &copy; 2021 TUKTUK.LK | </p>
</footer>
</body>
</html>