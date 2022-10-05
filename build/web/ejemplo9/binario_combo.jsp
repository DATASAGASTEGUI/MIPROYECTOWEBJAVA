<%-- 
    Document   : binario
    Created on : 04-oct-2022, 13:53:21
    Author     : delga
--%>

<%@page import="misrc.Metodos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Calcular de Decimal a binario y Viceversa</h1></center>
        <%
            String n1f = "";
            String n2f = "";
            String placeHolder1 = "Ingresa el numero";
            String placeHolder2 = "Resultado";

            if (request.getParameter("reset") != null) {
                n1f = "";
                n2f = "";
            }
            if (request.getParameter("cmdCalcular") != null) {
                try {
                    String opcion = request.getParameter("cboConversion");
                    int numero = Integer.parseInt(request.getParameter("txtN1"));

                    if (opcion.equalsIgnoreCase("opcion1")) {
                        int decimal = numero;
                        int binario = Metodos.obtenerBinarioFromDecimal(decimal);
                        n2f = String.valueOf(binario);
                        n1f = String.valueOf(decimal);
                    }
                    if (opcion.equalsIgnoreCase("opcion2")) {
                        int binario = numero;
                        int decimal = Metodos.obtenerDecimalFromBinario(binario);
                        n2f = String.valueOf(decimal);
                        n1f = String.valueOf(binario);
                    }

                } catch (Exception e) {
                    n1f = "";
                    n2f = "";

                }

            }

        %>



    <center>
        <form action="">
            <input type="text" name="txtN1" value="<%=n1f%>" placeholder="<%=placeHolder1%>"/>
            <input type="text" name="txtN2" value="<%=n2f%>" placeholder="<%=placeHolder2%>"/>

            <select name="cboConversion" size="1">
                <option value="opcion1">De Decimal a Binario</option>  
                <option value="opcion2">De Binario a Decimal</option> 
            </select> </p>

            <input type="submit" name="cmdCalcular" value="Calcular"/>
            <input type="submit" name="reset" value="Nuevo"/>




        </form>
    </center>
</body>
</html>

