

<%@page import="modelo.Materia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Modificar</title>
    </head>
    
        <nav>
            <a href="jefe_controlador">Inicio</a>
            <a href="">Perfil</a>

            <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

        </nav>
    <body>
        
        <%  Materia ma = (Materia) request.getAttribute("materia");%>
            
        <h1>Modificar Materia</h1>
        
        <form action="modificarMateria_controlador2" method="post">
            <label> Clave de Materia</label>
            <input type="hidde" name="idMateria" required="" value="<%= ma.getIdMateria()%>"> 
            <label>Nombre Materia</label>
            <input type="text" name="nombreMateria" required="" value="<%= ma.getNombreMateria()%>">
            
            Semestre:
            <select name="semestre">
                <option selected value="0"> Seleccionar</option>
                <option >1</option> 
                <option >2</option> 
                <option >3</option>
                <option >4</option> 
                <option >5</option> 
                <option >6</option> 
                <option >7</option> 
                <option >8</option> 
                <option >9</option> 
            </select>

            <br>
            Creditos : 
            <select name="creditos">
                <option selected value="0"> Seleccionar</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            <br>
            Horas teoria:
            <select name="horasTeoria">
                <option selected> Seleccionar</option>
                <option>1</option> 
                <option>2</option> 
                <option>3</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            <br>
            Horas practica:
            <select name="horasPractica">
                <option selected> Seleccionar</option>
                <option>1</option> 
                <option>2</option> 
                <option>3</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            <br>
            
            <label></label>
            <input type="text" name="idCarrera" disabled value="<%= ma.getIdCarrera()%>">
            
            <input type="submit">
            
            

        </form>
        
        
    </body>
</html>
