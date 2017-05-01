<%@page import="Clases.Documento"%>
<%@page import="Clases.Imagen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(new Imagen().obtenerImagen(request.getParameter("rutaI")));
%>
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
                    <center><img src="data:image/jpg;base64, <%=b64%>"></center>
                    <span class="card-title" style="background: #d32f2f;"><%=request.getParameter("titulo")%>&nbsp;(<%=request.getParameter("fecha")%>)</span>
                </div>
                <div class="card-content">
                    <p><%=request.getParameter("texto")%></p>
                </div>
                <%if(request.getParameter("rutaD").equalsIgnoreCase("null")){
                }else{%>
                    <div class="card-action #eeeeee grey lighten-3">
                        <%String nomd = request.getParameter("titulo") + request.getParameter("fecha") + "." + new Documento().obtenerExt(request.getParameter("rutaD"));%>
                        <%=nomd%>&nbsp;&nbsp;
                        <form action="../descargarArchivo" method="get">
                            <input type="hidden" name="id_doc" value="<%=request.getParameter("rutaD")%>">
                            <input type="hidden" name="nomd" value="<%=nomd%>">
                            <button class="btn waves-effect waves-light #ef5350 red lighten-1" type="submit" name="cosa" style="position:relative; left:62%;">Descargar
                                <i class="material-icons right">send</i>
                            </button>
                        </form>
                    </div>
                <%}%>
            </div>
        </div>
    </body>
</html>
