<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Usuario"%>
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
    <body class="#bbdefb blue lighten-4">
        <jsp:include page="menu.jsp" flush="true"/>
        <div class="container" style="background:#fafafa; margin-top: 50px; margin-bottom: 50px; padding:70px; padding-top: 30px;">
            <h5 class="brand-logo" style="color:#757575;">Usuarios</h5>
            <br><br>
            <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Buscar por.." title="Type in a name">
            <table id="myTable" >
                <tr class="header">
                  <th style="width:16.66%;">Nombre</th>
                  <th style="width:16.66%;">Número de empleado</th>
                  <th style="width:16.66%;">Institución laboral</th>
                  <th style="width:16.66%;">Unidad de adscripción</th>
                  <th style="width:16.66%;">Sección sindical</th>
                  <th style="width:16.66%;">Correo</th>
                </tr>
                <%ArrayList<Usuario> usuarios= new Usuario().mostrarUsuario();
                    for(Usuario usu:usuarios){%>
                    <tr>
                        <td><%=usu.getNombre()%>&nbsp;<%=usu.getAp()%>&nbsp;<%=usu.getAm()%></td>
                        <td><%=usu.getNo_empleado()%></td>
                        <td><%=usu.getInst()%></td>
                        <td><%=usu.getUnidad_ads()%></td>
                        <td><%=usu.getSeccion_sindi()%></td>
                        <td><%=usu.getCorreo()%></td>
                    </tr>
                <%}%>
            </table>

        </div>
        <br>
        <jsp:include page="footer.jsp" flush="true"/>
        <style type="text/css">
        #myInput {
            width: 100%; /* Full-width */
            font-size: 16px; /* Increase font-size */
            border: 1px solid #ddd; /* Add a grey border */
            margin-bottom: 12px; /* Add some space below the input */
        }

        #myTable {
            border-collapse: collapse; /* Collapse borders */
            width: 100%; /* Full-width */
            border: 1px solid #ddd; /* Add a grey border */
            font-size: 18px; /* Increase font-size */
        }

        #myTable th, #myTable td {
            text-align: left; /* Left-align text */
            padding: 12px; /* Add padding */
        }

        #myTable tr {
            /* Add a bottom border to all table rows */
            border-bottom: 1px solid #ddd; 
        }

        #myTable tr.header, #myTable tr:hover {
            /* Add a grey background color to the table header and on hover */
            background-color: #f1f1f1;
        }
        </style>
        <script>
            function myFunction() {
              // Declare variables 
              var input, filter, table, tr, td, td1, td2, td3, td4, td5, i;
              input = document.getElementById("myInput");
              filter = input.value.toUpperCase();
              table = document.getElementById("myTable");
              tr = table.getElementsByTagName("tr");

              // Loop through all table rows, and hide those who don't match the search query
              for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                //td = tr[i].getElementsByTagName("td")[0];
                 
                td1 = tr[i].getElementsByTagName("td")[1];
                td2 = tr[i].getElementsByTagName("td")[2];
                td3 = tr[i].getElementsByTagName("td")[3];
                td4 = tr[i].getElementsByTagName("td")[4];
                td5 = tr[i].getElementsByTagName("td")[5];
                if (td) {
                  if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                  } else {
                    if(td1){
                        if (td1.innerHTML.toUpperCase().indexOf(filter) > -1) {
                           tr[i].style.display = ""; 
                        }else{
                            if(td2){
                                if (td2.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                    tr[i].style.display = ""; 
                                }else{
                                    if(td3){
                                        if (td3.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                            tr[i].style.display = ""; 
                                        }else{
                                            if(td4){
                                                if (td4.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                                    tr[i].style.display = ""; 
                                                }else{
                                                    if(td5){
                                                        if (td5.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                                            tr[i].style.display = ""; 
                                                        }else{
                                                            tr[i].style.display = "none";
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                  }
                } 
              }
            }
        </script>
    </body>
</html>
<%}%>

