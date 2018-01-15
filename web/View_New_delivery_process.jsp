<%-- 
    Document   : View_New_Delivery_process
    Created on : 4 Apr, 2017, 4:57:02 PM
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
        Connection conn = null;
            try{
                        
                        String user = request.getParameter("name");
                        String orderid=request.getParameter("id");
//int orderid = Integer.parseInt(request.getParameter("Orderid"));
                        String amt = request.getParameter("rate");
                        
                        Class.forName("com.mysql.jdbc.Driver");
			//System.out.println("Driver loaded");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/CSP","root","root");
			PreparedStatement ps = conn.prepareStatement("insert into Carrier_rates(CARR_USERNAME,Price,Order_Shipment_id) values (?,?,?)");
                        ps.setString(1,user);
                        ps.setString(2,amt);
                        ps.setString(3,orderid);
                                            
                        int i = ps.executeUpdate();
                        if (i > 0) 
                        {
                            %>
                             <script>
                                    alert("Successfully Done!!");                                     
                             </script>                       
                             <br><br>
                             <center>
                             <form action="View_New_deliveries.jsp" method="post">
                                 <input type="hidden" value="<%=user%>" name="name">
                                 <input type="submit" value="<<Go Back">
                             </form>
                             </center>
                                 <% 
                           
                        }
                        else {
                        response.sendRedirect("Main.jsp");
                        
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
