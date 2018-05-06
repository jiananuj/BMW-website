package com.anuj;

import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
  
public class FirstServlet extends HttpServlet {  

	
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("uname");  
    String p=request.getParameter("password");  
          
    if(LoginDao.validate(n, p)){  
        RequestDispatcher rd=request.getRequestDispatcher("admin2.jsp");  
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