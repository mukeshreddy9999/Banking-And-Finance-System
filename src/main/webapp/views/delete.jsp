<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<title>@Delete</title>
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
     <!--  <center>
<div class="signin">
<h3 align="center">Deletion</h3>
<form:form method="post" action="/del1" modelAttribute="d">
<form:input path="email" type="email" placeholder="Enter the email of the user or politician to delete"/><br><br>
<input type="submit" value="Delete"/>
</form:form>
</div>

<center>-->


<div class="login-box">
    <h2>DELETE</h2>
    <form:form method="post" action="/del1" modelAttribute="d" >
      <div class="user-box">
        <form:input path="email" type="email" name="mail" required="true"/>
        <label>E-mail</label>
      </div>
      <input type="submit" value="Delete">
    </form:form>
  </div>


<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   //if(request.getSession().getAttribute("email")==null){
    	//response.sendRedirect("/");
    	
    %>  
</body>
</html>