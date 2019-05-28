<%-- 
    Document   : resposta
    Created on : 23/05/2019, 20:41:39
    Author     : 04279207798
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String av1 = request.getAttribute("av1").toString();
            String av2 = request.getAttribute("av2").toString();
            String av3 = request.getAttribute("av3").toString();
            String media = request.getAttribute("media").toString();
            String status = request.getAttribute("status").toString();
        %>    
        <%="AV1: "+av1%><br>
        <%="AV2: "+av2%><br>
        <%="AV3: "+av3%><br>
        <%="Média: "+media%><br>
        <%="Situação do Aluno: "+status%><br>
    </body>
</html>
