<%-- 
    Document   : sample3
    Created on : 2 Apr, 2017, 3:23:54 PM
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
        <h1>Page 3</h1>
        <%
            String lname = (String)session.getAttribute("name");
            out.println(lname);
        %>
        <form action="sample4.jsp" >
            <input type="hidden" name="lname" value="<%=lname%>"> 
            <a href="">Click here</a>
        </form> 
        
    </body>
</html>
