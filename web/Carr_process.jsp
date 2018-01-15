<%-- 
    Document   : Carr_process.jsp
    Created on : 25 Mar, 2017, 12:03:59 PM
    Author     : nightmare
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%                     
		Connection conn=null;
		try
		{
			String lno = request.getParameter("Lno");
                        String fname = request.getParameter("fname");
                        String lname = request.getParameter("lname");
                        String mno = request.getParameter("mno");
                        String email = request.getParameter("email");
                        String carrtype = request.getParameter("Carrtype");
                        String username = request.getParameter("uname");
                        String password = request.getParameter("passwd");
                        Class.forName("com.mysql.jdbc.Driver");
			//System.out.println("Driver loaded");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/CSP","root","root");
			PreparedStatement ps = conn.prepareStatement("insert into Carrier(Licence_no,First_Name,Last_Name,Contact_no,Email,Carrage_type,CARR_USERNAME,PASSWORD) values (?,?,?,?,?,?,?,?)");
                        ps.setString(1,lno);
                        ps.setString(2,fname);
                        ps.setString(3,lname);
                        ps.setString(4,mno);                        
                        ps.setString(5,email);
                        ps.setString(6,carrtype);                        
                        ps.setString(7,username);
                        ps.setString(8,password);                      
                        int i = ps.executeUpdate();
                        if (i > 0) 
                        {
                            %>
                             <script>
                                    alert("Successfully Done!!");
                                     <%response.sendRedirect("Successful.jsp");%>
                             </script>
                             <% 
                           
                        }
                        else {
                        response.sendRedirect("Main.jsp");
                        
                        }
                        
    
		}
		catch(ClassNotFoundException ce)
		{		
			
		}
		catch(SQLException sq)
		{
                    out.println("<b><center>Username or Contact no. or Driving Licence no Already exist <a href='Carr.jsp'>try again</a></center></b>");
		
		}
		finally
		{
			if(conn!=null)
			{
				try
				{
					conn.close();
				}
				catch(SQLException sq2)
				{
				System.out.println("Error in closing the connection:"+sq2.getMessage());
				}
			}
                }	    
            %>
    </body>
</html>
