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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="topnav">
  <a href="index.html">Home</a>
  <a href="news.html">News</a>
  <a href="contact.html">Contact</a>
  <a href="about.html">About</a>
  <a  href="admin.jsp">Admin login</a>
  <a class="active" href="guest.jsp">Guest login</a>
 
  <img class="logo"  src="img\\logo.png"  > 
   
</nav>

<nav class="options">
  <a href="guest2.jsp">Guest Page</a>
  <a class="active"  href="guestTable.jsp">All Models</a>
  
</nav>

<div class="table">
<h1 align="center">Models</h1>

<table class="gtable border="1">
<tr>
<th>model</th>
<th>variant</th>
<th>type</th>
<th>price</th>
<th>fuel type</th>
<th>transmission</th>
<th>cc</th>
<th>mileage</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from car";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("model") %></td>
<td><%=resultSet.getString("variant") %></td>
<td><%=resultSet.getString("type") %></td>
<td><%=resultSet.getFloat("price") %></td>
<td><%=resultSet.getString("fuel_type") %></td>
<td><%=resultSet.getString("transmission") %></td>
<td><%=resultSet.getInt("cc") %></td>
<td><%=resultSet.getString("mileage_kmperl") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>

<div class="videos">

<video class="video" width="400" height="315" controls>
  <source src="img2\\1.mp4" type="video/mp4">

</video>


</div>
</body>
</html>