<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<div class="navbar">
	<a href="/">Home</a>
	<a href="/signup">Sign Up</a>
	 <a href="/forget">Forgot/Change Password</a>
  </div>
<br>
<br>
<center>
<div class="signin">
<h3 align="center">Forgot/changePassword</h3>
<form method="post" action="/change">
     <input type="email" name ="email" placeholder="Enter your mail"/><br><br>
     <input type="password" name ="password" placeholder="Enter New Password"/><br><br>
     <input type="submit" value="change"/>
     </form>
     </div>
</center>
</body>
</html>