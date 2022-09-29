<%-- 
    Document   : tabla_multiplicar.jsp
    Created on : 28-sep-2022, 14:08:23
    Author     : Walter Ismael Sagástegui Lescano
    Url        : http://localhost:8089/MIPROYECTOWEBJAVA/ejemplo3/factorial_numero.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>FACTORIAL DE UN NUMERO</h1></center>

        <%
            int n = 20;
            long f = 1;
            String a = "";
            for (int i = 1; i < (n+1); i++) {
                f = f * i;
                a = a + i + "*";
            }
            String c = a.substring(0, a.length()-1);
            System.out.println(a);
            System.out.println(f);
        %>

    <center>
        <table border='1' cellpadding='10' cellspacing='10' bgcolor='lightblue'>
            <tbody>
                <tr>
                    <td><%=c%></td>
                    <td><%=f%></td>
                </tr>
            </tbody>
        </table>
    </center>


    </body>
</html>
