<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<title>Add record</title>
<link rel="stylesheet" href="/resources/css/delete.css">
</head>
<body>
  <div class="navbar">
  <a href="/logout">Logout</a>
	<a href="/addpol">Add Up</a>
        <a href="/viewpol">HigherUp's</a>
        <a href="/viewall">Users</a>
        <a href="/delete">Delete</a>
        <a href="/adminhome">Home</a>
  </div>
<br>
<br>

<!-- <center>
<div class="signin">
<h3 align="center">Add Politician</h3>
<form:form method="post" action="/adp" modelAttribute="ap">
<form:input path="email" type="email" placeholder="Enter politician mail"/><br><br>
<form:input path="password" type="password" placeholder="Enter politician pass"/><br><br>
<form:input path="fullname" type="text" placeholder="Enter politician fullname"/><br><br>
<form:input path="state" type="text" placeholder="Enter politician state"/><br><br>
<form:input path="location" type="text" placeholder="Enter politician location"/><br><br>

<input type="submit" value="Add"/>
</form:form>
</div>
<center> -->


<div class="login-box">
    <h2>Add HigherUp</h2>
    <form:form method="post" action="/adp" modelAttribute="ap">
      <div class="user-box">
        <form:input type="email" path="email" required="true" autofocus="true"/>
        <label>E-mail</label>
      </div>
      <div class="user-box">
        <form:input type="text" path="fullname" required="true" />
        <label>Name</label>
      </div>
      <div class="user-box">
        <form:input type="password" path="password" required="true" />
        <label>password</label>
      </div>
      <div class="user-box">
        <form:input type="text" path="state" required="true" />
        <label>State</label>
      </div>
      <div class="user-box">
        <form:input type="text" path="location" required="true"/>
        <label>Location</label>
      </div>
      <input type="submit" value="ADD">
    </form:form>
  </div>




</body>
</html>