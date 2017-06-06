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
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <style type="text/css">
            #men ul li a{
                padding:15px;
            }
        </style>
        <title>Menu</title>
    </head>
    <body>
        <!-- Navegador -->
        <nav class="nav-extended #d32f2f red darken-2" style="height: 168px;font-family: 'Roboto', sans-serif;">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo center " style="margin-bottom: 100px;">
                    <div style="margin-top: 10px;"class="valign-wrapper">
                        <img style="max-height: 100px;" class="circle responsive-img" src="../IMG/escudo1.jpg" alt=""/>
                        <h4 class="valign" style="color:#f0f0f0; font-style:normal;">&nbsp;&nbsp;&nbsp;Sección 13 "Rama Médica"&nbsp;&nbsp;&nbsp;
                            <br>
                            <center><span class="light grey-text text-lighten-3 valign" style="font-size:20px;">Dr. Jaime Patiño Gutierrez</span></center>
			</h4>
                        <img style="max-width: 100px;" class=" circle responsive-img" src="../IMG/escudo2.jpg" alt=""/>
                    </div>  
                </a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                  <%if(sesion.getAttribute("Usuario")==null){%>
                    <li><a class="waves-effect waves-light" href="#modal1">Iniciar Sesion</a></li>
                    <li><a class="waves-effect waves-light" href="#modal2">Registrarse</a></li>
                  <%}else{%>
                    <li><a class="waves-effect waves-light" href="../CerrarSesion">Cerrar Sesion</a></li>
                  <%}%>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                  <%if(sesion.getAttribute("Usuario")==null){%>
                    <li><a class="waves-effect waves-light" href="#modal1">Iniciar Sesion</a></li>
                    <li><a class="waves-effect waves-light" href="#modal2">Registrarse</a></li>
                  <%}else{%>
                    <li><a class="waves-effect waves-light" href="../CerrarSesion">Cerrar Sesion</a></li>
                  <%}%>
                </ul>
            </div>
            <div id="men" class="nav-content #d32f2f red darken-1" style="margin-top: 55px;">
              <ul class="tabs-transparent">
                <li class="tab <%=pos==1?"active":""%>"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Para visualizar el contenido debes Iniciar Sesion."<%}%><%else{%>href="inicio.jsp"<%}%>>Inicio</a></li>
                <li class="tab <%=pos==2?"active":""%>"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="sobre_nosotros.jsp"<%}%>>Sobre Nosotros</a></li>
                <li class="tab <%=pos==3?"active":""%>"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="directorio.jsp"<%}%>>Directorio</a></li>
                <li class="tab <%=pos==4?"active":""%>"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Prueba Iniciando Sesion o bien Registrandote."<%}%><%else{%>href="carteras.jsp"<%}%>>Carteras</a></li>
                <li class="tab <%=pos==5?"active":""%>"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Debes Iniciar Sesión."<%}%><%else{%>href="galeria.jsp"<%}%>>Galeria</a></li>
                <li class="tab <%=pos==6?"active":""%>"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Debes Iniciar Sesión."<%}%><%else{%>href="ubicacion.jsp"<%}%>>Ubicación</a></li>
              </ul>
            </div>
            <script>
                $(".button-collapse").sideNav();
                $(document).ready(function(){
                    $('.tooltipped').tooltip({delay: 50});
                });
            </script>
        </nav>
    </body>
</html>
<%}%>