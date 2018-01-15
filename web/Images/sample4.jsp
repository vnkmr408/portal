<%-- 
    Document   : sample4
    Created on : 2 Apr, 2017, 3:39:47 PM
    Author     : nightmare
--%>
<%@page isELIgnored = "true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>page 4</h1>
        <%
            String name=request.getParameter("lname");
            out.println(name);
        %>
        
    </body>
</html>
