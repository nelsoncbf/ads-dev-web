<%-- 
    Document   : valida
    Created on : 02/05/2019, 20:21:22
    Author     : 2014201608
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String pegaIp(String ips){
        String[] separando = ips.split("/");
        return separando[0];
    }
    String pegaMascara(String ips){
        String[] separando = ips.split("/");
        int num = Integer.parseInt(separando[1]);
        String ipClass = "nulo";
        switch (num){
        case 8:
            ipClass = ("255.0.0.0/Capacidade para 16.777.216 endereços.");
        break;
        case 16:
            ipClass = ("255.255.0.0/Capacidade para 65.536 endereços.");
        break;
        case 20:
            ipClass = ("255.255.240.0/Capacidade para 4096 endereços.");
        break;
        case 21:
            ipClass = ("255.255.248.0/Capacidade para 2048 endereços.");
        break;
        case 22:
            ipClass = ("255.255.252.0/Capacidade para 1024 endereços.");
        break;
        case 23:
            ipClass = ("255.255.254.0/Capacidade para 512 endereços.");
        break;
        case 24:
            ipClass = ("255.255.255.0/Capacidade para 256 endereços.");
        break;
        case 25:
            ipClass = ("255.255.255.128/Capacidade para 128 endereços.");
        break;
        case 26:
            ipClass = ("255.255.255.192/Capacidade para 64 endereços.");
        break;
        case 27:
            ipClass = ("255.255.255.224/Capacidade para 32 endereços.");
        break;
        case 28:
            ipClass = ("255.255.255.240/Capacidade para 16 endereços.");
        break;
        case 29:
            ipClass = ("255.255.255.248/Capacidade para 8 endereços.");
        break;
        case 30:
            ipClass = ("255.255.255.252/Capacidade para 4 endereços.");
        break;
        case 31:
            ipClass = ("255.255.255.254/Capacidade para 2 endereços.");
        break;
        case 32:
            ipClass = ("255.255.255.255/Capacidade para 1 endereços.");
        break;
        default:
            ipClass = ("--/O IP digitado é inválido, pois não possui classe");
        break;
        }
        return ipClass;
    }
    String mascara(String mascaraRede){
        String[] a = mascaraRede.split("/");
        String b = a[0];
        return b;
    }
    String infoClasse (String mascaraRede){
        String[] a = mascaraRede.split("/");
        String b = a[1];
        return b;
    }
    String gate (String ip){
        String[] a = ip.split("\\.");
        String b = (a[0]+"."+a[1]+"."+a[2]+".1");
        return b;
    }
    String broad (String ip){
        String[] a = ip.split("\\.");
        String b = (a[0]+"."+a[1]+"."+a[2]+".255");
        return b;
    }
    String pegaClasse(String ip){
        String[] a = ip.split("\\.");
        int b = Integer.parseInt(a[0]);
        String voltaClasse = ("IP Inválido");
        return voltaClasse;
    }    
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informações do IP</title>
    </head>
    <body><center>
        <h2>Informações do IP</h2>
        <%
            String ips = (request.getParameter("ip"));
            String ip = pegaIp(ips);
            String mascaraRede = pegaMascara(ips);
            String mascaraIp = mascara(mascaraRede);
            String infoIp = infoClasse(mascaraRede);
            String gateway = gate(ip);
            String broadcast = broad(ip);
            String voltaClasse = pegaClasse(ip);
        %>
    <table class="table table-striped">
        <tbody>
        <tr>
            <td><%="<b>Endereço IP:</b> "+ip+" - <b>Classe:</b> "+voltaClasse%></td>
        </tr>
        <tr>
            <td><%="<b>Mascara de rede:</b> "+mascaraIp%></td>
        </tr>
        <tr>    
            <td><%="<b>Broadcast:</b> "+broadcast%></td>
        </tr>
        <tr>
            <td><%="<b>Gateway:</b> "+gateway%></td>
        </tr>
        <tr>
            <td><%="<b>Nº IPs: </b> "+infoIp+" disponíveis."%></td>
        </tr>
        </tbody>
    </table>
        </center>
    </body>
</html>
