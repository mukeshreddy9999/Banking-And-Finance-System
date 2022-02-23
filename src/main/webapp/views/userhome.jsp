<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>@UserHome</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
<link rel="stylesheet" href="/resources/css/userhome.css">
</head>
<body>
	<div class="navbar" id="mynav">
	
	<div class="Session">
	<p class="font-effect-fire">
	<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
     String email=(String)request.getSession().getAttribute("fname");
     out.println("welcome"+"   "+email);
   //if(request.getSession().getAttribute("email")==null){
    	//response.sendRedirect("/");
    	
    %> </p></div>
	
	
        <a href="/logout">Logout</a>
        <a href="/profile">Profile</a>
        <a href="/rms">View Msg</a>
        <a href="/viewpol1">HigherUps</a>
        <a href="/viewmessage1">My Msg</a>
        <a href="/sendmessage">SnD Msg</a>
        <a href="/feed">Feed</a>
        <a href="/userhome">Home</a>
    </div>
  <div class="bg-image"></div>
        <div class="bg-text">
            <h2>Welcome</h2>
            <h1 style="font-size:50px">This is User home Page</h1>
        </div>
   
   
</body>
</html>