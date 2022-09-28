<%-- 
    Document   : principal1
    Created on : 27-sep-2022, 14:08:23
    Author     : Walter Ismael Sagástegui Lescano
    Url        : http://localhost:8089/MIPROYECTOWEBJAVA/principal1.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>PRINCIPAL</h1>
        
        <%
           //ENTRADA
           int a = 8;
           int b = 5;
           //PROCESO
           int c = a + b;
           //SALIDA
           out.print("<h1>" + "Suma: " + c + "</h1><br/>");
           
           out.print("hola como estas");
        %>
        
        


    </body>
</html>
