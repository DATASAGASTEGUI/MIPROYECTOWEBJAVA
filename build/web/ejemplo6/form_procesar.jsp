<%-- 
    Document   : form_procesar
    Created on : 30-sep-2022, 12:59:28
    Author     : RYZEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%-- <link rel="stylesheet" type="text/css" href="estilo.css" media="screen" />--%>

        <style>
            input[type=text], input[type=submit] {
                text-align:center;
                border-radius: 10px;
                border: 2px solid #39c;
            }
        </style>

    </head>
    <body>
    <center><h1>SUMAR DOS NUMEROS</h1></center>

    <%
        String n1f = "";
        String n2f = "";
        String rf = "";
        String mensaje = "";
        if (request.getParameter("cmdSumar") != null) {
            try {
                int n1, n2, r;
                n1 = Integer.parseInt(request.getParameter("txtN1"));
                n2 = Integer.parseInt(request.getParameter("txtN2"));
                r = n1 + n2;

                n1f = String.valueOf(n1);
                n2f = String.valueOf(n2);
                rf = String.valueOf(r);
                mensaje = "OK";
            } catch (Exception e) {
                n1f = "";
                n2f = "";
                rf = "";
                mensaje = "ENTRADA INCORRECTA";
            }
        }

        if (request.getParameter("cmdNuevo") != null) {
            n1f = "";
            n2f = "";
            rf = "";
        }
    %>

    <center>
        <form action="" method="post">
            Número 1?<input type="text" name="txtN1" value="<%=n1f%>" />
            Número 2?<input type="text" name="txtN2" value="<%=n2f%>" />
            Resultado:<input type="text" name="txtR" value="<%=rf%>" disabled />
            Mensaje:<input type="text" name="txtM" value="<%=mensaje%>" disabled />
            <input type="submit" name="cmdSumar" value='Sumar' />
            <input type="submit" name='cmdNuevo' value='Nuevo' />
        </form>
    </center>


</body>
</html>
