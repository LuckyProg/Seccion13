<%@page import="Clases.Post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Imagen"%>
<%@page import="Clases.Imagen"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%HttpSession sesion = request.getSession();
String b64 = null;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script src="https://use.fontawesome.com/683092cb82.js"></script>
        <script src="sweetalert-master/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="sweetalert-master/dist/sweetalert.css">
        <title>Seccion13</title>
        <link rel="shortcut icon" href="IMG/escudo2.ico" />
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
            margin-right:8px;
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
                    <img style="height: 90px; width:90px;" class="circle responsive-img" src="IMG/escudo2.png" alt=""/>
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
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="sobre_nosotros.jsp"<%}%>>Secretario General</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="sobre_nosotros.jsp"<%}%>>Historia</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="directorio.jsp"<%}%>>Directorio</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Prueba Iniciando Sesion o bien Registrandote."<%}%><%else{%>href="carteras.jsp"<%}%>>Carteras</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Debes Iniciar Sesión."<%}%><%else{%>href="galeria.jsp"<%}%>>Galeria</a></li>
                <li class="tab es"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Debes Iniciar Sesión."<%}%><%else{%>href="ubicacion.jsp"<%}%>>Ubicación</a></li>
                </b>
                <li><a class="waves-effect waves-light es" href="#modal1">Iniciar Sesion</a></li>
                <li><a class="waves-effect waves-light es" href="#modal2">Registrarse</a></li>
            </ul>
        </div>
       
        <div class="carousel carousel-slider center" data-indicators="true" style="background:url(IMG/fodo.jpg);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;">
            <div class="carousel-fixed-item center">
                <a class="btn waves-effect white grey-text darken-text-2">Noticias</a>
            </div>
            <%ArrayList<Post> p = new Post().obtenerPostporTipo("Noticia");
            if(p.size()>0){%>
            <div class="carousel-item white-text" href="#one!" style="background: rgba(250,100,100,.8);">
                <br>
                <br>
                <%=p.get(0).getFecha()%>
                <h1 style="font-size:30px;"><b><%=p.get(0).getTitulo()%></b></h1>
                <p class="white-text" style="font-size:20px;"><%=p.get(0).getTexto()%></p>
            </div>
            <%}if(p.size()>1){%>
            <div class="carousel-item white-text" href="#one!" style="background: rgba(250,100,100,.8);">
                <br>
                <br>
                <%=p.get(0).getFecha()%>
                <h1 style="font-size:30px;"><b><%=p.get(1).getTitulo()%></b></h1>
                <p class="white-text" style="font-size:20px;"><%=p.get(1).getTexto()%></p>
            </div>
            <%}if(p.size()>2){%>
            <div class="carousel-item white-text" href="#one!" style="background: rgba(250,100,100,.8);">
                <br>
                <br>
                <%=p.get(0).getFecha()%>
                <h1 style="font-size:30px;"><b><%=p.get(2).getTitulo()%></b></h1>
                <p class="white-text" style="font-size:20px;"><%=p.get(2).getTexto()%></p>
            </div>
            <%}if(p.size()>3){%>
            <div class="carousel-item white-text" href="#one!" style="background: rgba(250,100,100,.8);">
                <br>
                <br>
                <%=p.get(0).getFecha()%>
                <h1 style="font-size:30px;"><b><%=p.get(3).getTitulo()%></b></h1>
                <p class="white-text" style="font-size:20px;"><%=p.get(3).getTexto()%></p>
            </div>
            <%}%>
        </div>
        <script type="text/javascript">
             $('.carousel.carousel-slider').carousel({fullWidth: true});
        </script>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col s4"><center><img style="width:150px;" class="responsive-img right" src="IMG/dr_jaime.png" alt=""/></center></div>
                <div class="col s4">
                    <br>
                    <center>
                        <b style="font-size:28px;">Dr. Jaime Patiño Gutierrez</b>
                        <br>
                        <br>
                        <span style="font-size:25px;">Secretario General</span> 
                    </center>
                </div>
            </div>
        </div>
        <br>
        <br>
        <!-- Modal Structure -->
        <div id="modal1" class="modal col s12 m2" style="border-radius:15px;">
              <div class="modal-content" style="margin-top:-30px;margin-bottom:-40px;">
                &nbsp;&nbsp;&nbsp;<h4><i class="medium material-icons" style="position:relative;top:10px;">perm_identity</i>&nbsp;Iniciar Sesión</h4>
                <br>
                <div class="row">
                      <form class="col s12" name="login" method="post" action="IniciarSesion" >
                        <div class="row">
                              <div class="input-field col s12">
                                <input id="email" type="email" name="email" class="validate">
                                <label for="email">Correo</label>
                              </div>
                        </div>
                        <div class="row">
                              <div class="input-field col s12">
                                <input id="password" type="password" name="password" class="validate">
                                <label for="password">Contraseña</label>
                              </div>
                        </div>
                        <div class="row">
                            <a href="#modal3"><i class="material-icons">vpn_key</i>&nbsp;Olvidé mi contraseña</a>
                        </div>
                          <div class="modal-footer" style="padding-right:40px;">
                <button class="btn waves-effect waves-light #d32f2f red darken-2" type="submit" name="cosa"  style="margin-top:-13px;">Iniciar
                      <i class="material-icons right">send</i>
                </button>
              </div>
                      </form>
                </div>
              </div>

        </div>		  
        <!-- Modal Structure -->
        <div id="modal2" class="modal col s12 m2" style="border-radius:15px;">
              <div class="modal-content" style="margin-top:-30px;margin-bottom:-40px;">
                &nbsp;&nbsp;<h4><i class="medium material-icons" style="position:relative;top:10px;">perm_identity</i>&nbsp;Registrarse</h4>
                <br>
                <div class="row">
                    <form class="col s12" name="registro" method="post" action="RegistrarU" accept-charset="ISO-8859-1">
                        <div class="row">
                              <div class="input-field col s12 l6">
                                <input id="first_name" name="nombre" type="text" class="validate" required>
                                <label for="first_name">* Nombre</label>
                              </div>
                              <div class="input-field col s12 l6">
                                <input id="last_name" name="ap" type="text" class="validate" required>
                                <label for="last_name">* Apellido Paterno</label>
                              </div>
                            <div class="input-field col s12 l6">
                                <input id="last_name" name="am" type="text" class="validate" required>
                                <label for="last_name">* Apellido Materno</label>
                            </div>
                            <div class="input-field col s12 l6">
                                <i class="material-icons prefix">phone</i>&nbsp;<input id="telefono" name="telefono" type="number" class="validate" required>
                                <label for="telefono">* Teléfono</label>
                            </div>
                              <div class="input-field col s8">
                                <input id="email" name="email" type="email" class="validate" required>
                                <label for="email">*Correo</label>
                              </div>
                              <div class="input-field col s4 offset-s4">
                                <input id="password" name="password" type="password" class="validate" required>
                                <label for="password">*Password</label>
                              </div>
                        </div>
                        <br><br><br>
                        <h6>Opcional</h6>
                          <div class="row">
                              <div class="input-field col s12">
                                <input id="last_name" name="institucion" type="text" class="validate">
                                <label for="last_name">Institución</label>
                              </div>
                              <div class="input-field col s12">
                                <input id="last_name" name="unidad_ads" type="text" class="validate">
                                <label for="last_name">Unidad de Adscripción</label>
                              </div>
                              <div class="input-field col s12">
                                <input id="last_name" name="no_empleado" type="number" class="validate">
                                <label for="last_name">No. Empleado</label>
                              </div>
                              <div class="input-field col s12">
                              <select name="seccion_sindi">
                                <option value="" disabled selected>-</option>
                                <%for(int x = 1; x < 41; x++){%>
                                <option value="<%=x%>"><%=x%></option>
                                <%}%>
                              </select>
                              <label>Sección Sindical</label>
                            </div>
                          </div>
                          <script>
                            $(document).ready(function() {
                              $('select').material_select();
                            });
                          </script>
                          <div class="modal-footer" style="padding-right:40px;">
                              <button class="btn waves-effect waves-light #d32f2f red darken-2" type="submit" name="action" style="margin-top:-13px;">Registrarse
                                    <i class="material-icons right">send</i>
                              </button>
                          </div>
                      </form>
                </div>
              </div>

        </div>
        <!-- Modal Structure -->
        <div id="modal3" class="modal col s12 m2" style="border-radius:15px;">
              <div class="modal-content" style="margin-top:-30px;margin-bottom:-40px;">
                &nbsp;&nbsp;&nbsp;<h4><i class="medium material-icons" style="position:relative;top:10px;">vpn_key</i>&nbsp;Cambiar contraseña</h4>
                <br>
                <div class="row">
                      <form class="col s12" name="login" method="post" action="CambiarPass">
                        <div class="row">
                              <div class="input-field col s12">
                                <input id="email" type="email" name="email" class="validate">
                                <label for="email">Correo</label>
                              </div>
                        </div>
                        <div class="row">
                              <div class="input-field col s12">
                                <input id="password" type="password" name="password" class="validate">
                                <label for="password">Nueva contraseña</label>
                              </div>
                        </div>
                          <div class="modal-footer" style="padding-right:40px;">
                <button class="btn waves-effect waves-light #d32f2f red darken-2" type="submit" name="cosa"  style="margin-top:-13px;">Cambiar
                      <i class="material-icons right">send</i>
                </button>
              </div>
                      </form>
                </div>
              </div>

        </div>
        <script>
                $(document).ready(function(){
                      // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
                      $('.modal').modal();
                });
        </script>
        <%String ses = request.getParameter("bjkdfhs2u2hd3kj2d3bsfhdshfdsbfd8d7dskjff32jd0972hdsfhdsavfdbfdbsfnds892bafudhfjfhdisf") != null ? request.getParameter("bjkdfhs2u2hd3kj2d3bsfhdshfdsbfd8d7dskjff32jd0972hdsfhdsavfdbfdbsfnds892bafudhfjfhdisf"):"no";
        if(ses.equalsIgnoreCase("hf8hans9djna9900an")){%>
        <script>
            swal("Oops!", "Usuario y/o contraseña incorrectos", "error");
        </script>
        <%}
        if(ses.equalsIgnoreCase("d8n29dns9n0ns72")){%>
        <script>
            swal("Ahora puedes iniciar sesión", "El registro ha sido realizado correctamente", "success");
        </script>
        <%}
        if(ses.equalsIgnoreCase("687jj8bka9")){%>
        <script>
            swal("Se ha enviado la confirmación a tu correo electrónico");
        </script>
        <%}
        if(ses.equalsIgnoreCase("vyfudghifi8adk")){%>
        <script>
            swal("Ahora puedes iniciar sesión", "El cambio de contraseña ha sido realizado correctamente", "success");
        </script>
        <%}%>
        <jsp:include page="paginas_usuario/footer.jsp" flush="true"/>
    </body>
</html>
