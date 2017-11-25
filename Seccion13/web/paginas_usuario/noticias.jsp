<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();
if(sesion.getAttribute("Usuario") == null){
    response.sendRedirect("../index.jsp");
}else{
String tipo = request.getParameter("tipo");
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
    </head>
    <body>
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='1'/>
        </jsp:include>
        <br>
        <br>
        <div style="background: url(../IMG/noti.jpg);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;margin-top: 5%;">
        <div style="background: rgba(250, 150, 120,.85);padding: 40px;">
        <div class="container">
        <center><h3 style="color:#fafafa"><%=tipo%>s</h3></center>
        <input type="text" id="buscador" onkeyup="myfunction()" placeholder="    Buscar publicación.." style="background:#f0f0f0; border-bottom: 1px solid #f0f0f0; color:#0f0f0f; font-size: 18px;">
            <%
            if(tipo!=null){
                ArrayList<Post> p = new Post().obtenerPostporTipo(tipo);
            if(!p.isEmpty()){
            for(Post post:p){
                if(post.getRutaImagen()==null){%>
                    <jsp:include page="tarjetaBasica.jsp" flush="true">
                        <jsp:param name="texto" value='<%=post.getTexto()%>'/>
                        <jsp:param name="titulo" value='<%=post.getTitulo()%>'/>
                        <jsp:param name="rutaD" value='<%=(post.getRutaDocumento()==null)?"0":post.getRutaDocumento()%>'/>
                        <jsp:param name="fecha" value='<%=post.getFecha()%>'/>
                    </jsp:include>
                <%}
                else{%>
                    <jsp:include page="tarjetaImagen.jsp" flush="true">
                        <jsp:param name="texto" value='<%=post.getTexto()%>'/>
                        <jsp:param name="titulo" value='<%=post.getTitulo()%>'/>
                        <jsp:param name="rutaD" value='<%=post.getRutaDocumento()%>'/>
                        <jsp:param name="rutaI" value='<%=post.getRutaImagen()%>'/>
                        <jsp:param name="fecha" value='<%=post.getFecha()%>'/>
                    </jsp:include>
                <%}%>
            <%}}else{%>
            <br>
            <br>
                <center><h5 style="color:#fafafa">Actualmente no hay <%=tipo%>s</h5></center>
            <%}
            }else{
                ArrayList<Post> p = new Post().obtenerPost();
            if(!p.isEmpty()){
            for(Post post:p){
                if(post.getRutaImagen()==null){%>
                    <jsp:include page="tarjetaBasica.jsp" flush="true">
                        <jsp:param name="texto" value='<%=post.getTexto()%>'/>
                        <jsp:param name="titulo" value='<%=post.getTitulo()%>'/>
                        <jsp:param name="rutaD" value='<%=(post.getRutaDocumento()==null)?"0":post.getRutaDocumento()%>'/>
                        <jsp:param name="fecha" value='<%=post.getFecha()%>'/>
                    </jsp:include>
                <%}
                else{%>
                    <jsp:include page="tarjetaImagen.jsp" flush="true">
                        <jsp:param name="texto" value='<%=post.getTexto()%>'/>
                        <jsp:param name="titulo" value='<%=post.getTitulo()%>'/>
                        <jsp:param name="rutaD" value='<%=post.getRutaDocumento()%>'/>
                        <jsp:param name="rutaI" value='<%=post.getRutaImagen()%>'/>
                        <jsp:param name="fecha" value='<%=post.getFecha()%>'/>
                    </jsp:include>
                <%}%>
            <%}}}%>
            
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