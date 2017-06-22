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
        <style type="text/css">
            #men ul li a{
                padding:15px;
            }
            .nav-extended{
                background: #ef5350; /* For browsers that do not support gradients */
                background: -webkit-linear-gradient(left bottom, #d32f2f, white); /* For Safari 5.1 to 6.0 */
                background: -o-linear-gradient(top right, #d32f2f, white); /* For Opera 11.1 to 12.0 */
                background: -moz-linear-gradient(top right, #d32f2f, white); /* For Firefox 3.6 to 15 */
                background: linear-gradient(to top right, #d32f2f, white); /* Standard syntax */
            }
            .page-footer{
              background: #e53935; /* For browsers that do not support gradients */
              background: -webkit-linear-gradient(#e57373, #d32f2f); /* For Safari 5.1 to 6.0 */
              background: -o-linear-gradient(#e57373, #d32f2f); /* For Opera 11.1 to 12.0 */
              background: -moz-linear-gradient(#e57373, #d32f2f); /* For Firefox 3.6 to 15 */
              background: linear-gradient(#e57373, #d32f2f); /* Standard syntax */
              }
        </style>
    </head>
    <body>
        
        <!-- Navegador -->
        <nav class="nav-extended" style="height: 178px;font-family: 'Roboto', sans-serif;">
            <div class="nav-wrapper">
                <img style="height: 100px; float:left; margin:10px;" class="responsive-img" src="IMG/secretario.png" alt=""/>
                <h5 class="grey-text text-darken-3" style="font-style:normal;float:left; margin-top: 30px;">Dr. Jaime Patiño Gutierrez
                    <br>
                    <span class="grey-text text-darken-4" style="font-size:18px;line-height: 50px;">Secretario General</span>
                </h5>
                <a href="#" class="brand-logo center " style="margin-bottom: 100px;">
                    <div style="margin-top: 10px;"class="valign-wrapper">
                        <img style="height: 100px; width:100px;" class="circle responsive-img" src="IMG/escudo1.jpg" alt=""/>
                        <h4 class="grey-text text-darken-3 valign" style="color:#f0f0f0; font-style:normal;">&nbsp;&nbsp;&nbsp;Sección 13 Rama Médica&nbsp;&nbsp;&nbsp;
                            <br>
                            <center><span class="light grey-text text-darken-4 valign" style="font-size:25px;line-height: 50px;">"Presencia, Trabajo y Honestidad"</span></center>
			</h4>
                        <img style="height: 100px; width:100px;" class=" circle responsive-img" src="IMG/escudo2.jpg" alt=""/>
                    </div>  
                </a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a class="waves-effect waves-light grey-text text-darken-4" href="#modal1">Iniciar Sesion</a></li>
                    <li><a class="waves-effect waves-light grey-text text-darken-4" href="#modal2">Registrarse</a></li>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a class="waves-effect waves-light" href="#modal1">Iniciar Sesion</a></li>
                    <li><a class="waves-effect waves-light" href="#modal2">Registrarse</a></li>
                </ul>
            </div>
            <div id="men" class="nav-content" style="margin-top: 65px; width:100%; height:100px;">
              <ul class="tabs-transparent">
                <li class="tab active"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Para visualizar el contenido debes Iniciar Sesion."<%}%><%else{%>href="inicio.jsp"<%}%>>Inicio</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="sobre_nosotros.jsp"<%}%>>Sobre Nosotros</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Si aún no cuentas con una sesión puedes Registrarte."<%}%><%else{%>href="directorio.jsp"<%}%>>Directorio</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Prueba Iniciando Sesion o bien Registrandote."<%}%><%else{%>href="carteras.jsp"<%}%>>Carteras</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Debes Iniciar Sesión."<%}%><%else{%>href="galeria.jsp"<%}%>>Galeria</a></li>
                <li class="tab"><a <%if(sesion.getAttribute("Usuario")==null){%>class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="Debes Iniciar Sesión."<%}%><%else{%>href="ubicacion.jsp"<%}%>>Ubicación</a></li>
                <li class="tab"><a href="http://docs.wixstatic.com/ugd/9864f8_cc9b20982de64c4ca147cc0f85671503.pdf" target="_blank">CGT</a></li>
              </ul>
            </div>
            <script>
                $(".button-collapse").sideNav();
                $(document).ready(function(){
                    $('.tooltipped').tooltip({delay: 50});
                });
            </script>
        </nav>
        
        <!-- Slider -->
        <div class="carousel carousel-slider">
            <a class="carousel-item" href="#one!"><img src="IMG/chale2.jpg" alt=""/></a>
            <a class="carousel-item" href="#one!"><img src="IMG/chales.png" alt=""/></a>
            
        </div>
        <script>
            $('.carousel.carousel-slider').carousel({fullWidth: true});
        </script>
        
       <!-- Footer -->
        <footer class="page-footer z-depth-5">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
			    <h5 class="white-text">Algo más...</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">> Iniciar Sesión</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">> Registrarse</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">> Acerca de nosotros</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">> Términos de privacidad</a></li>
                </ul>
              </div>
              <div class="col l4 offset-l2 s12">
				<h5 class="white-text">Síguenos...</h5>
                <p class="grey-text text-lighten-4"><br>
					<a target="_blank" title="find us on Facebook" href="https://www.facebook.com/www.alternativa13.infored.mx/">
						<i class="fa fa-facebook" aria-hidden="true" style="font-size:45px;color:#fff;"></i>
					</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a target="_blank" title="follow me on twitter" href="https://twitter.com/alternativa13?lang=es">
						<i class="fa fa-twitter" aria-hidden="true" style="font-size:45px;color:#fff;"></i>
					</a>
				</p>
              </div>
            </div>
          </div>
          <div class="footer-copyright #c62828 red darken-3">
            <div class="container #c62828 red darken-3">
            © 2017 Sección 13 "Rama Médica"
            <a class="grey-text text-lighten-4 right" href="#!">Made by °_° LuckyProg</a>
            </div>
          </div>
        </footer>
        
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
                    <form class="col s12" name="registro" method="post" action="RegistrarUsuario" accept-charset="ISO-8859-1">
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
	</body>
</html>
