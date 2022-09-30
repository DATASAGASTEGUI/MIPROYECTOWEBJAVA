<%-- 
    Document   : tabla_multiplicar.jsp
    Created on : 28-sep-2022, 14:08:23
    Author     : Walter Ismael Sagástegui Lescano
    Url        : http://localhost:8089/MIPROYECTOWEBJAVA/ejemplo4/componentes_html.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action='procesar.jsp'>
            <p>1. Campo de texto normal: <input type="text" name="txtMensaje" /> </p>
            <p>2. Campo de texto clave : <input type="password" name="txtClave" /> </p>
            <p>3. Campo de texto oculto: <input type="hidden" name="txtOculto" value="Texto Oculto" /> </p> 

            <p>4. Botón radio (Seleccion simple): 
                <input type="radio" name="radioMascota" value="Gato" /> Gato
                <input type="radio" name="radioMascota" value="Perro"/> Perro  
                <input type="radio" name="radioMascota" value="Loro"/> Loro 
                <input type="radio" name="radioMascota" value="Tortuga"/> Tortuga </p>

            <p>5. Caja de seleccion multiple: CheckBox 
                <input type="checkbox" name="chkJobi" value="Ajedrez" /> Ajedrez
                <input type="checkbox" name="chkJobi" value="Lectura"/> Lectura 
                <input type="checkbox" name="chkJobi" value="Paseo"/> Paseo
                <input type="checkbox" name="chkJobi" value="Película"/> Película </p>
            
            <p>6. Lista desplegable. Selección Simple:
                <select name="cboCodigoPais" size="1">
                    <option value="CL">Chile</option>  
                    <option value="PE">Perú</option> 
                    <option value="ES">España</option> 
                    <option value="MX">Mexico</option> 
                    <option value="UK">Inglaterra</option> 
                 </select> </p>

            <p>Enviar: <input type="submit" name='subEnviar' value='Enviar' />
        </form>
    </body>
</html>
