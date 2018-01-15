<%-- 
    Document   : Shipment_Order_process
    Created on : 27 Mar, 2017, 12:06:42 PM
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
		Connection con=null;
                ResultSet rs =null;
		try
		{
			String category = request.getParameter("category");
                        String type = request.getParameter("type");
                        String iname = request.getParameter("item_name");
                        String size = request.getParameter("size");
                        String weight = request.getParameter("weight");                                                
                        String collstr = request.getParameter("collect_street");
                        String desstr = request.getParameter("destination_street");
                        String date=request.getParameter("date");
                        String time=request.getParameter("time");
                        String cname=request.getParameter("username");
                        String status=request.getParameter("status");
                        Class.forName("com.mysql.jdbc.Driver");			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CSP","root","root");
			Statement st = con.createStatement();    
                        rs = st.executeQuery("select CUST_USERNAME from Customer where CUST_USERNAME='"+cname+"'");
                        if (rs.next()) {
                        PreparedStatement ps = con.prepareStatement("insert into Order_Shipment(CATEGORY,TYPE,ITEM_NAME,PICKUP_LOCATION,DELIVERY_LOCATION,DATE,TIME,C_username,Status) values(?,?,?,?,?,?,?,?,?)");
                        ps.setString(6,date);
                        ps.setString(7,time);
                        ps.setString(4,collstr);
                        ps.setString(5,desstr);                        
                        ps.setString(8,cname);
                        ps.setString(1,category);
                        ps.setString(2,type);
                        ps.setString(3,iname);
                        ps.setString(9,status);
                        
                        int i = ps.executeUpdate();
                        if (i > 0) 
                        {
                            //session.setAttribute("cname", cname);
                            response.sendRedirect("Successfull_placed.jsp");
                        }
                        else {
                        out.println("Invalid password <a href='login.jsp'>try again</a>");
                        
                        }
                        }
                        else{
                        %><script>
                                alert("Wrong username!!!");
            
                        </script>
                        <a href="Order_vehicle.jsp"> Try again!!! </a>
                        <%
                            
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
				out.println("Error in closing the connection:"+sq2.getMessage());
				}
			}
                }
                
                /*try
		{
			//String category = request.getParameter("category");
                        //String type = request.getParameter("type");
                        //String iname = request.getParameter("item_name");
                        //String size = request.getParameter("size");
                        //String weight = request.getParameter("weight");
                        
                        
                        Class.forName("com.mysql.jdbc.Driver");
			
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/CSP","root","root");
			PreparedStatement ps = conn.prepareStatement("insert into Order_Shipment(DATE,TIME,Collect_street,Collect_city,Destination_street,Destination_city,C_username,Distance) values(?,?,?,?,?,?,?,?)");
                        
                        ps.setString(1,date);
                        ps.setString(2,time);
                        ps.setString(3,collstr);                        
                        ps.setString(4,collcity);
                        ps.setString(5,desstr);                        
                        ps.setString(6,destcity);
                        ps.setString(7,cname);
                        ps.setString(8,dis);
                        out.println("Hello");
                        int i = ps.executeUpdate();
                        out.println(i);
                        if (i > 0) 
                        {
                            session.setAttribute("cname", cname);
                            response.sendRedirect("Successfull_placed.jsp");
                        }
                        else {
                        out.println("Invalid password <a href='login.jsp'>try again</a>");
                        
                        }
                }
                
		catch(ClassNotFoundException ce)
		{		
			
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
                }*/
                
                        
                        
    
		
		
            %>
    </body>
</html>
