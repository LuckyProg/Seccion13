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
        <style>

            /* Style the tab */
            div.tab {
                float: left;
                border: 1px solid #ccc;
                background:transparent;
                width: 30%;
                height: 760px;
            }

            /* Style the buttons inside the tab */
            div.tab button {
                display: block;
                background-color: inherit;
                color: black;
                padding: 22px 16px;
                width: 100%;
                border: none;
                outline: none;
                text-align: left;
                cursor: pointer;
                transition: 0.3s;
                font-size: 17px;
            }

            /* Change background color of buttons on hover */
            div.tab button:hover {
                background-color: #ffcc80;
            }

            /* Create an active/current "tab button" class */
            div.tab button.active {
                background-color: #ffb74d;
            }

            /* Style the tab content */
            .tabcontent {
                float: left;
                padding: 15px 40px;
                border: 1px solid #ccc;
                width: 70%;
                border-left: none;
                height: 760px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='4'/>
        </jsp:include>
        <div style="background: url(../IMG/carteras.jpg);background-repeat: no-repeat;background-size: cover;background-position: center;background-attachment: fixed;margin-top: 5%;">
        <div style="background: rgba(50, 80, 180,.85);margin-top: 5%;padding: 3px;">
        <div style="padding: 35px; height:820px; margin:50px; margin-top: 5%; border-radius: 5px;background: rgba(255,255,255,.95);">
              <div class="tab">
                <button class="tablinks" onclick="openCity(event, '1')" id="defaultOpen">Dígitos</button>
                <button class="tablinks" onclick="openCity(event, '2')" id="defaultOpen">Préstamos</button>
                <button class="tablinks" onclick="openCity(event, '3')" id="defaultOpen">Créditos</button>
                <button class="tablinks" onclick="openCity(event, '4')" id="defaultOpen">Pensiones y jubilaciones</button>
                <button class="tablinks" onclick="openCity(event, '5')" id="defaultOpen">Asistencia Social</button>
                <button class="tablinks" onclick="openCity(event, '6')" id="defaultOpen">Premios y estímulos</button>
                <button class="tablinks" onclick="openCity(event, '8')" id="defaultOpen">Becas</button>
                <button class="tablinks" onclick="openCity(event, '9')" id="defaultOpen">Organización</button>
                <button class="tablinks" onclick="openCity(event, '10')" id="defaultOpen">Secretaría del Exterior</button>
                <button class="tablinks" onclick="openCity(event, '11')" id="defaultOpen">Secretaría del Interior</button>
                <button class="tablinks" onclick="openCity(event, '12')" id="defaultOpen">Trabajo y Conflictos</button>
              </div>

              <div id="1" class="tabcontent">
                  <center><h3>Dígitos</h3></center>
                  <br>
                  <p style="text-align: justify; font-size: 15px;">
                    LINEAMIENTOS PARA LA ASIGNACIÓN DE DÍGITO SINDICAL DE LOS TRABAJADORES DE BASE Y LISTA DE RAYA BASE DEL GOBIERNO DE LA CDMX
                    <br>
                    <br>
                    Los requisitos que se deberán cubrir al momento de presentarse la solicitud de asignación de dígito sindical, son los siguientes:
                    <br>
                    <br>
                    a) Solicitud por escrito, con la firma autógrafa del trabajador de base o de lista de raya base, en la que manifieste expresamente su voluntad de afiliarse a la Sección del Sindicato Único de Trabajadores del Gobierno del Distrito Federal, que sea de su interés.
                    <br>
                    b) Copia fotostática simple del último recibo de pago del trabajador de base o de lista de raya base interesado.
                    <br>
                    c) Copia fotostática simple de identificación oficial vigente del trabajador de base o de lista de raya base interesado.
                    <br>
                    <br>
                    No procederá la asignación de dígito sindical, por cualquiera de las siguientes causas:
                    <br>
                    <br>
                    a) Cuando la solicitud de asignación de dígito sindical sea presentada ante la Dirección General de Administración, por instancia diversa a la Presidencia del Comité Ejecutivo General del Sindicato Único de Trabajadores del Gobierno del Distrito Federal.
                    <br>
                    b) Cuando el trabajador se ubique en alguno de los supuestos previstos por cualquiera de los incisos de la fracción II del artículo 5° (trabajadores de confianza) o del artículo 8° (personal de vigilancia de los establecimientos penitenciarios, cárceles o galeras y aquellos que presten sus servicios mediante contrato civil o que sean sujetos al pago de honorarios), ambos de la Ley Federal de los Trabajadores al Servicio del Estado.
                    <br>
                    c) Cuando el trabajador de base o de lista de raya base tenga asignado previamente dígito sindical.
                    <br>
                    d) Cuando el trabajador de base o de lista de raya base se encuentre disfrutando de licencia sin goce de sueldo.
                    <br>
                    e) Cuando el trabajador de base o de lista de raya base se encuentre suspendido, destituido y/o inhabilitado en sus derechos laborales, por resolución administrativo o judicial emitida por autoridad competente.
                    <br>
                    f) Cuando no se cumplan todos y cada uno de los requisitos señalados en el Lineamiento Tercero.
                    <br>
                    g) Cuando no haya transcurrido un mínimo de seis meses más un día, de que el trabajador de base o de lista de raya base haya obtenido nombramiento definitivo como trabajador del Gobierno del Distrito Federal.
                  </p>
              </div>
              <div id="2" class="tabcontent">
                  <center><h3>Préstamos</h3></center>
                  <p style="text-align: justify; font-size: 20px;">
                    <br>
                    <b>Objetivos:</b>
                    <br>
                    <br>
                    Asesoría a los agremiados en gestiones para obtener préstamos a corto o mediano plazo del ISSSTE.
                    <br>
                    Auxiliar a los compañeros, cuando lo requieran, en la certificación de sus solicitudes por el Gobierno de la CDMX y sus dependecia.
                    <br>
                    Formular propuestas ante el Congreso General o el Consejo General, para superar deficiencias en la tramitación de solicitudes.
                  </p>
                    <br>
                    <a style="font-size:20px;" href="http://www.gob.mx/issste/acciones-y-programas/otorgamiento-de-prestamos-personales" target="_blank">http://www.gob.mx/issste/acciones-y-programas/otorgamiento-de-prestamos-personales</a>
                    <br>
                    <br>
                    <img src="../IMG/pres.jpg" style="width:40%;"/>
              </div>
              <div id="3" class="tabcontent">
                <center><h3>Créditos</h3></center>
                <br>
                <p style="text-align: justify; font-size: 20px;">
                    Asesora y orientara a los trabajadores en lo personal en sus trámites para obtener casa-habitación o departamento FOVISSSTE tiene diversas opciones de crédito pensadas en las necesidades de cada trabajador.
                    Más allá del Crédito Tradicional, hoy contamos con una amplia gama de modalidades que no dependen de un sorteo para construir un patrimonio
                    <br>
                    <br>
                    MODALIDADES DE CREDITO
                    <br>
                    <a style="font-size:20px;" href="http://www.gob.mx/fovissste/acciones-y-programas/creditos-hipotecarios" target="_blank">http://www.gob.mx/fovissste/acciones-y-programas/creditos-hipotecarios</a>
                    <br>
                    <br>
                    SIMULADOR DE CRÉDITOS
                    <br>
                    <a style="font-size:20px;" href="http://www.fovissste.gob.mx/es/FOVISSSTE/Simulador_Creditos_Tradicionales" target="_blank">http://www.fovissste.gob.mx/es/FOVISSSTE/Simulador_Creditos_Tradicionales</a>
                    <br>
                    <br>
                    <img src="../IMG/cre.jpg" style="width:90%;"/>
                </p>
              </div>
              <div id="4" class="tabcontent">
                  <center><h3>Pensiones y jubilaciones</h3></center>
                <br>
                <br>
                <h5 class="">Funciones</h5>
                    <p style="text-align: justify; font-size: 20px;">
                        • Conocer e informar de  los asuntos relativos a las pensiones y jubilaciones de los agremiados de la Sección 13, y familiares derechohabientes.
                        <br>
                        • Asesorar a los interesados en la tramitación de pensiones ante el Instituto de Seguridad y Servicios Sociales para los trabajadores al servicio del estado.
                        <br>
                        • Promover la divulgación de los beneficios que la Ley otorga a los trabajadores en el rengón de pensiones, para que sean de conocimiento.
                        <br>
                        • Informar de los pasos a seguir en las pensiones por vejez, invalidez o jubilación de los agremiados que lo soliciten.
                        <br>
                        • Promover proyectos de bienestar social para quienes ya gozan de una pensión o jubilación.
                        <br>
                        • Elaboración de folletos, panfletos, trípticos o posters que informen sobre documentación necesaria para iniciar trámites de jubilación.
                        <br>
                        • Dar pláticas o seminarios sobre las novedades que puedan presentarse para la gestión de los cobros y/o pagos de las diversas pensiones.
                </p>
              </div>
              <div id="5" class="tabcontent">
                <center><h3>Asistencia Social</h3></center>
                <br>
                <p style="text-align: justify; font-size: 18px;">
                    Vigila que se de la atención médica a los trabajadores sea adecuada y eficaz, atraves de sus diversos programas, encaminados a la detección oportuna y prevención, fomentando en el trabajador su bienestar y atendiendo las quejas, que de estos deriven. 
                    <br>
                    <br>
                    <b>Clínica de Detección y Diagnóstico Automatizado CLIDDA</b>
                    <br>
                    <br>
                    Acude a la clínica del CLIDDA para que te realicen un chequeo médico. Este incluye exámenes de sangre y orina, detección de cáncer de mama y cervicouterino, antígeno prostático, densitometría ósea, prueba de VIH y examen de vista entre otros.
                    Recuerda que la mejor medicina, es la preventiva.
                    <br>
                    Procedimiento: Llena tu solicitud y anexa ultimo recibo de pago, INE o IFE vigente y CURP, entregala en tu Sección y espera tu cita.(este beneficio es solo para el trabajador en activo desde los 21 años en adelante)
                    <br>
                    <br>
                    <b>Solicitud de vale de anteojo.</b>
                    <br>
                    Dentro de las prestaciones economicas y sociales, se contempla el proveeer de ateojos a los trabajadores, conyugue y hasta dos hijos no mayores de 22 años, que asi lo requieran de forma anual, un vale a cada uno comprobando mediante documentos el parentesco, para la adquisición de ateojos en la empresa con el contrato vigente en el ejercicio presupuestal.
                    <br>
                    <br>
                    <b>Servicios funerarios.</b>
                    <br>
                    Por medio de convenios con terceros se otorgará al trabajador y a sus familiares en primer grado, el servicio funerario completo y decoroso.
                </p>
              </div>
              <div id="6" class="tabcontent">
                <center><h3>Premios y estímulos</h3></center>
                <br>
                <p style="text-align: justify; font-size: 20px;">
                    El Gobierno otorgará estímulos y recompensas a los trabajadores que se distingan por su asistencia, puntualidad y eficiencia en el trabajo, así como por su antigüedad en el servicio, independientemente de los que establece la Ley de Premios, Estímulos y Recompensas Civiles.
                    <br>
                    <br>
                    <b>Los estímulos consistirán en:</b>
                    <br>
                    Notas buenas, diplomas, distintivos medallas y ascensos.
                    <br>
                    <br>
                    <b>Las recompensas consistirán en:</b>
                    <br>
                    Premios en efectivo, que no podrán ser menores al monto económico del año próximo pasado, dias de descanso y vacaciones extraordinarias.
                    <br>
                    <br>
                    Ambas prestaciones se aplicaran en las fechas y condiciones publicadas en el año del ejercicio.
                </p>
              </div>
              <div id="8" class="tabcontent">
                <center><h3>Becas</h3></center>
                <br>
                <p style="text-align: justify; font-size: 20px;">
                    El SUTGCDMX otorga becas económicas a los hijos de los trabajadores en los niveles primaria, secundaria y bachillerato, de acuerdo a sus promedios, de forma mensual o cuatrimestral.
                    <br>
                    Esta inscripción o renovación se tramita de manera personal el trabajador, cumpliendo con los lineamientos y requerimientos que se publican en una convocatoria de manera anual.
                    <br>
                    <br>
                    De la misma manera apoya a los trabajadores e hijos de los trabajadores con el pago de TITULACION (pago único).
                    <br>
                    Otro estimulo es el que se les otorga a los trabajadores, conyugue e hijos al concluir sus estudios de LICENCIATURA.
                    <br>
                    <br>
                    El pago de las becas otorgadas se efectua de manera directa a los beneficiarios,a través de tarjeta electrónica bancaria.
                </p>
              </div>
              <div id="9" class="tabcontent">
                <center><h3>Organización</h3></center>
                <br>
                <h5 class="">Funciones</h5>
                <p style="text-align: justify; font-size: 20px;">
                    Es la encargada de conocer, atender y resolver, en coordinación con el Secretario General, la planeación de asambleas del comité ejecutivo, reuniones con los diversos delegados de trabajo, así como reuniones de trabajo con las diversas autoridades que así lo requieran.
                    <br>
                    <br>
                    Coordinar los trabajos de la vida interna del sindicato, así también como la credencialización y registro de los agremiados al sindicato.
                    <br>
                    <br>
                    Coordinar los diversos eventos que indique el Secretario general para el beneficio de los agremiados.

                </p>
              </div>
              <div id="10" class="tabcontent">
                <center><h3>Secretaría del Exterior</h3></center>
                <br>
                <h5 class="">Funciones</h5>
                <p style="text-align: justify; font-size: 20px;">
                    Mantener, mejorar y preservar la buena relación entre la Sección 13 con sus Secciones hermanas, para el fortalecimiento del SUTGCDMX, con todas y cada una de las secciones en beneficio de todos los trabajadores.
                </p>
              </div>
              <div id="11" class="tabcontent">
                <center><h3>Secretaría del Interior</h3></center>
                <br>
                <h5 class="">Funciones</h5>
                <p style="text-align: justify; font-size: 20px;">
                        • Sustituir al Secretario General en su ausencia.
                        <br>
                        • Autorizar conjuntamente con el Secretario General la correspondencia con las demás carteras y miembros del sindicato.
                        <br>
                        • Cuidar empeñosamente porque se conserve la unidad y cohesión del sindicato, evitando se alteren las buenas relaciones entre las diversas carteras.
                </p>
              </div>
              <div id="12" class="tabcontent">
                <center><h3>Trabajo y conflictos</h3></center>
                <br>
                <h5 class="">Funciones</h5>
                    <p style="text-align: justify; font-size: 20px;">
                        • Encargarse de dar solución a todos los problemas relacionados con la violación de nuestras Condiciones Generales de Trabajo.
                        <br>
                        • Asesorar y orientar a los agremiados acerca de sus derechos laborales.
                        <br>
                        • Mantiene la inviolabilidad de las conquistas de trabajo derivadas de la ley y la costumbre.
                        <br>
                        • Lleva registro de las demandas, antecedentes y resoluciones de los diferentes conflictos de trabajo.
                </p>
                </div>

              <script>
              function openCity(evt, cityName) {
                  var i, tabcontent, tablinks;
                  tabcontent = document.getElementsByClassName("tabcontent");
                  for (i = 0; i < tabcontent.length; i++) {
                      tabcontent[i].style.display = "none";
                  }
                  tablinks = document.getElementsByClassName("tablinks");
                  for (i = 0; i < tablinks.length; i++) {
                      tablinks[i].className = tablinks[i].className.replace(" active", "");
                  }
                  document.getElementById(cityName).style.display = "block";
                  evt.currentTarget.className += " active";
              }

              // Get the element with id="defaultOpen" and click on it
              document.getElementById("defaultOpen").click();
              </script>
        </div>
        </div>
        </div>
        <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
<%}%>
