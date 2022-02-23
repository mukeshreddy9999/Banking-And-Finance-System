<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>

<head>
  <title>@SignUp</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="resources/css/dsignup.css">
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
    <h2>SignUp</h2>
    <form:form name="f2" method="post" action="/signsub" modelAttribute="sig">
      
      <div class="user-box">
        <form:input type="text" path="fname" name="name" required="true" autofocus="true"/>
        <label>Name</label>
      </div>
      
      <div class="user-box">
        <form:input type="email" path="email" name="mail" required="true"/>
        <label>E-mail</label>
      </div>
      
       <div class="user-box">
        <form:input type="text" path="mobile" name="ph" required="true"/>
        <label>MobileNo</label>
      </div>
      
      <div class="user-box">
        <form:input type="password" path="password" name="pass" required="true"/>
        <label>Password</label>
      </div>
      
       <div class="user-box">
        <input type="password" name="cpass" required="true"/>
        <label>Confirm Password</label>
      </div> 
      
      <input type="submit" value="SignUp" onclick=SignUp()>
      <!--<a href="" onclick=SignUp()>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Submit
      </a>-->

      <a href="/login">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Login
      </a>
    </form:form>
  </div>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>
  <script>
    function SignUp() {
      var fn = document.f2.name.value;
      var ph = document.f2.ph.value;
      var phoneno = /^\d{10}$/;
      var pwd = document.f2.pass.value.length;
      var cpwd = document.f2.cpass.value.length;


      
      if (!(document.f2.ph.value.match(phoneno))) {
        alert("Not a valid Phone Number");
      }
      else if (pwd < 7 || pwd > 12 || cpwd < 7 || cpwd > 12) {
        alert("Password should not be empty / length be between 7 to 12");
      }
      else if (cpwd != pwd) {
        alert("Passwords do not match!!\nPlease enter similar passwords.");
      }
    }
  </script>

</body>

</html>