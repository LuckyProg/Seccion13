<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Diploma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("Usuario") == null){
    response.sendRedirect("../index.jsp");
    }
    else{
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Secci&oacute;n 13</title>
    </head>
    <body>
        <table> 
            <%
                Diploma mabel = new Diploma();
                ArrayList<Diploma> stan = mabel.mostrarDiplomas();
                for(Diploma d:stan){
            %>
            <form method="get" action="../Diplomas">    
                <tr> 
                    <td>
                        <%= d.getTitulo()%> <input type="hidden" value="<%= d.getTitulo()%>" name="tit">   
                    </td>

                    <td>
                        <%= d.getNombre()%> <input type="hidden" value="<%= d.getNombre()%>" name="nom">  
                    </td>
                    
                    <td>
                        <input type="submit" value="Descargar">
                    </td>
                </tr>
            </form>
            <%}%>
        </table>
        
    </body>
</html>
<%}%>