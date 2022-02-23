<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head><title>Add record</title>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
	<div class="navbar">
	<a href="/">Home</a>
	<a href="/login">Login</a>
	 <a href="/forget">Forgot/Change Password</a>
  </div><br>
<center>
<div class="signin">
<h3 align="center">signup</h3>

<form:form method="post" action="/signsub" modelAttribute="sig">
<form:input path="email" type="email" placeholder="Enter Employee email"/><br><br>
<form:input path="password" type="password" placeholder="Enter Employeepassword"/><br><br>
<form:input path="fname" placeholder="Enter Employee fname"/><br><br>
<input type="submit" value="signup"/>
</form:form>
</div>
</center>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>
</body>
</html>