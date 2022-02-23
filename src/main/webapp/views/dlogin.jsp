<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
  <title>@Login</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="/resources/css/dlogin.css">
  <link rel="icon" type="image/x-icon" href="resources/images/icon.jpg">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
  <a class="close" href="/"><i class="fa fa-times"></i></a>

  <div class="login-box">
    <h2>Login</h2>
    <form:form method="post" action="/loginsub" modelAttribute="log">
      <div class="user-box">
        <form:input type="email" name="email" path="email" required="true" autofocus="true"/>
        <label>E-mail</label>
      </div>
      <div class="user-box">
        <form:input type="password" name="password" path="password" required="true" autofocus="true"/>
        <label>Password</label>
      </div>
      <input type="submit" value="Login"/>
      <!--<a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Submit
      </a>-->

      <a href="/signup">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        SignUp
      </a>
    </form:form>
  </div>

</body>

</html>