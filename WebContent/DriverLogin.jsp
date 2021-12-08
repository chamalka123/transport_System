<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css" title="style" />
<style>
	body{
		font-family:Hind SemiBold;
		background-color: #757575;
}
.fa {
  padding: 20px;
  font-size: 20px;
  width: 20px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}
.fa:hover {
    opacity: 0.7;
}
.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}
.fa-google {
  background: #dd4b39;
  color: white;
}
.fa-linkedin {
  background: #007bb5;
  color: white;
}
/* Style the footer */
footer {
  background-color: #2A2A2A;
  padding: 50px;
  text-align: center;
  color: white;
  /*position: absolute;*/
}
</style>
</head>
<body>
<center>
	<div style="background-color: #020202; padding: 15px">
    <h1 class="text-center" style="color: white">Log in to profile</h1>
</div>

	<br>
	<br>
	<br>
	<br>
	<div class="f-width">
	<form action = "DriverLogin" method = "post">
	  <div class="card"
             style="padding: 20px 30px; width: 500px;display: block; margin: 0px auto;background-color:  #525252">
	
	<b>User Name</b> <input class="input f-width mb-10" placeholder="Username" type="text" name="username">
	
	<br>
	<br>
	
	<b>Password</b> <input class="input f-width mb-10" placeholder="Password" type="text" name="password">
	<br>
	<br>
	
	<button class="btn f-width h-pointer" input type= "submit" name="submit" value="Login">View Details</button>
	</div>
		</form>
		</div>
		<br>
		<div class="modal-footer">
              <div class="options text-center text-md-right mt-1">
                <p>Not a driver? <a href="driverInsert.jsp" class="blue-text">Sign Up</a></p>
                <br>
                <p>Forgot <a href="#" class="blue-text">Password?</a></p>
                <br>
                <br>
          </div>
<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-linkedin"></a>
</center>
<br>
<br>
<br>
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