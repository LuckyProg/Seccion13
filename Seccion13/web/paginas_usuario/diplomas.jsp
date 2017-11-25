<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Diploma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession sesion = request.getSession();
    if(false){
//sesion.getAttribute("Usuario") == null
    response.sendRedirect("../index.jsp");
    }
    else{
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>
        <title>Secci&oacute;n 13</title>
        <link rel="shortcut icon" href="../IMG/escudo2.ico" />
    </head>
    <body style="padding:0px;">
         <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='1'/>
        </jsp:include>
        <br>
        <div style="background: url(../IMG/congre.jpg);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;margin-top: 5%;height:100%;">
        <div style="background: rgba(250, 150, 120,.85);padding: 40px;">
        <center>
        <div style="width:100%;background: rgba(255,255,255,.85);margin:0px; border-radius: 20px;padding:40px;">
        <center><h4 style="color:#0f0f0f;">III CONGRESO DE ESPECIALIDADES MEDICAS DE LA CIUDAD DE MEXICO</h4></center> 
        <br>
        <table style="padding-top:60px;background: #fff;border:1px solid gray;width:auto;"> 
            <tr style="margin:20px;border-bottom: 1px solid gray;"> 
                    <td style="padding-top:23px;padding-left:40px;padding-bottom: 0px;">
                        <input type="text" id="buscador" onkeyup="myfunction()" placeholder="Buscar.." style="background:#f0f0f0; border-bottom: 1px solid #f0f0f0; color:#000; font-size: 16px; padding-left: 15px;">                        
                    </td>
                    <td>
                    </td>
                </tr>
            <%
                Diploma mabel = new Diploma();
                ArrayList<Diploma> stan = mabel.mostrarDiplomas();
                for(Diploma d:stan){
            %>
            <form method="get" action="../Diplomas">    
                <tr style="margin:20px;border-bottom: 1px solid gray;" class="nombres"> 
                    <td style="padding-top:20px;padding-left:40px;">
                        <%= d.getTitulo()%> <input type="hidden" value="<%= java.net.URLEncoder.encode(d.getTitulo(), "ISO-8859-1")%>" name="tit">
                        <%= d.getNombre()%> <input type="hidden" value="<%= java.net.URLEncoder.encode(d.getNombre(), "ISO-8859-1")%>" name="nom">  
                    </td>
                    <td style="padding-right:40px;">
                        <input type="submit" value="Descargar">
                    </td>
                </tr>
            </form>
            <%}%>
        </table>
        <br>
        </div>
        </center>
        </div>
        </div>
        <jsp:include page="footer.jsp" flush="true"/>
        <script>
            function myfunction(){
                var filter = document.getElementById("buscador").value.toUpperCase();
                var posts = document.getElementsByClassName("nombres");
                var title;
                for(i = 0; i < posts.length; i++){
                    title = posts[i].getElementsByTagName('td')[0];
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