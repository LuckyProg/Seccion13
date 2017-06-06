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
        <title>JSP Page</title>
        <style>

            /* Style the tab */
            div.tab {
                float: left;
                border: 1px solid #ccc;
                background-color: #fff3e0;
                width: 30%;
                height: 620px;
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
                height: 620px;
            }
        </style>
    </head>
    <body class="#e57373 red lighten-2">
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="pos" value='4'/>
        </jsp:include>
        <div class="#fafafa grey lighten-5" style="padding: 35px; height:690px; margin:50px; margin-top: 30px; border-radius: 5px;">
              <div class="tab">
                <button class="tablinks" onclick="openCity(event, '1')" id="defaultOpen">Dígitos</button>
                <button class="tablinks" onclick="openCity(event, '2')" id="defaultOpen">Préstamos</button>
                <button class="tablinks" onclick="openCity(event, '3')" id="defaultOpen">Créditos</button>
                <button class="tablinks" onclick="openCity(event, '4')" id="defaultOpen">Pensiones y jubilaciones</button>
                <button class="tablinks" onclick="openCity(event, '5')" id="defaultOpen">CLIDDA</button>
                <button class="tablinks" onclick="openCity(event, '6')" id="defaultOpen">Premios y estímulos</button>
                <button class="tablinks" onclick="openCity(event, '7')" id="defaultOpen">Anteojos</button>
                <button class="tablinks" onclick="openCity(event, '8')" id="defaultOpen">Becas</button>
                <button class="tablinks" onclick="openCity(event, '9')" id="defaultOpen">Pago de marcha</button>
              </div>

              <div id="1" class="tabcontent">
                <h3>Dígitos</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
              </div>
              <div id="2" class="tabcontent">
                <h3>Préstamos</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
              </div>
              <div id="3" class="tabcontent">
                <h3>Créditos</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
              
              </div>
              <div id="4" class="tabcontent">
                <h3>Pensiones y jubilaciones</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
              
              </div>
              <div id="5" class="tabcontent">
                <h3>CLIDDA</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
              
              </div>
              <div id="6" class="tabcontent">
                <h3>Premios y estímulos</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
              
              </div>
              <div id="7" class="tabcontent">
                <h3>Anteojos</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
              
              </div>
              <div id="8" class="tabcontent">
                <h3>Becas</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
              </div>
              <div id="9" class="tabcontent">
                <h3>Pago de marcha</h3>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dictum, justo tempus rutrum varius, mi nisi efficitur justo, in dignissim quam eros nec risus. Sed lectus nisi, congue euismod elementum commodo, interdum vel odio. Sed ligula dolor, aliquam quis est a, commodo tempus velit. Suspendisse dignissim, elit ac scelerisque fringilla, ipsum metus eleifend leo, a interdum felis nisi pharetra urna. Donec a euismod metus, at vulputate urna. Phasellus risus lorem, fringilla eu dictum sed, ultrices at velit. Curabitur cursus lacinia felis vel sagittis. Aliquam at pellentesque nisl. Ut maximus, urna ut imperdiet imperdiet, neque ligula facilisis nisi, et elementum ex metus ut augue. Donec efficitur ipsum quam, quis condimentum turpis gravida quis. Fusce consectetur lacus elit, non aliquet ipsum semper et. Morbi eget diam sollicitudin massa pellentesque ultricies.
                    <br>
                    Nam justo urna, fringilla ut vulputate tincidunt, fermentum in nisi. Quisque et arcu id magna bibendum congue sit amet et sapien. Pellentesque lobortis massa in elit molestie, ut iaculis diam varius. Fusce vitae leo eu dolor placerat porttitor. Nullam a sapien metus. Ut imperdiet justo velit, eget commodo libero pharetra efficitur. Nunc vulputate quis metus eget vestibulum. Etiam ut turpis cursus, aliquet velit suscipit, luctus lorem. Fusce condimentum mattis metus et condimentum. Donec eu sapien sit amet dolor ullamcorper mattis et vehicula ligula. Curabitur iaculis orci sed enim elementum, non lacinia nisi imperdiet. Vestibulum ullamcorper auctor elit, auctor sollicitudin nibh rutrum vel. Nunc id sollicitudin tellus, nec fermentum justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla egestas, urna in ultrices aliquam, tortor diam accumsan lorem, ut cursus augue est sed urna. Fusce bibendum augue vitae rhoncus lobortis.</p>
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
        <jsp:include page="footer.jsp" flush="true"/>
    </body>
</html>
<%}%>
