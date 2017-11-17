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
        <title>Sección 13</title>
        <link rel="shortcut icon" href="../IMG/escudo2.ico" />
    </head>
    <body>
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='6'/>
        </jsp:include>
        <br>
        <div style="background: url(../IMG/ubica.jpg);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;margin-top: 5%;">
        <div style="background: rgba(50, 180, 80,.85);padding: 40px;">
        <div class="container #fafafa grey lighten-5" style="padding: 20px;">
            <center>
            <h3 style="color:#0f0f0f;">Ubicación</h3>
            <h5 style="color:#757575;">Antonio Caso No.32, 1er. Piso, Tels. 5566-5167 5566-3233 ext. 113</h5>
            <br>
            <div id="map" style="width:90%; height:500px; background:white;"></div>
            </center>
        </div>
        </div>
        </div>
        <script>
            function myMap() {
                var myCenter = new google.maps.LatLng(19.4340549,-99.1563559);
                var mapCanvas = document.getElementById("map");
                var mapOptions = {center: myCenter, zoom: 15};
                var map = new google.maps.Map(mapCanvas, mapOptions);
                var marker = new google.maps.Marker({position:myCenter});
                marker.setMap(map);
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmh5UdMQZsTWU_1foxC5CdKkuT8H49T3w&callback=myMap"></script>
        <br>
        <br>
        <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
<%}%>