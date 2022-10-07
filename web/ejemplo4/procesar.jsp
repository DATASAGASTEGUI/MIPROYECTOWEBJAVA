<%-- 
    Document   : procesar
    Created on : 29-sep-2022, 12:41:44
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
    <center><h1>PROCESAR DATOS</h1></center>
        <%
            String mensaje = request.getParameter("txtMensaje");
            String clave = request.getParameter("txtClave");
            String oculto = request.getParameter("txtOculto");

            out.print("1. Text Normal: " + mensaje + "<br>");
            out.print("2. Text Clave : " + clave + "<br>");
            out.print("3. Text Oculto : " + oculto + "<br>");

            String mascota = request.getParameter("radioMascota");
            out.print("4. Botón Radio: " + mascota + "<br>");

            String[] jobi = request.getParameterValues("chkJobi");
            if (jobi != null) {
                for (int i = 0; i < jobi.length; i++) {
                    out.print("5. Caja de seleccion multiple: " + jobi[i] + "<br>");
                }
            }

            String codigoPais = request.getParameter("cboCodigoPais");
            out.print("6. Lista desplegable. Selección Simple: " + codigoPais + "<br>");
            /*
            String[] codigoPais = request.getParameterValues("cboCodigoPais");
            for(int i=0; i<codigoPais.length; i++) {
                out.print("6. Lista desplegable. Selección Simple: " + codigoPais[i] + "<br>");
            }
             */
            String color = request.getParameter("sliderColor");
            out.print("7. Slider. Selección Simple: " + color + "<br>");
        %>
</body>
</html>
