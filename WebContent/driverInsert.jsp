<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css" title="style" />
<style>
	body {
	background-color: #212F3D ;
    font-family: 'Roboto', sans-serif;
}
.fa {
  padding: 20px;
  font-size: 10px;
  width: 10px;
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
<div style="background-color: #030303  ; padding: 15px">
    <h1 class="text-center" style="color: white">Insert Your Details!!!</h1>
</div>
<div style="background-image: url('img/cabs2.jpg');  background-repeat: no-repeat;background-attachment: fixed;  
  background-size: 100% 100%;">
<br>
<br>
<br>
<div class="f-width">
	<form action = "Insert" method="post">
	<div class="card"
         style="padding: 20px 30px; width: 600px;display: block; margin: 0px auto;background-color: #515A5A ">
         <b>
	<div>Name <input type = "text" size = "55" maxlength ="100" name = "name"></div>
	<br>
	<div>Age <input type = "text" size = "55" maxlength ="20" name = "age" required></div>
	<br>
	<div>Email <input type = "text" size = "55" maxlength ="100" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name = "email" required></div>
	<br>
	<div>Phone Number <input type = "text" size = "55" maxlength ="10"  name = "phone"></div>
	<br>
	<div>License Number <input type = "text" size = "55" maxlength ="20" name = "license_no"></div>
	<br>
	<div>Salary <input type = "text" size = "55" maxlength ="20" name = "salary"></div>
	<br>
	<div>User name <input type = "text" size = "55" maxlength ="100" name = "username"></div>
	<br>
	<div>Password <input type = "password" size = "55"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" name = "password"></div></b>
	<br>
	<br>
	<button class="btn f-width h-pointer" input type= "submit" name="submit" value="Create New Profile">Create New Profile</button>
	<br>
	<br>
	<div class="modal-footer">
              <div class="options text-right">
                <p class="pt-1">Already have an account? <a href="DriverLogin.jsp" class="blue-text">Log In</a></p>
              </div>
              </div>
	</form>
	</div>
	<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-linkedin"></a>
	</center>
</div>
<br>
<br>
</div>
<div class="flex-container">
  <div class="box"><h2><b>Need a car to make money?</b></h2> No car? No problem. If you want to become a driver using TukTuk but 
  need a vehicle, check out the selection from our vehicle partners. You can find an affordable car by the hour, week, or longer. These vehicles come with insurance, unlimited mileage, basic maintenance, and more. Options and lowest available rates vary by city.</div>
  <div class="box"><h2><b>An alternative to traditional driving jobs.</b></h2> Driving with TukTuk offers a flexible earning 
  opportunity. It’s a great alternative to full-time driver jobs, part-time driver jobs, or other part-time gigs, temporary jobs, or seasonal employment. Or maybe you’re already a ride share driver and want to supplement your income by becoming a driver using the TukTuk platform.
Drivers who use TukTuk come from all backgrounds and industries, setting their own schedule to make work fit into their lives, not the other way around..</div>
 <div class="box"> <h2><b>Set your own schedule</b></h2>Some driving opportunities can mean long hours and rigid schedules. If you become a driver using TukTuk, you decide when and how often you drive.Only drive when it works for you. There’s no office or boss. That means you’ll always start and stop on your time—because with the TukTuk app, you’re in charge.</div>
</div>
</div>
<br>
<!-- footer -->
<footer>
  <p> | Copyright &copy; 2021 TUKTUK.LK | </p>
</footer>

</body>
</html>