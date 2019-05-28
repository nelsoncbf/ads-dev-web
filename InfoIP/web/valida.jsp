<%-- 
    Disciplína: Desenvolvimento de Aplicações WEB - 852
    Aluno : Nelson de Castro Barros Fonseca
    Matrícula: 2014201608
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    
    String gateway (int capacidade, String ip){
        int b, c, d ;
        String gateway = ip;
        String[] arrayItens = ip.split("/");
        String[] arrayIp = arrayItens[0].split("\\.");
        if (capacidade <= 256){
            d = 1;
            gateway = (arrayIp[0]+"."+arrayIp[1]+"."+arrayIp[2]+"."+d);
        }if ((capacidade/256)<=256 && capacidade > 256){
            d = 1;
            c = 0;
            gateway = (arrayIp[0]+"."+arrayIp[1]+"."+c+"."+d);
        }if (((capacidade/256)/256)<=256 && capacidade > 65536){
            d = 1;
            c = 0;
            b = 0;
            gateway = (arrayIp[0]+"."+b+"."+c+"."+d);
        }
            return gateway;
    } 
    
    String broadcast (int capacidade, String ip){
        int b, c, d ;
        String broadcast = ip;
        String[] arrayItens = ip.split("/");
        String[] arrayIp = arrayItens[0].split("\\.");
        if (capacidade <= 256){
            d = capacidade-1;
            broadcast = (arrayIp[0]+"."+arrayIp[1]+"."+arrayIp[2]+"."+d);
        }if ((capacidade/256)<=256 && capacidade > 256){
            d = 255;
            c = (capacidade/256)-1;
            broadcast = (arrayIp[0]+"."+arrayIp[1]+"."+c+"."+d);
        }if (((capacidade/256)/256)<=256 && capacidade > 65536){
            d = 255;
            c = 255;
            b = ((capacidade/256)/256)-1;
            broadcast = (arrayIp[0]+"."+b+"."+c+"."+d);
        }
            return broadcast;
    }    
        String pegaIp(String ips){
        String[] separando = ips.split("/");
        return separando[0];
    }
    String pegaMascara(String ips){
        String[] separando = ips.split("/");
        int num = Integer.parseInt(separando[1]);
        String ipClass = ("nulo");
        switch (num){
        case 8:
            ipClass = ("255.0.0.0/16777216");
        break;
        case 16:
            ipClass = ("255.255.0.0/65536");
        break;
        case 20:
            ipClass = ("255.255.240.0/4096");
        break;
        case 21:
            ipClass = ("255.255.248.0/2048");
        break;
        case 22:
            ipClass = ("255.255.252.0/1024");
        break;
        case 23:
            ipClass = ("255.255.254.0/512");
        break;
        case 24:
            ipClass = ("255.255.255.0/256");
        break;
        case 25:
            ipClass = ("255.255.255.128/128");
        break;
        case 26:
            ipClass = ("255.255.255.192/64");
        break;
        case 27:
            ipClass = ("255.255.255.224/32");
        break;
        case 28:
            ipClass = ("255.255.255.240/16");
        break;
        case 29:
            ipClass = ("255.255.255.248/8");
        break;
        case 30:
            ipClass = ("255.255.255.252/4");
        break;
        case 31:
            ipClass = ("255.255.255.254/2");
        break;
        case 32:
            ipClass = ("255.255.255.255/1");
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
    String pegaClasse(String ip){
        String[] a = ip.split("\\.");
        int b = Integer.parseInt(a[0]);
        String vClass;
                 if ((b >=   0) && (b <=127)) vClass = ("A");
            else if ((b >= 128) && (b <=191)) vClass = ("B");
            else if ((b >= 192) && (b <=223)) vClass = ("C");
            else if ((b >= 224) && (b <=239)) vClass = ("D");
            else if ((b >= 240) && (b <=247)) vClass = ("E");
            else vClass = ("IP Inválido");
        return vClass;
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
            String pgInfoCompleta = (request.getParameter("ip"));
            String ips = (pgInfoCompleta);
            String mascaraRede = pegaMascara(pgInfoCompleta);
            int cap = (Integer.parseInt(infoClasse(mascaraRede))-2);
            String broad = broadcast(Integer.parseInt(infoClasse(mascaraRede)), pgInfoCompleta);
            String gate = gateway(Integer.parseInt(infoClasse(mascaraRede)), pgInfoCompleta);
            String ip = pegaIp(ips);
            String pgClasse = pegaClasse(pegaIp(ips));
        %>
    <table class="table table-striped">
        <tbody>
        <tr>
            <td><%="<b>Endereço IP:</b> "+ip+" - <b>Classe:</b> "+pgClasse%></td>
        </tr>
        <tr>
            <td><%="<b>Mascara de rede:</b> "+mascara(mascaraRede)%></td>
        </tr>
        <tr>    
            <td><%="<b>Broadcast:</b> "+broad%></td>
        </tr>
        <tr>
            <td><%="<b>Gateway:</b> "+gate%></td>
        </tr>
        <tr>
            <td><%="<b>Nº IPs: </b> "+cap+" disponíveis."%></td>
        </tr>
        </tbody>
    </table>
        </center>
    </body>
</html>
