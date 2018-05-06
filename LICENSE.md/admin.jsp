<%@page import="com.anuj.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="html\\index.css">
<link rel="stylesheet" href="html\\admin.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin login</title>
</head>
<body background="img\\login.jpg">

<nav class="topnav">
  <a href="index.html">Home</a>
  <a href="news.html">News</a>
  <a href="contact.html">Contact</a>
  <a href="about.html">About</a> 
  <a class="active" href="admin.jsp">Admin login</a>
  <a href="guest.jsp">Guest login</a>
  
  <img class="logo"  src="img\\logo.png"  >   
</nav>

<nav class="log">

    <div class="login">
      <h1>Admin Login </h1>
		<form method="post" action="servlet1">
        <p><input type="text" name="uname" value="" placeholder="Username"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me.
          </label>
        </p>
        <p class="err">
	        <%
			String login_msg=(String)request.getAttribute("error");  
			if(login_msg!=null)
			out.println("<font color=red size=4px>"+login_msg+"</font>");
			%>
		</p>
        <p class="submit"><input type="submit" name="commit" value="Login"></p>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="EmailForm.jsp">Click here to reset it</a>.</p>
    </div>

</nav>

</body>
</html>