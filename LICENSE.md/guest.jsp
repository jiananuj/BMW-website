<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<link rel="stylesheet" href="html\\index.css">
<link rel="stylesheet" href="html\\guest.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="img\\guest.png">

<nav class="topnav">
  <a href="index.html">Home</a>
  <a href="news.html">News</a>
  <a href="contact.html">Contact</a>
  <a href="about.html">About</a> 
  <a href="admin.jsp">Admin login</a>
  <a class="active"  href="guest.jsp">Guest login</a>
  <img class="logo"  src="img\\logo.png"  >   
</nav>

<nav class="log" color="pink">

    <div class="login">
      <h1>Guest Entry </h1>
		<form method="post" action="servlet2">
        <p><input type="text" name="uname" value="" placeholder="name"></p>
        <p><input type="text" name="phone" value="" placeholder="phone number"></p>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me.
          </label>
        </p>
       
        <p class="submit"><input type="submit" name="commit" value="Guest Login"></p>
      </form>
    </div>
</nav>


</body>
</html>