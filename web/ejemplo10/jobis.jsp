<%-- 
    Document   : jobis
    Created on : 05-oct-2022, 14:08:52
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
        <h1>SELECCIONE SUS JOBIS</h1>

        <%
            boolean banderaf = false;
            String[] jobisf = null;
            if (request.getParameter("cmdCalcular") != null) {
                String[] jobis = request.getParameterValues("chkJobi");
                jobisf = jobis;
                banderaf = true;

                /*
                 for(int i=0; i<jobis.length;i++) {
                     out.print(jobis[i]);
                 }
                 */
            }

        %>




    <center>
        <form action="">
            <input type="checkbox" name="chkJobi" value="Ajedrez" /> Ajedrez
            <input type="checkbox" name="chkJobi" value="Lectura"/> Lectura 
            <input type="checkbox" name="chkJobi" value="Paseo"/> Paseo
            <input type="checkbox" name="chkJobi" value="Película"/> Película
            <input type="checkbox" name="chkJobi" value="Musica"/> Musica
            <input type="checkbox" name="chkJobi" value="Gamer"/> Gamer

            <input type="submit" name="cmdCalcular" value="Calcular"/>
            <input type="submit" name="reset" value="Nuevo"/>
        </form>

        <%            if (banderaf == true) {
                for (int i = 0; i < jobisf.length; i++) {
                    out.print(jobisf[i]);
                }
            }

        %>

    </center>


</body>
</html>
