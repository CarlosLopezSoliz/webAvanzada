

<%@page import="modelo.Maestro"%>
<%@page import="modelo.JavaDB"%>
<%@page import="modelo.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controlador.login_controlador"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Inicio</title>
    </head>
    <body>
        <%
         //Sesion activa
            Maestro maestro=new Maestro();

            if (session != null) {
                if (session.getAttribute("usuario") != null && session.getAttribute("tipo") != null) {
                    String usuario = (String) session.getAttribute("usuario");
                    String tipo = (String) session.getAttribute("tipo");
                    
                    //obtener el nombre
                    String name= maestro.getMaestro(usuario);
                    
                    maestro.setNombreMaestro(name);
                    
                } else {
                    response.sendRedirect("index.jsp");
                }
            }
         %>
        <nav class="navegacion-usuario">

            <a href="inicioadmin.jsp">Inicio</a>
            <a href="seleccionarJefe">Agregar Carrera</a>
            <a href="verMaestros_controlador">Profesores</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>
        </nav> 
        
        
        <h2 class="Verde-5" Style="font-size:4rem;">¡BIENVENIDO<span class="Verde-2"> ADMINISTRADOR </span>!</h2>

    </body>
</html>
