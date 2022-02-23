<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<title>Add record</title>
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
<h3 align="center">Login</h3>
<form:form method="post" action="/loginsub" modelAttribute="log">
<form:input path="email" type="email" placeholder="Enter Employee mail"/><br><br>
<form:input path="password" type="password" placeholder="Enter Employee pass"/><br><br>
<input type="submit" value="login"/>
</form:form>
</div>
<center>
</body>
</html>