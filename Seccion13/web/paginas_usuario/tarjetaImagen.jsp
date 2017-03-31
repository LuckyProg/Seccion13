<%-- 
    Document   : tarjetaImagen
    Created on : 31/03/2017, 03:13:46 AM
    Author     : derda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>
        <title>Tarjeta con Imagen</title>
    </head>
    <body>
        <div class="col s12 m7">
            <div class="card">
                <div class="card-image">
                    <center><img src="<%=request.getParameter("rutaI")%>"></center>
                    <span class="card-title"><%=request.getParameter("titulo")%>&nbsp;(<%=request.getParameter("fecha")%>)</span>
                </div>
                <div class="card-content">
                    <p><%=request.getParameter("texto")%></p>
                </div>
                <%if(request.getParameter("texto").equalsIgnoreCase("")){
                }else{%>
                    <div class="card-action #eeeeee grey lighten-3">
                        <%=request.getParameter("rutaD")%>&nbsp;&nbsp;
                        <button class="btn waves-effect waves-light #ef5350 red lighten-1" type="submit" name="cosa" style="position:relative; left:62%;">Descargar
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                <%}%>
            </div>
        </div>
    </body>
</html>
