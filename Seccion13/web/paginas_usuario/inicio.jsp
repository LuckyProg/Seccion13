<%@page import="Clases.Post"%>
<%@page import="java.util.Vector"%>
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
        <title>JSP Page</title>
    </head>
    <body class="#e57373 red lighten-2">
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='1'/>
        </jsp:include>
        <br>
        <br>
        <div class="container">
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Buscar post..">
            <%
            Vector <Post> p = new Post().obtenerPost();
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
            <%}%>
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