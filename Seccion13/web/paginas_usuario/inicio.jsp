<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();
if(sesion.getAttribute("Usuario") == null){
    response.sendRedirect("../index.jsp");
}else{
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>
        <title>Sección 13</title>
        <link rel="shortcut icon" href="../IMG/escudo2.ico" />
        <style type="text/css">
            a{
                text-decoration: none;
                color:#212121;
            }
            a:hover{
                color:#fafafa;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='1'/>
        </jsp:include>
        <div class="carousel carousel-slider center" data-indicators="true" style="background:url(../IMG/fodo.jpg);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;">
            <div class="carousel-fixed-item center">
                <a class="btn waves-effect white grey-text darken-text-2">Noticias</a>
            </div>
            <%ArrayList<Post> p = new Post().obtenerPost();
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
        <div class="container sec">
            <div class="row">
                <div class="col s4"><center><img style="width:150px;" class="responsive-img right" src="../IMG/dr_jaime.png" alt=""/></center></div>
                <div class="col s4">
                    <br>
                    <center>
                        <b style="font-size:28px;color:#424242;">Dr. Jaime Patiño Gutierrez</b>
                        <br>
                        <br>
                        <span style="font-size:25px;color:#424242;">Secretario General</span> 
                    </center>
                </div>
            </div>
        </div>
        <br>
        <div style="background: url(../IMG/hoja.jpg);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;">
        <div style="background: rgba(230,150,90,.9);padding:30px;">
        <div class="container grey-text text-darken-4">
            <div class="row">
                <div class="col s3">
                    <br>
                    <a href="noticias.jsp?tipo=Noticia"><center>
                        <i class="medium material-icons">comment</i>
                        <br>
                        <b style="font-size:25px;">Noticias</b>
                        <br>
                        <br>
                        <span style="font-size:23px;">Infórmate sobre las acciones de tu Sindicato</span> 
                    </center></a>
                </div>
                <div class="col s3">
                    <br>
                    <a href="noticias.jsp?tipo=Convocatoria"><center>
                        <i class="medium material-icons">assignment</i>
                        <br>
                        <b style="font-size:25px;">Convocatorias</b>
                        <br>
                        <br>
                        <span style="font-size:23px;">Revisa las más recientes convocatorias</span> 
                    </center></a>
                </div>
                <div class="col s3">
                    <br>
                    <a href="noticias.jsp?tipo=Formato"><center>
                        <i class="medium material-icons">archive</i>
                        <br>
                        <b style="font-size:25px;">Formatos</b>
                        <br>
                        <br>
                        <span style="font-size:23px;">Descarga los formatos para tus trámites</span> 
                    </center></a>
                </div>
                <div class="col s3">
                    <br>
                    <a href="noticias.jsp?tipo=Aviso"><center>
                        <i class="medium material-icons">announcement</i>
                        <br>
                        <b style="font-size:25px;">Avisos</b>
                        <br>
                        <br>
                        <span style="font-size:23px;">Esta al pendiente de los avisos más importantes</span> 
                    </center></a>
                </div>
            </div>
        </div>
        </div>
        </div>
        <br>
        <br>
        <jsp:include page="footer.jsp" flush="true"/>
        <script>
            function myfunction(){
                var filter = document.getElementById("buscador").value.toUpperCase();
                var posts = document.getElementsByClassName("card");
                var title;
                for(i = 0; i < posts.length; i++){
                    title = posts[i].getElementsByTagName('span')[0];
                    if(title.innerHTML.toUpperCase().indexOf(filter) > -1){
                        posts[i].style.display= "";
                    }else{
                        posts[i].style.display= "none";
                    }
                }

            }
        </script>
    </body>
</html>
<%}%>