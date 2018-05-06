<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql://localhost:5432/";
String database = "bmw";
String userid = "postgres";
String password = "pound";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<html>
<head>
<link rel="stylesheet" href="html\\index.css">
<link rel="stylesheet" href="html\\guest2.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="topnav">
  <a href="index.html">Home</a>
  <a href="news.html">News</a>
  <a href="contact.html">Contact</a>
  <a href="about.html">About</a> 
  <a href="admin.jsp">Admin login</a>
  <a class="active"  href="guest.jsp">Guest login</a>
  <img class="logo"  src="img\\logo.png"  >    
</nav>

<nav class="options">
  <a class="active"  href="guest2.jsp">Guest Page</a>
  <a href="guestTable.jsp">All Models</a>

</nav>

<!-- Slideshow container -->
<div class="slideshow-container">

        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
          <img class ="img" src="img2\\1.jpg" style="width:100%">
         
        </div>
      
        <div class="mySlides fade">
          <img class ="img" src="img2\\2.jpg" style="width:100%">
     
        </div>
      
        <div class="mySlides fade">
          <img class ="img" src="img2\\3.jpg" style="width:100%">
     
        </div>

        <div class="mySlides fade">
                
                <img class ="img" src="img2\\4.jpg" style="width:100%">
              
              </div>
      <br>
        <!-- Next and previous buttons -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
      

 <br>
        <!-- The dots/circles -->
      <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
        <span class="dot" onclick="currentSlide(4)"></span> 
      </div>
  
  
    </div>
      
      
      

 <script>
          
		
 var slideIndex = 0;
 carousel();

 function carousel() {
     var i;
     var x = document.getElementsByClassName("mySlides");
     for (i = 0; i < x.length; i++) {
       x[i].style.display = "none"; 
     }
     slideIndex++;
     if (slideIndex > x.length) {slideIndex = 1} 
     x[slideIndex-1].style.display = "block"; 
     setTimeout(carousel, 2000); // Change image every 2 seconds
 }
		
	
	
</script>




</body>
</html>