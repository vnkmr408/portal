<%-- 
    Document   : Cust_process.jsp
    Created on : 24 Mar, 2017, 11:34:01 PM
    Author     : nightmare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import="java.sql.*" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%                     
		Connection conn=null;
		try
		{
			String fname = request.getParameter("fname");
                        String lname = request.getParameter("lname");
                        String address = request.getParameter("address");
                        String city = request.getParameter("city");
                        String state = request.getParameter("state");
                        String mno = request.getParameter("mno");
                        String email = request.getParameter("email");
                        String landmark = request.getParameter("landmark");
                        String pin = request.getParameter("pin");
                        String username = request.getParameter("username");
                        String password = request.getParameter("passwd");
                        Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loaded");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/CSP","root","root");
			PreparedStatement ps = conn.prepareStatement("insert into Customer(First_Name,Last_Name, ADDRESS, City,STATE,Mno,Email, Landmark, Pincode,CUST_USERNAME, PASSWORD) values (?,?,?,?,?,?,?,?,?,?,?)");                      
                        ps.setString(1,fname);
                        ps.setString(2,lname);
                        ps.setString(3,address);
                        ps.setString(4,city);
                        ps.setString(5,state);
                        ps.setString(6,mno);
                        ps.setString(7,email);
                        ps.setString(8,landmark);
                        ps.setString(9,pin);
                        ps.setString(10,username);
                        ps.setString(11,password);                      
                        int i = ps.executeUpdate();
                        
                        if (i>0) 
                        {
                            %>
                             <script>
                                    alert("Successfully Done!!");
                                     <%response.sendRedirect("Successful.jsp");%>
                             </script>
                             <% 
                           
                        }
                        else {
                        response.sendRedirect("Main2.jsp");
                        
                        }
                        
    
		}
		catch(ClassNotFoundException ce)
		{		
			
		}
		catch(SQLException sq)
		{
                   out.println("Username or Contact no. Already exist <a href='Cust.jsp'>try again</a>");
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
