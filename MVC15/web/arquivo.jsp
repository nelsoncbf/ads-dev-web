<%-- 
    Document   : arquivo
    Created on : 24/01/2017, 09:39:37
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC2 15</title>
    </head>
    <body>
        <%
            String fibonacci = request.getAttribute("fibonacci").toString();
        %>    
        <%=fibonacci%>
    </body>
</html>
