<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>@HigherUp Home</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
<link rel="stylesheet" href="/resources/css/polhome.css">
</head>
<body>
	<div class="navbar">
	
	<div class="Session">
	<p class="font-effect-fire">
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      	String email=(String)request.getSession().getAttribute("polname");
      	out.println("welcome"+"   "+email);
   	%> </p>
	
	</div>
	
	<a href="/logout">Logout</a>
        <a href="/rms1">View Msg</a>
        <a href="/viewmessage2">My Msg</a>
        <a href="/sendmesp">SnD Msg</a>
        <a href="/pfeed">Feed</a>
        <a href="/polhome">Home</a>
	
  </div>
  <div class="bg-image"></div>
        <div class="bg-text">
            <h2>welcome</h2>
            <h1 style="font-size:50px">This is Politician home Page</h1>
        </div>
      
      
      
      
    
</body>
</html>