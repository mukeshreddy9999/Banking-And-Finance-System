<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>@Admin Home</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
<link rel="stylesheet" href="/resources/css/adminhome.css">
</head>
<body>
	<div class="navbar">
	
	<a href="/logout">Logout</a>
	<a href="/addpol">Add Up</a>
        <a href="/viewpol">HigherUp's</a>
        <a href="/viewall">Users</a>
        <a href="/delete">Delete</a>
        <a href="/adminhome">Home</a>
        
        <div class="Session">
	<p class="font-effect-fire">
	<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
     String email=(String)request.getSession().getAttribute("name");
     out.println("welcome"+"   "+email);
   //if(request.getSession().getAttribute("email")==null){
    	//response.sendRedirect("/");
    	
    %> </p></div>
	
  </div>
       
  <div class="bg-image"></div>
        <div class="bg-text">
            <h2>Welcome, Home</h2>
            <h1 style="font-size:50px">ADMIN</h1>
            
        </div>
</body>
</html>