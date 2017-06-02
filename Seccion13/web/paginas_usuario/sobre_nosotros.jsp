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
        <jsp:include page="menu.jsp" flush="true"/>
        <br>
        <br>
        <div class="row container" style="padding:25px; border-radius: 5px; margin-top: -10px; background: rgba(255,255,255,.85); text-align: justify; font-size: 20px;">
            <div class="col l4 m12 s12"> 
                <br>
                <h4>EL DEVENIR DE LA</h4>
                <h2>SECCIÓN 13</h2>
                <h4>RAMA MÉDICA DEL SUTGCDMX</h4>
            </div>
            <p class="col l8 m12 s12 grey-text text-darken-4"> 
                <br>
                Para 1964, los trabajadores administrativos, de enfermería, intendencia y médicos del Gobierno del distrito federal, eran agremiados de la Seccion 12 del SUTGDF, fué entonces cuando el Dr. Ivan Audry Fasoli, quien influenciado de alguna manera por el Movimiento Médico de 1964, iniciado por los profesionistas de la salud del hoy Centro Médico Nacional 20 de Noviembre del ISSSTE, resultado de un ajusta exigencia de tener una mejora salarial, entre otras demandas, consideró conveniente que los Médicos de la Sección 12, tuviesen su propia Sección Sindical, logrando en 1965 "La Sección 13 Rama Médica".

            </p>
            <p class="col l12 m12 s12">
            Actualmente se cuenta con 3000 agremiados entre Médicos Generales, Especialistas y Subespecialistas, Cirujanos Dentistas Generales y con Especialidades, Psicólogos, Médicos Veterinarios y Cirujanos Maxilofaciales, en los diferentes centros de trabajo ubicados en Hospitales Generales, Materno infantiles, Pediátricos, Delegaciones Politicas, Agencias del Ministerio público, Centros de Adaptación, Toxicológicos y Hospital de alta especialidad.
            </p>
        </div>
        <br>
        <br>
        <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
<%}%>

