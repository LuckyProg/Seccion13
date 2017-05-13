<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Imagen"%>
<%@page import="Clases.Imagen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();
if(sesion.getAttribute("Usuario") == null){
    response.sendRedirect("../index.jsp");
}else{
    String b64 = null;
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
        <style type="text/css">
            .colls{
                border: 1px solid #D9D9D9;
                height: 200px;
                min-width: 350px;
                max-width: 350px;
                overflow: hidden;
                margin: 5px;
                background: rgba(255,255,255,0.5);
            }
            imgg{
                position:relative; 
                width:100%; 
                max-height:inherit;
            }
        </style>
    </head>
    <%ArrayList<Imagen> i = new Imagen().mostrarImagenes();%>
    <body class="#e57373 red lighten-2" onclick="clic()">
        <jsp:include page="menu.jsp" flush="true"/>
        <br>
        <div class="row">
        <%for(Imagen img:i){
          b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(img.getImag());%>
          <div class="col colls"><center><img src="data:image/jpg;base64, <%=b64%>" class="materialboxed imgg" id="<%=img.getId_img()%>" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <%}%>
        </div>
        <br>
        <jsp:include page="footer.jsp" flush="true"/>
        <script type="text/javascript">
            $(document).ready(function(){
                $('.materialboxed').materialbox();
            });
        </script>
    </body>
</html>
<%}%>
