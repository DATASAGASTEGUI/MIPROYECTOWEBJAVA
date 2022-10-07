<%-- 
    Document   : cambiar_color_pagina
    Created on : 07-oct-2022, 13:52:11
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
        <h1>CAMBIAR EL COLOR DE FONDO DE LA PAGINA</h1>
        <%
            if (request.getParameter("subCambiar") != null) {
                String color = request.getParameter("txtColor");
        %>
        <script type="text/javascript">
            document.body.style.backgroundColor = '<%=color%>';
            window.alert('Me gusta el color');
        </script>
        <%
            }
        %>
        <form action ="">
            <input type="text" name="txtColor" />
            <input type="submit" name='subCambiar' value='CAMBIAR' />
        </form>



    </body>
</html>
