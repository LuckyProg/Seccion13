
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
        <title>Administrador</title>
    </head>
    <body class="#e3f2fd blue lighten-5">
        <jsp:include page="menu.jsp" flush="true"/>
        <div class="container">
            <br>
            <h5 class="brand-logo" style="color:#757575;">Nueva publicación</h5>
            <form name="f1" method="POST" enctype="multipart/form-data" action="../AgregarPost">
                <div class="card">
                    <div class="card-content">
                        <div class="input-field col s12">
                            <textarea name="texto" id="textarea1" class="materialize-textarea"></textarea>
                            <label for="textarea1">Texto</label>
                        </div>
                    </div>
                    <div class="card-tabs">
                        <ul class="tabs tabs-fixed-width">
                          <li class="tab"><a href="#test4">Título</a></li>
                          <li class="tab"><a class="active" href="#test5">Agregar imagen</a></li>
                          <li class="tab"><a href="#test6">Agregar documento</a></li>
                        </ul>
                    </div>
                    <div class="card-content grey lighten-4">
                        <div id="test4">
                            <div class="input-field col s12">
                                <br>
                                <input type="text" id="tit" class="materialize-textarea" name="titulo">
                                <label for="tit">Título</label>
                            </div>
                        </div>
                        <div id="test5">
                            <div class="file-field input-field">
                                <div class="btn">
                                  <span>Imagen</span>
                                  <input type="file" name="imagen">
                                </div>
                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text">
                                </div>
                            </div>
                        </div>
                        <div id="test6">
                            <div class="file-field input-field">
                                <div class="btn">
                                  <span>Documento</span>
                                  <input type="file" name="documento" id="f">
                                </div>
                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text">
                                  <input type="hidden" id="ext" name="ext">
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="btn waves-effect waves-light #4db6ac teal lighten-1 right-align" type="submit" name="action" style="position:relative; left:82%; margin-top: 20px; margin-bottom: 20px;">Guardar
                        <i class="material-icons right">send</i>
                    </button>
                </div>
            </form>
        </div>
        <br>
        <jsp:include page="footer.jsp" flush="true"/>
        <script type="text/javascript">
            var fl = document.getElementById('f');

            fl.onchange = function(e){ 
                var ext = this.value.match(/\.(.+)$/)[1];
                document.getElementById('ext').value = ext;
            }
        </script>
    </body>
</html>
<%}%>
