<%-- 
    Document   : valida
    Created on : 02/05/2019, 20:21:22
    Author     : 04279207798
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! public int d(String cpf){
        int v=0;
        for(int i=0; i<cpf.length(); i++)
            v += (cpf.charAt(i)-'0')*(cpf.length()+1-i);
        System.out.println(v);
        v = v%11;
        if(v<2) v=0;
        else v=11-v;
        System.out.println(v);
        return v;
    }
    public boolean valido(String cpf){
        System.out.println(cpf);
        int v1 = d(cpf.substring(0, 9));
        int v2 = d(cpf.substring(0, 10));
        System.out.println(v1);
        System.out.println(v2);
        if(v1==(cpf.charAt(9)-'0') && (v2==cpf.charAt(10)-'0'))
            return true;
        return false;    
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%=valido(request.getParameter("cpf"))?"CPF Válido":"CPF Inválido"%>
    </body>
</html>
