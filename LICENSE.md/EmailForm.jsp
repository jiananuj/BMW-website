<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send login info to your mail id</title>
</head>
<body bgcolor="cyan">
	<form action="servlet3" method="post">
		<table border="0" width="35%" align="center">
			<caption><h2>Send login info to your mail id</h2></caption>
			<tr>
				<td width="50%">Your Email Id : </td>
				<td><input type="text" name="email" size="50"/></td>
			</tr><br><br>
			<tr>
			<td></td></tr>
			<tr></tr>
			<tr>
				<td width="50%">Username : </td>
				<td><input type="text" name="user" size="50"/></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit" name="commit" value="SEND"></td>
			</tr>
		</table>
		
	</form>
</body>
</html>