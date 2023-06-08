<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>DIRECCION DE DESARROLLO SOCIAL</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link rel="stylesheet" href="Principal/css/main.css" />
        <link href="css/animacionprincipal.css" rel="stylesheet" type="text/css"/>
    </head>

    <body class="is-preload">    
       <%
            HttpSession s = request.getSession();
            String usuario=(String)s.getAttribute("galeno_user11");
            if(usuario==null)
            {
                response.sendRedirect("index.jsp");
            }
            //variables de session
        %>    
        <label  id="usuario"      style="display:none;"><%= s.getAttribute("galeno_user11")%></label>
        <label  id="departamento" style="display:none;"><%= s.getAttribute("galeno_departamento")%></label>
        <label id="nombre"></label>

        <header id="header" style="">

            <header id="header" style=" background: #007653 !important;">
                <a class="logo" href="index.jsp">
                </a>
                <a class="logo" id="ulUserData" href="index.html"></a>
                <nav>
                    <a href="cambioclave.jsp" style="color:white" >Cambiar clave</a>
                    <a href="cerrar.jsp" style="color:white" >Cerrar sesión</a>
                </nav>
            </header>
        </header>
        <!-- container principal -->
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">
                     <!-- PRIMER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/medicina-general-96.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">MEDICINA GENERAL</h3>

                            </header>
                            <p>Ingresar al módulo para gestionar la informacion de los pacientes atendidos en medicina general y ver reportes</p>
                            <input type="button" onclick="javascript:abrirMedicinaGeneral();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    <!--  
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/icons8_workstation_96px.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">AGREGAR CONSULTA MEDICA Y RECETA</h3>

                            </header>
                            <p>Agregar consulta sobre el  paciente y receta medica</p>
                            <a id="PaginaMedi" class="button primary" style=" background: #007653 !important;" >Agregar consulta o receta</a>
                        </div>
                    </section>
                     -->
                    <!-- SEGUNDO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/icon-terapia-fisica-principal.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">TERAPIA FÍSICA</h3>
                            </header>
                            <p>Ingresar al módulo terapia física para guardar la informacion de los pacientes atendidos y ver reportes sobre pacientes atendidos</p>
                            <!--<a href="MenuTerapiaFisica.jsp" class="button primary" style=" background: #007653 !important;">Ingresar</a>-->
                            <input type="button" onclick="javascript:abrirTerapiaFisica();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                            
                        </div>
                    </section>
                    
                    <!-- PSICOLOGIA MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/Principal_psicologia_96.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">PSICOLOGÍA</h3>
                            </header>
                            <p>Ingresar al módulo psicología para gestionar la informacion de los pacientes atendidos</p>
                            <input type="button" onclick="javascript:abrirPsicologia();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                            
                        </div>
                    </section>
                    
                    
                    <!-- QUINTO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/icons8_profile_96px.png">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Actualizar datos personales medico</h3>
                            </header>
                            <p>Podrá actualizar sus datos personales, en caso de alguna actualización</p>
                            <input type="button" onclick="javascript:abrirActualizarDatos();" value="Acceder" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <!-- Scripts -->
        <script>
            //document.getElementById("departamento").innerHTML
            function abrirMedicinaGeneral(){
                if(document.getElementById("departamento").innerHTML === "1"){
                    window.location.href = "./MenuMedicinaGeneral.jsp"; 
                }else{
                    alert("Acceso permitido solo para el departamento de Medicina General");
                }//*/
            }
            function abrirPsicologia(){
                if(document.getElementById("departamento").innerHTML === "2"){
                    window.location.href = "./MenuPsicologia.jsp"; 
                }else{
                    alert("Acceso permitido solo para el departamento de Psicología");
                }//*/
            }
            function abrirTerapiaFisica(){
                if(document.getElementById("departamento").innerHTML === "3"){
                    window.location.href = "./MenuTerapiaFisica.jsp"; 
                }else{
                    alert("Acceso permitido solo para el departamento de Terapia Física");
                }//*/
            }
            function abrirActualizarDatos(){
                window.location.href = "./ActualizarDatosPersonalesMedicos.jsp";
            }
            
        </script>
        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="Principal/js/jquery.min.js"></script>
        <script src="Principal/js/browser.min.js"></script>
        <script src="Principal/js/breakpoints.min.js"></script>
        <script src="Principal/js/util.js"></script>
        <script src="Principal/js/main.js"></script>
        <script src="js/animacion.js" type="text/javascript"></script>


    </body>

</html>