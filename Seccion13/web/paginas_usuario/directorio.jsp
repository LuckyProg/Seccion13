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
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.min.js"></script>
        <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
        <title>JSP Page</title>
    </head>
    <body class="#e57373 red lighten-2">
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='3'/>
        </jsp:include>
        <style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c7{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:18pt;font-family:"Calibri";font-style:normal}.c3{color:#c00000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Teko";font-style:italic}.c5{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:11pt;font-family:"Calibri";font-style:normal}.c9{color:#c00000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:10.5pt;font-family:"Calibri";font-style:normal}.c0{color:#c00000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:11pt;font-family:"Aparajita";font-style:italic}.c1{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:10.5pt;font-family:"Calibri";font-style:normal}.c4{font-size:11pt;font-family:"Aparajita";font-style:italic;color:#c00000;font-weight:400}.c2{padding-top:0pt;padding-bottom:0pt;line-height:1.25;text-align:left}.c6{padding-top:0pt;padding-bottom:8pt;line-height:1.25;text-align:center}.c8{background-color:#ffffff;max-width:441.9pt;padding:70.8pt 85pt 70.8pt 85pt}.title{padding-top:0pt;color:#44546a;font-size:36pt;padding-bottom:20pt;font-family:"Calibri";line-height:1.0;text-align:center}.subtitle{padding-top:0pt;color:#44546a;font-size:14pt;padding-bottom:8pt;font-family:"Calibri";line-height:1.25;text-align:center}li{color:#000000;font-size:10.5pt;font-family:"Calibri"}p{margin:0;color:#000000;font-size:10.5pt;font-family:"Calibri"}h1{padding-top:16pt;color:#2e75b5;font-size:20pt;padding-bottom:4pt;font-family:"Calibri";line-height:1.0;page-break-after:avoid;text-align:center}h2{padding-top:8pt;color:#000000;font-size:16pt;padding-bottom:2pt;font-family:"Calibri";line-height:1.0;page-break-after:avoid;text-align:center}h3{padding-top:8pt;color:#000000;font-size:16pt;padding-bottom:0pt;font-family:"Calibri";line-height:1.0;page-break-after:avoid;text-align:left}h4{padding-top:4pt;color:#000000;font-size:15pt;padding-bottom:0pt;font-family:"Calibri";line-height:1.25;page-break-after:avoid;font-style:italic;text-align:left}h5{padding-top:2pt;color:#000000;font-size:14pt;padding-bottom:0pt;font-family:"Calibri";line-height:1.25;page-break-after:avoid;text-align:left}h6{padding-top:2pt;color:#000000;font-size:13pt;padding-bottom:0pt;font-family:"Calibri";line-height:1.25;page-break-after:avoid;font-style:italic;text-align:left}</style>
        <br>
        <div class="container #fafafa grey lighten-5" style="padding: 40px; padding-left: 60px; border-radius: 10px;">
            <center>
            <p class="c6"><span class="c7" style="color:#0f0f0f;font-size: 30px;">COMIT&Eacute; EJECUTIVO SECCI&Oacute;N 13</span></p>
            <br>
            <br>
            <p class="c2"><span class="c5">SECRETARIO GENERAL</span></p><p class="c2"><span class="c3">DR. JAIME PATI&Ntilde;O GUTIERREZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DEL INTERIOR</span></p><p class="c2"><span class="c0">DR. JORGE RAMIRO MAZON PARRA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE EXTERIOR</span></p><p class="c2"><span class="c0">DR. ASAEL PANIAGUA AVILES</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE TRABAJO Y CONFLICTOS</span></p><p class="c2"><span class="c0">DR. JOSE JARAMILLO DAMIAN</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE ORGANIZACI&Oacute;N</span></p><p class="c2"><span class="c0">DR.JESUS GOMEZ MARTINEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE FINANZAS</span></p><p class="c2"><span class="c0">DR. MARIO ARELLANO PENAGOS</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE PENSIONES Y JUBILACIONES</span></p><p class="c2"><span class="c0">DR.GILDARDO MEJIA MONTERO</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE DEPORTES</span></p><p class="c2"><span class="c0">DR. VIRGILIO GAMEZ LOPEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE ACCION JUVENIL</span></p><p class="c2"><span class="c0">DRA.MARIA ELVIRA RAMIREZ VAZQUEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE PREVISION SOCIAL</span></p><p class="c2"><span class="c0">DR. ADOLFO CORTES MORA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE ASISTENCIA SOCIAL</span></p><p class="c2"><span class="c0">DRA. MARIA DEL CARMEN RAMIREZ ALVARADO</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE ESTIMULOS Y RECOMPENSAS</span></p><p class="c2"><span class="c0">DR. MARIO GONZALEZ VALDOVINOS</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE LA HABITACION</span></p><p class="c2"><span class="c4">DRA.JOSEFINA RIVERA RUIZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE ESCALAFON</span></p><p class="c2"><span class="c0">DR. ANTONIO FRANCISCO TELLEZ AGUILAR</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE ESTUDIOS Y PRESUPUESTOS</span></p><p class="c2"><span class="c0">DR. HERMILO JARAMILLO ESTRADA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE ACTAS Y ACUERDOS</span></p><p class="c2"><span class="c0">DR. MARIO ROBERTO AGUILAR VALENZUELA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE ASUNTOS TECNICOS</span></p><p class="c2"><span class="c0">DR. MARIA ANTONIETA CASTRO GARCIA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE PRENSA</span></p><p class="c2"><span class="c0">DR. RICARDO JESUS MORALES HERNANDEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE CONTROL DE GESTION</span></p><p class="c2"><span class="c0">DRA. VIRGINIA REYES NAVA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE DELEGACIONES FORANEAS</span></p><p class="c2"><span class="c0">DR. MIGUEL ANGEL LOPEZ GORDILLO</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE CONTROL Y ASIGNACION DE PLAZAS</span></p><p class="c2"><span class="c0">DR. JUAN PAULINO PACHECO ELIAS</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE CAPACITACION TECNICA ADMINISTRATIVA</span></p><p class="c2"><span class="c0">DR. ANGEL OVIDIO CARDE&Ntilde;A LOMELI</span></p>
            <br>
            <p class="c2"><span class="c1">DELEGADO AL CONSEJO DEL SUTGCDMX</span></p><p class="c2"><span class="c0">DR. IGNACIO FUENTES RAMIREZ</span></p>
            <br>
            <p class="c2"><span class="c1">DELEGADA AL CONSEJO DEL SUTGCDMX</span></p><p class="c2"><span class="c0">DRA. MARIA DOLORES ESCOBEDO ZU&Ntilde;IGA</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTE DE LA COMISION DE VIGILANCIA</span></p><p class="c2"><span class="c0">DR. ALFONSO REYES FLORES</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISON DE VIGILANCIA</span></p><p class="c2"><span class="c0">DR. ELIDA CAMACHO MEJIA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE VIGILANCIA</span></p><p class="c2"><span class="c0">DRA. MIRIAM MONICA RIVERA GUADARRAMA</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTE DE LA COMISION DE HONOR Y JUSTICIA</span></p><p class="c2"><span class="c0">DR JOSE OTILIO RAMIREZ ROJAS</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HONOR Y JUSTICIA</span></p><p class="c2"><span class="c0">DR. MARIO GABRIEL LANDETA GARCIA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HONOR Y JUSTICIA</span></p><p class="c2"><span class="c0">DRA. ADRIANA BORJAS GARCIA</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTE DE LA COMISION DE HACIENDA</span></p><p class="c2"><span class="c0">DRA. PATRICIA GLORIA LOPEZ MONTA&Ntilde;O</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HACIENDA</span></p><p class="c2"><span class="c0">DR. ROBERTO RIVERA CAPELLO</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HACIENDA</span></p><p class="c2"><span class="c0">DR. JESUS CORTES CARRETO</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTE DE LA COMISION DE ACCION POLITICA</span></p><p class="c2"><span class="c0">DR. FIDEL PIZA&Ntilde;A CHAVEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE ACCION POLITICA</span></p><p class="c2"><span class="c0">DRA. MARIA DE JESUS ORTIZ VELAZQUEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE ACCION POLITICA</span></p><p class="c2"><span class="c0">DR. CARLOS MORALES GONZALEZ</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTE DE LA COMISION JUVENIL</span></p><p class="c2"><span class="c0">DR &nbsp;ARTURO ENRIQUE BECERRIL LERIN</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION JUVENIL</span></p><p class="c2"><span class="c0">DR. GUSTAVO ABURTO JUAREZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION JUVENIL</span></p><p class="c2"><span class="c0">DR. CARLOS ADRIAN CANTU ANAYA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION JUVENIL</span></p><p class="c2"><span class="c0">DR. OSCAR EFRAIN ESQUIVEL GARCIA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION JUVENIL</span></p><p class="c2"><span class="c0">DR. ALBERTO DEL CARMEN PAREDES CHAN</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION JUVENIL</span></p><p class="c2"><span class="c0">DR. ALBERTO GARCIA DIAZ</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTA DE LA COMISION DE RECURSOS HUMANOS</span></p><p class="c2"><span class="c0">DRA. EVA GRACIELA DOMINGUEZ BALDERAS</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE LA COMISION DE RECURSOS HUMANOS</span></p><p class="c2"><span class="c0">DRA. ALICIA PATRICIA HIDALGO CASTORENA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE LA COMISION DE RECURSOS HUMANOS</span></p><p class="c2"><span class="c0">DRA. JUANA CHAVEZ MARTINEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE LA COMISION DE RECURSOS HUMANOS</span></p><p class="c2"><span class="c0">DRA. LETICIA ORTEGA BOCADO</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE LA COMISION DE RECURSOS HUMANOS</span></p><p class="c2"><span class="c0">DRA. GUADALUPE GUERRA RAMIREZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE RECURSOS HUMANOS</span></p><p class="c2"><span class="c0">DR. RAUL MEDEL NOCHES</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTE DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p><p class="c2"><span class="c0">DR. MOISES SANCHEZ MORENO</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p><p class="c2"><span class="c0">DR. GUSTAVO ANGELES MORENO</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p><p class="c2"><span class="c0">DR. JOSE LUIS DOVAL SOSA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p><p class="c2"><span class="c0">DR. RICARDO TORTOLERO VAZQUEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p><p class="c2"><span class="c0">DR. JOSE ANTONIO PEREZ RUIZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p><p class="c2"><span class="c0">DR. SERGIO ANTONIO MONCAYO CUEVAS</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p><p class="c2"><span class="c0">DR. JUAN JOSE RAMIREZ RAMIREZ</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTE DE LA COMISION DE CONTROL Y ASIGNACION DE PLAZAS</span></p><p class="c2"><span class="c0">DR. FRANCISCO JAVIER CAMPOS MILLAN</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE LA COMISION DE CONTROL Y ASIGNACION DE PLAZAS</span></p><p class="c2"><span class="c0">DRA. MARIA DEL REFUGIO ROBLES CABRERA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE LA COMISION DE CONTROL Y ASIGNACION DE PLAZAS</span></p><p class="c2"><span class="c0">DRA. MARIA DEL ROCIO GOMEZ BAEZ</span></p>
            <br>
            <p class="c2"><span class="c1">PRESIDENTE DE LA COMISION DE CAPACITACION TECNICA Y ADMINISTRATIVA</span></p><p class="c2"><span class="c0">DRA. LUCIA ALEJANDRA RIVERA MENDEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIO DE LA COMISION DE CAPACITACION TECNICA Y ADMINISTRATIVA</span></p><p class="c2"><span class="c0">DR.LUIS NU&Ntilde;EZ DE ALBA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DEL DESARROLLO DE LA MUJER</span></p><p class="c2"><span>SECRETARIA</span><span class="c0">&nbsp;DRA. SILVIA LETICIA AVILA MEDINA</span></p><p class="c2"><span class="c0">DRA. MARIA FLORES BETANCOURTH</span></p><p class="c2"><span class="c0">DRA. CAROLINA HERNANDEZ MALDONADO</span></p><p class="c2"><span class="c0">DRA. ROSA MARIA SUAREZ SOSA</span></p><p class="c2"><span class="c0">DRA. ROSA MARIA LEZAMA BARRAGAN</span></p><p class="c2"><span class="c0">DRA. JUANA CHAVEZ MARTINEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE ASUNTOS JURIDICOS</span></p><p class="c2"><span>SECRETARIO</span><span class="c0">&nbsp;DR. JORGE RIEGO VAZQUEZ</span></p><p class="c2"><span class="c0">DR. JUAN MANUEL GARCIA RODRIGUEZ</span></p><p class="c2"><span class="c0">DR. SERGIO RAUL MENDOZA LEYVA</span></p><p class="c2"><span class="c0">DR. JOSE LUIS PEREZ ARREOLA</span></p><p class="c2"><span class="c0">DR.MIGUEL ANGEL CASTILLO CHAVEZ</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE REVISORA DE LAS CONDICIONES GENERALES DE TRABAJO</span></p><p class="c2"><span>SECRETARIO</span><span class="c0">&nbsp;DR. RAUL MARISCAL GONZALEZ</span></p><p class="c2"><span class="c0">DR. CARLOS MANUEL MORALES OCA&Ntilde;A</span></p><p class="c2"><span class="c0">DRA. ANGELICA CONSUELO GUTIERREZ CHAVEZ</span></p><p class="c2"><span class="c0">DR. JOSE MEJIA GONZALEZ</span></p><p class="c2"><span class="c0">DR. ELIOS LIBIO SANCHEZ HUERTA</span></p>
            <br>
            <p class="c2"><span class="c1">SECRETARIA DE INFORMATICA</span></p><p class="c2"><span>SECRETARIO</span><span class="c0">&nbsp;DR. HORACIO REYNA AMAYA</span></p><p class="c2"><span class="c0">DR. GUILLERMO DAMASO CAMACHO BORBOA</span></p><p class="c2"><span class="c0">DR. JULIO ALEJANDRO BLANCO D&acute;MENDIETA</span></p><p class="c2" id="h.gjdgxs"><span class="c0">DR. JOSE ESQUIVEL VALDEZ</span></p>
            </center>
        </div>
        <br>
        <br>
        <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
<%}%>
