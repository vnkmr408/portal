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
    String mno = request.getParameter("mno");    
    
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSP",
            "root", "root");
    
    if(user.equals("Admin"))
    {
        sql = "select * from Admin where USERNAME='" + uname + "' and Mno='" + mno + "'";
    }
    else if(user.equals("Customer"))
    {
        sql="select * from Customer where CUST_USERNAME='" +uname+ "' and Mno='" + mno + "'";
    
    }
    else if(user.equals("Carrier"))
    {
        sql="select * from Carrier where CARR_USERNAME='" + uname+ "' and Mno='" + mno + "'";
    
    }
    Statement st = con.createStatement();
    
    rs = st.executeQuery(sql);
    if (rs.next()) {
        if(user.equals("Admin"))
        {
            out.println("Your Password is: "+rs.getString(2)+"<a href='Forgotpasswd.jsp'>try again</a>"); 
        }
        else if(user.equals("Customer"))
        {
           out.println("Your Password is: "+rs.getString(11)+"<a href='Forgotpasswd.jsp'>try again</a>");
        }
        else
        {
           out.println("Your Password is: "+rs.getString(8)+"<a href='Forgotpasswd.jsp'>try again</a>");
        }
        
        
        
    } else {
        out.println("Your Username And Contact No didn't matched!!!");
    }
    }
                catch(ClassNotFoundException ce)
		{		
			out.println(ce.getMessage());
		}
		catch(SQLException sq)
		{
			out.println(sq.getMessage());
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
