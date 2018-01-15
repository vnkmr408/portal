<%-- 
    Document   : login_process
    Created on : 26 Mar, 2017, 12:28:47 PM
    Author     : nightmare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%
    Connection con=null;
    String sql=null;
    ResultSet rs=null;
    String user = request.getParameter("user");
    
    String uname = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSP",
            "root", "root");
    
    if(user.equals("Admin"))
    {
        sql = "select USERNAME, PASSWORD from Admin where USERNAME='" + uname + "' and PASSWORD='" + pwd + "'";
    }
    else if(user.equals("Customer"))
    {
        sql="select CUST_USERNAME, PASSWORD from Customer where CUST_USERNAME='" + uname + "' and PASSWORD='" + pwd + "'";
    
    }
    else if(user.equals("Carrier"))
    {
        sql="select CARR_USERNAME, PASSWORD from Carrier where CARR_USERNAME='" + uname + "' and PASSWORD='" + pwd + "'";
    
    }
    Statement st = con.createStatement();
    
    rs = st.executeQuery(sql);
    if (rs.next()) {
        session.setAttribute("username", uname); 
        if(user.equals("Customer"))
        {
            //response.sendRedirect("Customer_inbox.jsp");
            request.getRequestDispatcher("Customer_inbox.jsp").forward(request, response);
        }
        else
        {
            request.getRequestDispatcher("Carrier_inbox.jsp").forward(request, response);
        }
    } else {
        response.sendRedirect("Error.jsp");
    }
    }
                catch(ClassNotFoundException ce)
		{		
			%><script>alert("Connection Failed");</script><%
		}
		catch(SQLException sq)
		{
			
		}
		finally
		{
			if(con!=null)
			{
				try
				{
					con.close();
				}
				catch(SQLException sq2)
				{
				}
			}
                }

%>
    </body>
</html>
