<%-- 
    Document   : boton_radio
    Created on : 03-oct-2022, 13:40:50
    Author     : RYZEN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP8</title>
    </head>
    <body>
    <center><h3>CONVERTIR UNA CADENA: MAYUSCULA,MINUSCULA,PRIMERA LETRA MAYUSCULA</h3></center>
    <center>

        <%
            String salidaf = "";
            String entradaf = "";
            if (request.getParameter("cmdConvertir") != null) {
                String entrada = request.getParameter("txtCadena");
                String botonradio = request.getParameter("radioCadena");
                String salida = "";
                switch (botonradio) {
                    case "may":
                        salida = entrada.toUpperCase();
                        break;
                    case "min":
                        salida = entrada.toLowerCase();
                        break;
                    case "pri":
                        entrada = entrada.toLowerCase();
                        String letra = String.valueOf(entrada.charAt(0)).toUpperCase();
                        salida = letra + entrada.substring(1, entrada.length());
                        break;
                }
                salidaf = salida;

            }

            if (request.getParameter("cmdNuevo") != null) {
                salidaf = "";
                entradaf = "";
            }

        %>


        <form action="">
            ENTRADA CADENA<br><input type="text" name="txtCadena" />
            <p>
                ACCION:<br><br>
                <input type="radio" name="radioCadena" value="may" value="<%=entradaf%>"/> Mayúscula
                <input type="radio" name="radioCadena" value="min"/> Minúscula  
                <input type="radio" name="radioCadena" value="pri"/> Primer Letra Mayúscula
            </p>
            SALIDA<br><input type="text" name="txtSalida" value="<%=salidaf%>"/><br><br>
            <input type="submit" name="cmdConvertir" value='Convertir' />
            <input type="submit" name='cmdNuevo' value='Nuevo' />        
        </form>   
    </center>


</body>
</html>
