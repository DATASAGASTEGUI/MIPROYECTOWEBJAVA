<%-- 
    Document   : procesar
    Created on : 29-sep-2022, 13:44:30
    Author     : RYZEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>FACTORIAL</h1>
        <%
            boolean bandera = true;
            int n = 0;
            try {
                n = Integer.parseInt(request.getParameter("txtNumeroEntero"));
            } catch (Exception e) {
                bandera = false;
            }
            
            if (bandera == true) {
                long f = 1;
                String a = "";
                for (int i = 1; i < (n + 1); i++) {
                    f = f * i;
                    a = a + i + "*";
                }
                String c = a.substring(0, a.length() - 1);
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
    <%   
        } else {
            out.print("ENTRADA INCORRECTA");
        }
    %>



</body>
</html>
