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
        <link rel="shortcut icon" href="../IMG/escudo2.ico" />
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
            .gal{
                margin-top: 5%;
                width:107%;
            }
            imgg{
                position:relative; 
                width:100%; 
                max-height:inherit;
            }
        </style>
    </head>
    <%ArrayList<Imagen> i = new Imagen().mostrarImagenes();%>
    <body onclick="clic()">
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='5'/>
        </jsp:include>
        <br>
        <div class="row gal">
        <%for(Imagen img:i){
          b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(img.getImag());%>
          <div class="col colls"><center><img src="data:image/jpg;base64, <%=b64%>" class="materialboxed img" id="<%=img.getId_img()%>" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <%}%>
        <div class="col colls"><center><img src="../IMG/1.JPG" class="materialboxed img" id="01" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/2.jpg" class="materialboxed img" id="02" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/3.jpg" class="materialboxed img" id="03" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/4.jpg" class="materialboxed img" id="04" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/5.jpg" class="materialboxed img" id="05" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/6.jpg" class="materialboxed img" id="06" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/7.jpg" class="materialboxed img" id="07" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/8.jpg" class="materialboxed img" id="08" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/9.jpg" class="materialboxed img" id="09" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/10.jpg" class="materialboxed img" id="010" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/11.jpg" class="materialboxed img" id="011" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/12.jpg" class="materialboxed img" id="012" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/13.jpg" class="materialboxed img" id="013" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/14.jpg" class="materialboxed img" id="014" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/15.jpg" class="materialboxed img" id="015" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/16.jpg" class="materialboxed img" id="016" style="position:relative; width:100%; max-height:inherit;"/></center></div>
        <div class="col colls"><center><img src="../IMG/17.jpg" class="materialboxed img" id="017" style="position:relative; width:100%; max-height:inherit;"/></center></div>
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
