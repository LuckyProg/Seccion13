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
        <title>JSP Page</title>
    </head>
    <body>
        <table> 
            <%
                Diploma mabel = new Diploma();
                ArrayList<Diploma> stan = mabel.mostrarDiplomas();
                for(Diploma d:stan){
            %>
            <tr> 
                <td>
                    <%= d.getTitulo()%>   
                </td>
                
                <td>
                    <%= d.getNombre()%>   
                </td>
            </tr>
            <%}%>
        </table>
        
    </body>
</html>
<%}%>