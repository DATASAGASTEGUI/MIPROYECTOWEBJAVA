<%-- 
    Document   : tabla_multiplicar.jsp
    Created on : 28-sep-2022, 14:08:23
    Author     : Walter Ismael Sagástegui Lescano
    Url        : http://localhost:8089/MIPROYECTOWEBJAVA/ejemplo2/tabla_multiplicar.jsp
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

    <center>
        <table border='1' cellpadding='10' cellspacing='10' bgcolor='lightblue'>
            <tbody>
                <%
                    int n = 4;
                    for (int i = 1; i < 13; i++) {
                %>
                <tr>
                    <th><%=n%></th>
                    <th>*</th>
                    <th><%=i%></th>
                    <th>=</th>
                    <th><%=n * i%></th>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </center>
</body>
</html>
