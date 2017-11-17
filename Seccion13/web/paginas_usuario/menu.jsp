<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();
if(sesion.getAttribute("Usuario") == null){
    response.sendRedirect("../index.jsp");
}else{
    int pos = request.getParameter("pos")!=null?Integer.parseInt(request.getParameter("pos")):0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seccion13</title>
        <link rel="shortcut icon" href="../IMG/escudo2.ico" />
        <style type="text/css">
        body{
            background: #fafafa;
        }
        /* The navigation bar */
        .navbar {
            overflow: hidden;
            background-color: #fafafa;
            position: fixed; /* Set the navbar to fixed position */
            top: 0; /* Position the navbar at the top of the page */
            width: 100%; /* Full width */
            height: 15%;
            color: #d32f2f;
            z-index: 10;
            margin-top: -10px;
        }
        .navbar ul li a{
            margin-right: 5px;
        }
        .navbar ul li .es{
            background: rgba(250,0,0,.5);
            color: #fafafa;
            float:right;
            margin-right:30px;
        }
        /* Links inside the navbar */
        .navbar a {
            float: left;
            display: block;
            color: #d32f2f;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 18px;
            border-radius: 5px;
        }
        .carousel{
            margin-top: 7%;
            z-index: 5;
        }
        </style>
    </head>
    <body>
        <div class="navbar">
            <a href="#" class="brand-logo center " style="margin-right: 6%;">
                <div style="margin-top: 10px;position:relative;" class="valign-wrapper">
                    <img style="height: 90px; width:90px;" class="circle responsive-img" src="../IMG/escudo2.png" alt=""/>
                    <h5 class="valign">&nbsp;&nbsp;&nbsp;Sección 13 Rama Médica&nbsp;&nbsp;&nbsp;
                        <br>
                        <center><span class="light valign" style="font-size:18px;line-height: 50px;">"Presencia, Trabajo y Honestidad"</span></center>
                    </h5>
                </div>  
            </a>
            <br>
            <ul class="tabs-transparent valign">
                <b>
                <li class="tab active"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Para visualizar el contenido debes Iniciar Sesion."<%}%><%else{%>href="inicio.jsp"<%}%>>Inicio</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="inicio.jsp#sec"<%}%>>Secretario General</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="sobre_nosotros.jsp"<%}%>>Historia</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="directorio.jsp"<%}%>>Directorio</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Prueba Iniciando Sesion o bien Registrandote."<%}%><%else{%>href="carteras.jsp"<%}%>>Carteras</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Debes Iniciar Sesión."<%}%><%else{%>href="ubicacion.jsp"<%}%>>Ubicación</a></li>
                <li class="tab es"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Debes Iniciar Sesión."<%}%><%else{%>href="galeria.jsp"<%}%>>Galeria</a></li>
                </b>
                <li><a class="waves-effect waves-light es" href="../CerrarSesion">Cerrar Sesión</a></li>
            </ul>
        </div>
    </body>
</html>
<%}%>