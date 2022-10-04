<%-- 
    Document   : decimal_binario
    Created on : 04-oct-2022, 14:09:01
    Author     : RYZEN
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
    <center><h1>CONVERSION DECIMAL A BINARIO</h1></center>
        <%
            String n1f = "";
            String n2f = "";
            String rf = "";

            if (request.getParameter("reset") != null) {
                n1f = "";
                n2f = "";
                rf = "";
            }
            if (request.getParameter("cmdCalcular") != null) {
                try {
                    int decimal = Integer.parseInt(request.getParameter("txtN1"));
                    int binario = Metodos.obtenerBinarioFromDecimal(decimal);
                    n1f = String.valueOf(decimal);
                    n2f = String.valueOf(binario);

                } catch (Exception e) {
                    n1f = "";
                    n2f = "";
                    rf = "";

                }

            }

        %>
    <center>
        <form action="">
            Decimal? <input type="text" name="txtN1" value="<%=n1f%>"/>
            Binario: <input type="text" name="txtN2" value="<%=n2f%>"/>
            <input type="submit" name="cmdCalcular" value="Calcular"/>
            <input type="submit" name="reset" value="Nuevo"/>




        </form>
    </center>

</form>
</center>







<%
    int n = 4;
    out.println(Metodos.obtenerBinarioFromDecimal(n));

%>

</body>
</html>
