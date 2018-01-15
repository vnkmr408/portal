<%-- 
    Document   : header
    Created on : 30 Mar, 2017, 10:20:23 PM
    Author     : nightmare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="Main2.jsp">Carrier & Shipment Portal</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
            <%String name=request.getParameter("name");%>
          <li class="active"><a href="Main2.jsp"><%out.println(name);%></a></li>
          
          <!--<li><a href="#">Carrier LOGIN</a></li> -->
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header> 
          <%session.setAttribute("name",name);
          request.getRequestDispatcher("Cust_inbox.jsp").forward(request, response);%>
    </body>
</html>
