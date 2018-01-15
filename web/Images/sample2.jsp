<%-- 
    Document   : sample2
    Created on : 2 Apr, 2017, 3:23:32 PM
    Author     : nightmare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>page2</h1>
        <%
            String name = request.getParameter("name");
            session.setAttribute("name",name);
            out.println(name);
            //response.sendRedirect("sample3.jsp");
            request.getRequestDispatcher("sample3.jsp").forward(request, response);
        %>
        
    </body>
</html>
