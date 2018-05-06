package com.anuj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;  
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Date;

public class GuestDao extends HttpServlet  {  
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
	  
	    response.setContentType("text/html");  
	  
	          
	    String n=request.getParameter("uname");  
	    String p=request.getParameter("phone");  
	    
	   
	    
	    validate(n,p);
	    RequestDispatcher rd=request.getRequestDispatcher("guest2.jsp");  
        rd.include(request,response);  
	    
	}
	
	
public static boolean validate(String name,String phone){  
boolean status=false;  
Date d= new Date(); 
SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
String date= formatter.format(d);

SimpleDateFormat formatter2 = new SimpleDateFormat("hh:mm:ss");  
String time=formatter2.format(d);


try{  

	Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
  
		"jdbc:mysql://localhost:3306/anuj","root","pound");        
PreparedStatement ps=con.prepareStatement(  
"insert into guest values(?,?,?,?)");  
ps.setString(1,name);  
ps.setString(2,phone);  
ps.setString(3, date);
ps.setString(4, time);

ps.executeUpdate();  
 
          
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  
