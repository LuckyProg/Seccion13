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
            <jsp:param name="pos" value='2'/>
        </jsp:include>
        <br>
        <br>
        <div style="background: url(../IMG/historia.jpg);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;margin-top: 5%;">
        <div style="background: rgba(75, 54, 33,.9);margin-top: 5%;">
            <div class="row container" style="padding:25px; border-radius: 5px; margin-top: -10px; background: transparent; text-align: justify; font-size: 25px; color:#e0e0e0;">
                <div class="col l4 m12 s12"> 
                    <br>
                    <h3>EL DEVENIR DE LA</h3>
                    <h1>SECCIÓN 13</h1>
                    <h3>RAMA MÉDICA DEL SUTGCDMX</h3>
                </div>
                <p class="col l8 m12 s12"> 
                    <br>
                    Para 1964, los trabajadores administrativos, de enfermería, intendencia y médicos del Gobierno del distrito federal, eran agremiados de la Seccion 12 del SUTGDF, fué entonces cuando el Dr. Ivan Audry Fasoli, quien influenciado de alguna manera por el Movimiento Médico de 1964, iniciado por los profesionistas de la salud del hoy Centro Médico Nacional 20 de Noviembre del ISSSTE, resultado de un ajusta exigencia de tener una mejora salarial, entre otras demandas, consideró conveniente que los Médicos de la Sección 12, tuviesen su propia Sección Sindical, logrando en 1965 "La Sección 13 Rama Médica".

                </p>
                <p class="col l12 m12 s12">
                Actualmente se cuenta con 3000 agremiados entre Médicos Generales, Especialistas y Subespecialistas, Cirujanos Dentistas Generales y con Especialidades, Psicólogos, Médicos Veterinarios y Cirujanos Maxilofaciales, en los diferentes centros de trabajo ubicados en Hospitales Generales, Materno infantiles, Pediátricos, Delegaciones Politicas, Agencias del Ministerio público, Centros de Adaptación, Toxicológicos y Hospital de alta especialidad.
                </p>
            </div>
        </div>
        </div>
        <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
<%}%>

