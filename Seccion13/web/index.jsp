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
        <title>Seccion13</title>
    </head>
    <body>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        
        
        
        
        
        <div class="navbar-fixed">
            <nav class="nav-extended #d32f2f red darken-2">
                <div class="nav-wrapper ">
                    
                    <a href="#" class="brand-logo center ">
                        
                        <div style="margin-top: 10px;"class="valign-wrapper">
                            <img style="max-height:  100px;" class="circle responsive-img" src="IMG/escudo1.jpg" alt=""/>
                            <h3 class="valign">&nbsp;&nbsp;&nbsp;Seccion 13 "Rama Medica"&nbsp;&nbsp;&nbsp;</h3>
                            <img style="max-width: 100px;" class=" circle responsive-img" src="IMG/escudo2.jpg" alt=""/>
                        </div>  
                        
                    </a>
                    
                  <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                  <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="#">Iniciar Sesion</a></li>
                    <li><a href="#">Registrarse</a></li>
                  </ul><br><br>
                <ul class="side-nav" id="mobile-demo">
                  <li><a href="#">Iniciar Sesion</a></li>
                    <li><a href="#">Registrarse</a></li>
                </ul>
                </div>
                <div class="nav-content">
                  <ul class="tabs tabs-transparent">
                    <li class="tab"><a href="#test1">Test 1</a></li>
                    <li class="tab"><a class="active" href="#test2">Test 2</a></li>
                    <li class="tab disabled"><a href="#test3">Disabled Tab</a></li>
                    <li class="tab"><a href="#test4">Test 4</a></li>
                    <li class="tab"><a href="#test4">Test 4</a></li>
                    <li class="tab"><a href="#test4">Test 4</a></li>
                    <li class="tab"><a href="#test4">Test 4</a></li>
                    <li class="tab"><a href="#test4">Test 4</a></li>
                  </ul>
                </div>
              </nav>
            
            
        </div>
        
                <div class="carousel carousel-slider">
                    <div class="carousel-fixed-item center">
                        <a class="btn waves-effect white grey-text darken-text-2">button</a>
                      </div>
                    
                    <a class="carousel-item" href="#one!"><img src="IMG/chales.png"></a>
                    
                </div>
        <script>
            $('.carousel.carousel-slider').carousel({fullWidth: true});
            $(document).ready(function(){
            $('.carousel').carousel();
            });
        </script>
        
        <footer class="page-footer #d32f2f red darken-2">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
          </div>
        </footer>
    </body>
</html>
