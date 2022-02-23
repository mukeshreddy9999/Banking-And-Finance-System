<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Show users</title>
<link rel="shortcut icon" href="data:" />
<link rel="stylesheet" href="/resources/css/viewpols1.css">
</head>
<body>
<div class="navbar">
	<a href="/logout">Logout</a>
        <a href="/profile">Profile</a>
        <a href="/rms">View Msg</a>
        <a href="/viewpol1">HigherUps</a>
        <a href="/viewmessage1">My Msg</a>
        <a href="/sendmessage">SnD Msg</a>
        <a href="/feed">Feed</a>
        <a href="/userhome">Home</a>
  </div>
  <center>
	<table>
    <tr class="head">
     <td>Email</td>
     <td>FName</td>
     <td>State</td>
     <td>Location</td>
    </tr>
    <c:forEach var="user" items="${politicians}">
     <tr>
      <td>${user.getEmail()}</td>
      <td>${user.getFullname()}</td>
      <td>${user.getState()}</td>
       <td>${user.getLocation()}</td>
      
     </tr>
    </c:forEach>
   </table>
   </center>
    <%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   %>
</body>
</html>