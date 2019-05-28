<%-- 
    Document   : varios
    Created on : 02/05/2019, 20:40:38
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

<%
    String CPFsValidos[] = {"48744746245", "60488720540", "83270721293", "73415405672",
                            "74471120549", "43861646340", "76336175782"};
    
    String CPFsInvalidos[] = {"58744746245", "70488720540", "93270721293", "83415405672",
                            "84471120549", "33861646340", "86336175782"};

  out.println("Válidos"+"<br>");
    for(String cpf: CPFsValidos)
       out.println(cpf + valido(cpf)+"<br>");

    out.println("Inválidos"+"<br>");
    for(String cpf: CPFsInvalidos)
       out.println(cpf + valido(cpf)+"<br>");
%>