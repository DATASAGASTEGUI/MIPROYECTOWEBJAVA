<%-- 
    Document   : newjsp
    Created on : 30-sep-2022, 14:04:15
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
        <h1>Hello World!</h1>


        <%
            String n1f = "";
            String n2f = "";
            String rf = "";
            String mensaje = "";
            if (request.getParameter("cmdCalcular") != null) {
                try {
                    double n1, n2, r=0.0;
                    String operacion;
                    //ENTRADA
                    n1 = Double.parseDouble(request.getParameter("txtN1"));
                    n2 = Double.parseDouble(request.getParameter("txtN2"));
                    operacion = request.getParameter("cboAritmetica");
                    switch (operacion) {
                        case "sumar":
                            r = n1 + n2;
                            break;
                        case "restar":
                            r = n1 - n2;
                            break;
                        case "multiplicar":
                            r = n1 * n2;
                            break;
                        case "dividir":
                            r = n1 / n2;
                            break;
                    }
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
        %>
    <center>
        <form action="" method="post">
            Número 1?<input type="text" name="txtN1" value="<%=n1f%>" />
            Número 2?<input type="text" name="txtN2" value="<%=n2f%>" />
            Resultado:<input type="text" name="txtR" value="<%=rf%>" disabled />
            Mensaje:<input type="text" name="txtM" value="<%=mensaje%>" disabled />

            <select name="cboAritmetica" size="1">
                <option value="sumar">Sumar</option>  
                <option value="restar">Restar</option> 
                <option value="multiplicar">Multiplicar</option> 
                <option value="dividir">Dividir</option> 
            </select> 

            <input type="submit" name="cmdCalcular" value='Calcular' />
            <input type="submit" name='cmdNuevo' value='Nuevo' />
        </form>
    </center>

</body>
</html>
