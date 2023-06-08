<%-- 
    Document   : MenuPsicologia
    Created on : 16-ene-2023, 13:16:28
    Author     : Miguel Cholota
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Psicología</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="css/menupsicologia.css" rel="stylesheet" type="text/css"/>
        <link href="css/animacionprincipal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            //variables de session
        %>

        <label hidden id="usuario" style="display:none;"><%= s.getAttribute("galeno_user11")%> </label> 
        <label hidden id="nombre"></label>

   
        <div class="div-head-tittle"><h2></h2></div>
    
        <input type="button" onclick="javascript:principal();" value="<-- Volver al menú principal" class="btn-accept" />
        
        <section class="wrapper">
            <div class="inner">
                <div class="highlights">
                    <!-- PRIMER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/Agregar_Paciente_Psicologica.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">AGREGAR PACIENTE Y FICHA PSICOLÓGICA</h3>

                            </header>
                            <p>Ingresar para registrar paciente junto a su ficha psicológica</p>
                            <input type="button" onclick="javascript:abrirFicha();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    <!-- SEGUNDO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/Actualizar_Ficha.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">ACTUALIZAR FICHA PSICOLÓGICA</h3>

                            </header>
                            <p>Ingresar para actualizar la información de los pacientes que fueron registrados</p>
                            <input type="button" onclick="javascript:actualizarFicha();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>

                    <!-- TERCER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/Seguimiento_Caso.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">SEGUIMIENTO</h3>

                            </header>
                            <p>Ingresar al módulo de seguimiento para registrar la sesión con el paciente</p>
                            <input type="button" onclick="javascript:abrirSeguimiento();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    <!-- CUARTO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/Consultar_Seguimiento.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">CONSULTAR SEGUIMIENTOS</h3>

                            </header>
                            <p>Ingresar para consultar seguimientos para visualizar las anteriores sesiones de los pacientes</p>
                            <input type="button" onclick="javascript:abrirConsultarSeguimiento();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>                    
                    
                    <!-- X MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/icon-reporte-terapia-fisica.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">REPORTES PSICOLOGÍA</h3>
                            </header>
                            <p>Generar archivos PDF de distintos reportes</p>
                            <a href="MenuReportesPsicologia.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>
                    
                </div>
            </div>
        </section>
        
        <script>
            
            function principal(){
              window.location.href = "./Principal.jsp";
            }

            function abrirFicha(){
              window.location.href = "./Ficha_Psicologica.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function actualizarFicha(){
              window.location.href = "./Actualizar_Ficha_Psicologica.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirSeguimiento(){
              window.location.href = "./Seguimiento_Psicologica.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirConsultarSeguimiento(){
              window.location.href = "./Seguimiento_Psicologica_Consultar.jsp?user="+document.getElementById("usuario").innerHTML;
            }
        </script>
    </body>
</html>
