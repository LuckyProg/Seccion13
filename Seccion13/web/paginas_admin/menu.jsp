<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
	    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>
        <script src="https://use.fontawesome.com/683092cb82.js"></script>
        <title>Menu</title>
    </head>
    <body>
        <!-- Navegador -->
        <nav class="nav-extended #0d47a1 blue darken-4" style="height: 168px;">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo center " style="margin-bottom: 100px;">
                    <div style="margin-top: 10px;"class="valign-wrapper">
                        <img style="max-height: 100px;" class="circle responsive-img" src="../IMG/escudo1.jpg" alt=""/>
                        <h4 class="valign">&nbsp;&nbsp;&nbsp;Sección 13 "Rama Médica"&nbsp;&nbsp;&nbsp;
                            <br>
                            <span class="light grey-text text-lighten-3 valign" style="font-size:20px;">Dr. Jaime Patiño Gutierrez</span>
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
            <div class="nav-content #0d47a1 blue darken-2" style="margin-top: 55px;">
              <ul>
                  <li><a href="inicio.jsp">Inicio</a></li>
                  <li><a href="usuarios.jsp">Usuarios</a></li>
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
