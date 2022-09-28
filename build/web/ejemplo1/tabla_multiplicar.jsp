<%-- 
    Document   : tabla_multiplicar.jsp
    Created on : 28-sep-2022, 14:08:23
    Author     : Walter Ismael Sagástegui Lescano
    Url        : http://localhost:8089/MIPROYECTOWEBJAVA/ejemplo1/tabla_multiplicar.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla</title>
    </head>
    <body>
    <center><h1><u>TABLA MULTIPLICAR</u></h1></center>
                <%
                    int n = 6;
                    out.print("<center><table border='1' cellpadding='10' cellspacing='10' bgcolor='lightblue'><tbody>");
                    for (int i = 1; i < 13; i++) {
                        System.out.println(n+" * " + i + " = " + (n * i));
                        out.print("<tr><td>" + n + "</td><td>*</td><td>" + i + "</td><td>=</td><td>" + (n * i) + "</td></tr>");
                    }
                    out.print("</tbody></table></center>");
                %>

</body>
</html>
