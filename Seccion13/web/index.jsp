<%-- 
    Document   : index
    Created on : 26-feb-2017, 18:03:40
    Author     : Fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Seccion13</title>
    </head>
    <body class="#d32f2f red darken-2">
        
        <!-- Navegador -->
        <nav class="nav-extended">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">Logo</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a class="waves-effect waves-light" href="#modal1">Iniciar Sesion</a></li>
        <li><a class="waves-effect waves-light" href="#modal2">Registrarse</a></li>
      </ul>
      <ul class="side-nav" id="mobile-demo">
        <li><a class="waves-effect waves-light" href="#modal1">Iniciar Sesion</a></li>
        <li><a class="waves-effect waves-light" href="#modal2">Registrarse</a></li>
      </ul>
    </div>
    <div class="nav-content">
      <ul class="tabs tabs-transparent">
        <li class="tab"><a href="#test1">Test 1</a></li>
        <li class="tab"><a class="active" href="#test2">Test 2</a></li>
        <li class="tab disabled"><a href="#test3">Disabled Tab</a></li>
        <li class="tab"><a href="#test4">Test 4</a></li>
      </ul>
    </div>
                <script>$(".button-collapse").sideNav();</script>
  </nav>
        
        <!-- Slider -->
        <div class="carousel carousel-slider">
            <a class="carousel-item" href="#one!"><img src="IMG/img2.jpg" alt=""/></a>
            <a class="carousel-item" href="#two!"><img src="IMG/img3.jpg" alt=""/></a>
            <a class="carousel-item" href="#three!"><img src="IMG/img4.jpg" alt=""/></a>
            <a class="carousel-item" href="#four!"><img src="IMG/img5.jpg" alt=""/></a>
        </div>
        <script>
            $('.carousel.carousel-slider').carousel({fullWidth: true});
        </script>
        
        
        
        
        <!-- Footer -->
        <footer class="page-footer #d32f2f red darken-2 z-depth-5">
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
          <div class="footer-copyright #b71c1c red darken-4">
            <div class="container #b71c1c red darken-4">
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
					  <label for="password">Password</label>
					</div>
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
				<form class="col s12" name="registro" method="post" action="RegistrarUsuario">
				  <div class="row">
					<div class="input-field col s12 l6">
					  <input id="first_name" name="nombre" type="text" class="validate">
					  <label for="first_name">Nombre</label>
					</div>
					<div class="input-field col s12 l6">
					  <input id="last_name" name="ap" type="text" class="validate">
					  <label for="last_name">Apellido Paterno</label>
					</div>
                                      <div class="input-field col s12 l6">
					  <input id="last_name" name="am" type="text" class="validate">
					  <label for="last_name">Apellido Materno</label>
					</div>
				  </div>
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
                                          <option value="1">Option 1</option>
                                          <option value="2">Option 2</option>
                                          <option value="3">Option 3</option>
                                          <option value="4">Option 3</option>
                                          <option value="5">Option 3</option>
                                          <option value="6">Option 1</option>
                                          <option value="7">Option 2</option>
                                          <option value="8">Option 3</option>
                                          <option value="9">Option 3</option>
                                          <option value="10">Option 3</option>
                                          <option value="11">Option 1</option>
                                          <option value="12">Option 2</option>
                                          <option value="13">Option 3</option>
                                          <option value="14">Option 3</option>
                                          <option value="15">Option 3</option>
                                          <option value="16">Option 1</option>
                                          <option value="17">Option 2</option>
                                          <option value="18">Option 3</option>
                                          <option value="19">Option 3</option>
                                          <option value="20">Option 3</option>
                                          <option value="21">Option 1</option>
                                          <option value="22">Option 2</option>
                                          <option value="23">Option 3</option>
                                          <option value="24">Option 3</option>
                                          <option value="3">Option 3</option>
                                          <option value="1">Option 1</option>
                                          <option value="2">Option 2</option>
                                          <option value="3">Option 3</option>
                                          <option value="3">Option 3</option>
                                          <option value="3">Option 3</option>
                                          <option value="1">Option 1</option>
                                          <option value="2">Option 2</option>
                                          <option value="3">Option 3</option>
                                          <option value="3">Option 3</option>
                                          <option value="3">Option 3</option>
                                          <option value="1">Option 1</option>
                                          <option value="2">Option 2</option>
                                          <option value="3">Option 3</option>
                                          <option value="3">Option 3</option>
                                          <option value="3">Option 3</option>
                                        </select>
                                        <label>Sección Sindical</label>
                                      </div>
                                    </div>
				  <div class="row">
					<div class="input-field col s12">
					  <input id="email" name="email" type="email" class="validate">
					  <label for="email">Email</label>
					</div>
				  </div>
				  <div class="row">
					<div class="input-field col s4 offset-s4">
					  <input id="password" name="password" type="password" class="validate">
					  <label for="password">Password</label>
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
		  <script>
			  $(document).ready(function(){
				// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
				$('.modal').modal();
			  });
		  </script>
                  
            
        
	</body>
</html>
