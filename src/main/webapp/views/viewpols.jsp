<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Show users</title>
<link rel="shortcut icon" href="data:" />
<link rel="stylesheet" href="/resources/css/viewpols.css">



<style type="text/css">


table{
    width: 800px;
    background-color: rgba(156, 144, 144, 0.397);
    margin-top: 150px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.425), 0 6px 20px 0 rgba(0, 0, 0, 0.425);
    font-family: sans-serif;
    border-collapse: collapse;
}
table .head{
    font-size: 17px;
    text-align: center;
    background-color: black;
    color: #fff;
}
table td{
   border-style: none;
   text-align: center;
    padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
</style>
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