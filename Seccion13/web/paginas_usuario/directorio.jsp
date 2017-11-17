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
        <title>Sección 13</title>
        <link rel="shortcut icon" href="../IMG/escudo2.ico" />
    </head>
    <body>
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='3'/>
        </jsp:include>
        <style type="text/css">@import url('https://themes.googleusercontent.com/fonts/css?kit=fpjTOVmNbO4Lz34iLyptLUXza5VhXqVC6o75Eld_V98');ol{margin:0;padding:0}table td,table th{padding:0}.c4{color:#c00000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Calibri";font-style:normal}.c7{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:18pt;font-family:"Calibri";font-style:normal}.c6{color:#c00000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:18pt;font-family:"Teko";font-style:normal}.c3{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:24pt;font-family:"Calibri";font-style:normal}.c1{color:#c00000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Aparajita";font-style:normal}.c2{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Calibri";font-style:normal}.c9{padding-top:0pt;padding-bottom:8pt;line-height:1.25;text-align:center}.c0{padding-top:0pt;padding-bottom:0pt;line-height:1.25;text-align:center}.c10{font-family:"Aparajita";color:#c00000;font-weight:400}.c5{background-color:#ffffff;max-width:441.9pt;padding:70.8pt 85pt 70.8pt 85pt}.c8{font-size:16pt}.title{padding-top:0pt;color:#44546a;font-size:36pt;padding-bottom:20pt;font-family:"Calibri";line-height:1.0;text-align:center}.subtitle{padding-top:0pt;color:#44546a;font-size:14pt;padding-bottom:8pt;font-family:"Calibri";line-height:1.25;text-align:center}li{color:#000000;font-size:10.5pt;font-family:"Calibri"}p{margin:0;color:#000000;font-size:10.5pt;font-family:"Calibri"}h1{padding-top:16pt;color:#2e75b5;font-size:20pt;padding-bottom:4pt;font-family:"Calibri";line-height:1.0;page-break-after:avoid;text-align:center}h2{padding-top:8pt;color:#000000;font-size:16pt;padding-bottom:2pt;font-family:"Calibri";line-height:1.0;page-break-after:avoid;text-align:center}h3{padding-top:8pt;color:#000000;font-size:16pt;padding-bottom:0pt;font-family:"Calibri";line-height:1.0;page-break-after:avoid;text-align:left}h4{padding-top:4pt;color:#000000;font-size:15pt;padding-bottom:0pt;font-family:"Calibri";line-height:1.25;page-break-after:avoid;font-style:italic;text-align:left}h5{padding-top:2pt;color:#000000;font-size:14pt;padding-bottom:0pt;font-family:"Calibri";line-height:1.25;page-break-after:avoid;text-align:left}h6{padding-top:2pt;color:#000000;font-size:13pt;padding-bottom:0pt;font-family:"Calibri";line-height:1.25;page-break-after:avoid;font-style:italic;text-align:left}</style>
        <br>
        <div style="background: url(../IMG/directorio.png);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;margin-top: 5%;">
        <div style="background: rgba(180, 70, 50,.85);padding: 3px;">
        <div class="container #fafafa grey lighten-5 c5" style="padding: 20px; padding-left: 40px; border-radius: 10px; margin-top: 30px;margin-bottom: 30px;">
            <p class="c9">
            <span class="c3">COMIT&Eacute; EJECUTIVO SECCI&Oacute;N 13</span>
            </p>
            <p class="c0">
                <br>
            <span class="c7">SECRETARIO GENERAL</span>
            </p>
            <p class="c0">
            <span class="c6">DR. JAIME PATI&Ntilde;O GUTIERREZ</span>
            </p>
            <br>
            <p class="c0">
            <span class="c2">SECRETARIO DEL INTERIOR</span>
            </p>
            <p class="c0">
            <span class="c1">DR. JORGE RAMIRO MAZON PARRA</span>
            </p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE EXTERIOR</span></p>
            <p class="c0"><span class="c1">DR. ASAEL PANIAGUA AVILES</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE TRABAJO Y CONFLICTOS</span></p>
            <p class="c0"><span class="c1">DR. JOSE JARAMILLO DAMIAN</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE ORGANIZACI&Oacute;N</span></p>
            <p class="c0"><span class="c1">DR.JESUS GOMEZ MARTINEZ</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE FINANZAS</span></p>
            <p class="c0"><span class="c1">DR. MARIO ARELLANO PENAGOS</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE PENSIONES Y JUBILACIONES</span></p>
            <p class="c0"><span class="c1">DR.GILDARDO MEJIA MONTERO</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE DEPORTES</span></p>
            <p class="c0"><span class="c1">DR. VIRGILIO GAMEZ LOPEZ</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE ACCION JUVENIL</span></p>
            <p class="c0"><span class="c1">DRA.MARIA ELVIRA RAMIREZ VAZQUEZ</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE PREVISION SOCIAL</span></p>
            <p class="c0"><span class="c1">DR. ADOLFO CORTES MORA</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE ASISTENCIA SOCIAL</span></p>
            <p class="c0"><span class="c1">DRA. MARIA DEL CARMEN RAMIREZ ALVARADO</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE ESTIMULOS Y RECOMPENSAS</span></p>
            <p class="c0"><span class="c1">DR. MARIO GONZALEZ VALDOVINOS</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE LA HABITACION</span></p>
            <p class="c0"><span class="c8 c10">DRA.JOSEFINA RIVERA RUIZ</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE ESCALAFON</span></p>
            <p class="c0"><span class="c1">DR. ANTONIO FRANCISCO TELLEZ AGUILAR</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE ESTUDIOS Y PRESUPUESTOS</span></p>
            <p class="c0"><span class="c1">DR. HERMILO JARAMILLO ESTRADA</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE ACTAS Y ACUERDOS</span></p>
            <p class="c0"><span class="c1">DR. MARIO ROBERTO AGUILAR VALENZUELA</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE ASUNTOS TECNICOS</span></p>
            <p class="c0"><span class="c1">DR. MARIA ANTONIETA CASTRO GARCIA</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE PRENSA</span></p>
            <p class="c0"><span class="c1">DR. RICARDO JESUS MORALES HERNANDEZ</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE CONTROL DE GESTION</span></p>
            <p class="c0"><span class="c1">DRA. VIRGINIA REYES NAVA</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE DELEGACIONES FORANEAS</span></p>
            <p class="c0"><span class="c1">DR. MIGUEL ANGEL LOPEZ GORDILLO</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE CONTROL Y ASIGNACION DE PLAZAS</span></p>
            <p class="c0"><span class="c1">DR. JUAN PAULINO PACHECO ELIAS</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIO DE CAPACITACION TECNICA ADMINISTRATIVA</span></p>
            <p class="c0"><span class="c1">DR. ANGEL OVIDIO CARDE&Ntilde;A LOMELI</span></p>
            <br>
            <p class="c0"><span class="c2">DELEGADO AL CONSEJO DEL SUTGCDMX</span></p>
            <p class="c0"><span class="c1">DR. IGNACIO FUENTES RAMIREZ</span></p>
            <p class="c0"><span class="c2">DELEGADA AL CONSEJO DEL SUTGCDMX</span></p>
            <p class="c0"><span class="c1">DRA. MARIA DOLORES ESCOBEDO ZU&Ntilde;IGA</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTE DE LA COMISION DE VIGILANCIA</span></p>
            <p class="c0"><span class="c1">DR. ALFONSO REYES FLORES</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISON DE VIGILANCIA</span></p>
            <p class="c0"><span class="c1">DR. ELIDA CAMACHO MEJIA</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE VIGILANCIA</span></p>
            <p class="c0"><span class="c1">DRA. MIRIAM MONICA RIVERA GUADARRAMA</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTE DE LA COMISION DE HONOR Y JUSTICIA</span></p>
            <p class="c0"><span class="c1">DR JOSE OTILIO RAMIREZ ROJAS</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HONOR Y JUSTICIA</span></p>
            <p class="c0"><span class="c1">DR. MARIO GABRIEL LANDETA GARCIA</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HONOR Y JUSTICIA</span></p>
            <p class="c0"><span class="c1">DRA. ADRIANA BORJAS GARCIA</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTE DE LA COMISION DE HACIENDA</span></p>
            <p class="c0"><span class="c1">DRA. PATRICIA GLORIA LOPEZ MONTA&Ntilde;O</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HACIENDA</span></p>
            <p class="c0"><span class="c1">DR. ROBERTO RIVERA CAPELLO</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HACIENDA</span></p>
            <p class="c0"><span class="c1">DR. JESUS CORTES CARRETO</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTE DE LA COMISION DE ACCION POLITICA</span></p>
            <p class="c0"><span class="c1">DR. FIDEL PIZA&Ntilde;A CHAVEZ</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE ACCION POLITICA</span></p>
            <p class="c0"><span class="c1">DRA. MARIA DE JESUS ORTIZ VELAZQUEZ</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE ACCION POLITICA</span></p>
            <p class="c0"><span class="c1">DR. CARLOS MORALES GONZALEZ</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTE DE LA COMISION JUVENIL</span></p>
            <p class="c0"><span class="c1">DR &nbsp;ARTURO ENRIQUE BECERRIL LERIN</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION JUVENIL</span></p>
            <p class="c0"><span class="c1">DR. GUSTAVO ABURTO JUAREZ</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION JUVENIL</span></p>
            <p class="c0"><span class="c1">DR. CARLOS ADRIAN CANTU ANAYA</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION JUVENIL</span></p>
            <p class="c0"><span class="c1">DR. OSCAR EFRAIN ESQUIVEL GARCIA</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION JUVENIL</span></p>
            <p class="c0"><span class="c1">DR. ALBERTO DEL CARMEN PAREDES CHAN</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION JUVENIL</span></p>
            <p class="c0"><span class="c1">DR. ALBERTO GARCIA DIAZ</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTA DE LA COMISION DE RECURSOS HUMANOS</span></p>
            <p class="c0"><span class="c1">DRA. EVA GRACIELA DOMINGUEZ BALDERAS</span></p>
            <p class="c0"><span class="c2">SECRETARIA DE LA COMISION DE RECURSOS HUMANOS</span></p>
            <p class="c0"><span class="c1">DRA. ALICIA PATRICIA HIDALGO CASTORENA</span></p>
            <p class="c0"><span class="c2">SECRETARIA DE LA COMISION DE RECURSOS HUMANOS</span></p>
            <p class="c0"><span class="c1">DRA. JUANA CHAVEZ MARTINEZ</span></p>
            <p class="c0"><span class="c2">SECRETARIA DE LA COMISION DE RECURSOS HUMANOS</span></p>
            <p class="c0"><span class="c1">DRA. LETICIA ORTEGA BOCADO</span></p>
            <p class="c0"><span class="c2">SECRETARIA DE LA COMISION DE RECURSOS HUMANOS</span></p>
            <p class="c0"><span class="c1">DRA. GUADALUPE GUERRA RAMIREZ</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE RECURSOS HUMANOS</span></p>
            <p class="c0"><span class="c1">DR. RAUL MEDEL NOCHES</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTE DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p>
            <p class="c0"><span class="c1">DR. MOISES SANCHEZ MORENO</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p>
            <p class="c0"><span class="c1">DR. GUSTAVO ANGELES MORENO</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p>
            <p class="c0"><span class="c1">DR. JOSE LUIS DOVAL SOSA</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p>
            <p class="c0"><span class="c1">DR. RICARDO TORTOLERO VAZQUEZ</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p>
            <p class="c0"><span class="c1">DR. JOSE ANTONIO PEREZ RUIZ</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p>
            <p class="c0"><span class="c1">DR. SERGIO ANTONIO MONCAYO CUEVAS</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE HIGIENE Y SALUD EN EL TRABAJO</span></p>
            <p class="c0"><span class="c1">DR. JUAN JOSE RAMIREZ RAMIREZ</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTE DE LA COMISION DE CONTROL Y ASIGNACION DE PLAZAS</span></p>
            <p class="c0"><span class="c1">DR. FRANCISCO JAVIER CAMPOS MILLAN</span></p>
            <p class="c0"><span class="c2">SECRETARIA DE LA COMISION DE CONTROL Y ASIGNACION DE PLAZAS</span></p>
            <p class="c0"><span class="c1">DRA. MARIA DEL REFUGIO ROBLES CABRERA</span></p>
            <p class="c0"><span class="c2">SECRETARIA DE LA COMISION DE CONTROL Y ASIGNACION DE PLAZAS</span></p>
            <p class="c0"><span class="c1">DRA. MARIA DEL ROCIO GOMEZ BAEZ</span></p>
            <br>
            <p class="c0"><span class="c2">PRESIDENTE DE LA COMISION DE CAPACITACION TECNICA Y ADMINISTRATIVA</span></p>
            <p class="c0"><span class="c1">DRA. LUCIA ALEJANDRA RIVERA MENDEZ</span></p>
            <p class="c0"><span class="c2">SECRETARIO DE LA COMISION DE CAPACITACION TECNICA Y ADMINISTRATIVA</span></p>
            <p class="c0"><span class="c1">DR.LUIS NU&Ntilde;EZ DE ALBA</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DEL DESARROLLO DE LA MUJER</span></p>
            <p class="c0"><span class="c8">SECRETARIA</span><span class="c1">&nbsp;DRA. SILVIA LETICIA AVILA MEDINA</span></p>
            <p class="c0"><span class="c1">DRA. MARIA FLORES BETANCOURTH</span></p>
            <p class="c0"><span class="c1">DRA. CAROLINA HERNANDEZ MALDONADO</span></p>
            <p class="c0"><span class="c1">DRA. ROSA MARIA SUAREZ SOSA</span></p>
            <p class="c0"><span class="c1">DRA. ROSA MARIA LEZAMA BARRAGAN</span></p>
            <p class="c0"><span class="c1">DRA. JUANA CHAVEZ MARTINEZ</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE ASUNTOS JURIDICOS</span></p>
            <p class="c0"><span class="c8">SECRETARIO</span><span class="c1">&nbsp;DR. JORGE RIEGO VAZQUEZ</span></p>
            <p class="c0"><span class="c1">DR. JUAN MANUEL GARCIA RODRIGUEZ</span></p>
            <p class="c0"><span class="c1">DR. SERGIO RAUL MENDOZA LEYVA</span></p>
            <p class="c0"><span class="c1">DR. JOSE LUIS PEREZ ARREOLA</span></p>
            <p class="c0"><span class="c1">DR.MIGUEL ANGEL CASTILLO CHAVEZ</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE REVISORA DE LAS CONDICIONES GENERALES DE TRABAJO</span></p>
            <p class="c0"><span class="c8">SECRETARIO</span><span class="c1">&nbsp;DR. RAUL MARISCAL GONZALEZ</span></p>
            <p class="c0"><span class="c1">DR. CARLOS MANUEL MORALES OCA&Ntilde;A</span></p>
            <p class="c0"><span class="c1">DRA. ANGELICA CONSUELO GUTIERREZ CHAVEZ</span></p>
            <p class="c0"><span class="c1">DR. JOSE MEJIA GONZALEZ</span></p>
            <p class="c0"><span class="c1">DR. ELIOS LIBIO SANCHEZ HUERTA</span></p>
            <br>
            <p class="c0"><span class="c2">SECRETARIA DE INFORMATICA</span></p>
            <p class="c0"><span class="c8">SECRETARIO</span><span class="c1">&nbsp;DR. HORACIO REYNA AMAYA</span></p>
            <p class="c0"><span class="c1">DR. GUILLERMO DAMASO CAMACHO BORBOA</span></p>
            <p class="c0"><span class="c1">DR. JULIO ALEJANDRO BLANCO D&acute;MENDIETA</span></p>
            <p class="c0" id="h.gjdgxs"><span class="c1">DR. JOSE ESQUIVEL VALDEZ</span></p>
        </div>
        </div>
        </div>
        <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
<%}%>
