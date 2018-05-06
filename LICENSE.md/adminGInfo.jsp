<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "anuj";
String userid = "root";
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
  <a class="active"  href="admin.jsp">Admin login</a>
  <a  href="guest.jsp">Guest login</a>
  <img class="logo"  src="img\\logo.png"  >    
</nav>

<nav class="options">
  <a  href="admin2.jsp">Admin Page</a>
  <a class="active"  href="adminGInfo.jsp">Guest Login Info.</a>

</nav>

<div class="gTable">
	<h1 align="center">Guest Info.</h1>
	
	<%  
	//<form>
  		//<input type="date" name="date" >
	//</form>
	%>
	<br>
	
	<table class="gtable  border="1">
	<tr>
	<th>Guest Name</th>
	<th>Phone Number</th>
	<th>Date</th>
	<th>Time Of Login</th>
	</tr>




<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from guest";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("time") %></td>

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
<div class="guestimg">
<img class="guestimg2" src="img2\\guest2.jpg">
</div>
<%
//String d= request.getParameter("date");
//Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(d);
//String d2=date1.toString();
%>
</body>
</html>