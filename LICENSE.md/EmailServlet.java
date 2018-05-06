package com.anuj;

import java.io.IOException;  
import java.io.PrintWriter;  
  
import java.sql.*;

import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
  
public class EmailServlet extends HttpServlet {  

	
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
	
	 String pass="";
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String em=request.getParameter("email");  
    String user=request.getParameter("user");  
    //////////////////////////////////////////////////////////
    
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
	 
	}catch(Exception e){System.out.println(e);}
    
    System.out.println("ljlkjllknljdnfsndfs4444444444444444"+pass);
   // pass=EmailDao.passf(user);
    ///////////////////////////////////////////////////////////////////////      
    if(EmailDao.validate(em,user)){  
    
     	request.setAttribute("pass", pass);
        RequestDispatcher rd=request.getRequestDispatcher("servlet4");  
        rd.forward(request,response);  
    }  
    else{  
        request.setAttribute("error","Invalid Username/password"); 
        RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");  
        rd.include(request,response);  
    }  
          
    out.close();  
    }  
}  