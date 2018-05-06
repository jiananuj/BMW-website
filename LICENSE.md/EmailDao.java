package com.anuj;

import java.sql.*;  

public class EmailDao {  
public static boolean validate(String email,String user){  
boolean status=false;  
try{  

	Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
  
		"jdbc:mysql://localhost:3306/anuj","root","pound");        
PreparedStatement ps=con.prepareStatement(  
"select * from userreg where name=? and email=?");  
ps.setString(1,user);  
ps.setString(2, email);

      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
con.close();
}catch(Exception e){System.out.println(e);}  
return status;  
}  


/*
public static String passf(String user){
	String pass="";
	try{  

		Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	  
			"jdbc:mysql://localhost:3306/anuj","root","pound");        
	PreparedStatement ps=con.prepareStatement(  
	"select * from userreg where name=?");  
	ps.setString(1,user);  

	      
	ResultSet rs=ps.executeQuery();  
	
	while(rs.next()){
	pass=rs.getString("pass");
	}
	 con.close();
	 return pass;  
	}catch(Exception e){System.out.println(e);}
	return pass;  
	 	
}*/
}  
