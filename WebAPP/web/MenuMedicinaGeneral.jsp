<%-- 
    Document   : MenuMedicinaGeneral
    Created on : 17-ene-2023, 0:06:36
    Author     : Sebastian Carvajal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Medicina General</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="css/menumedicinageneral.css" rel="stylesheet" type="text/css"/>
        <link href="css/animacionprincipal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
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
                                    <img alt="" src="svg/medico.svg" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Gestión de Pacientes</h3>

                            </header>
                            <p>Ingresar datos personales por primera vez del paciente o actualizar datos</p>
                            <input type="button" onclick="javascript:Ingresar();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                            <input type="button" onclick="javascript:Actualizar();" value="Actualizar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>

                    <!-- SEGUNDO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/icons8_workstation_96px.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">CONSULTA MÉDICA</h3>

                            </header>
                            <p>Agregar información de consulta médica y receta</p>
                            <input type="button" onclick="javascript:agregarConsulta();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    
                    <!-- TERCER MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="svg/resultados-de-los-examenes.svg" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">EXAMENES</h3>

                            </header>
                            <p>Subir o actualizar examenes del paciente</p>
                            <input type="button" onclick="javascript:SubirExamen();" value="Subir" class="button primary" style=" background: #007653 !important;"/>
                            <input type="button" onclick="javascript:ActualizarExamen();" value="Actualizar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    <!-- CUARTO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/icons8_accounting_96px.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">HISTORIAL</h3>

                            </header>
                            <p>Mostrar la información de las actividades de los pacientes</p>
                            <input type="button" onclick="javascript:historial();" value="Ver Historial" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>                    
                    
                    <!-- QUINTO MODULO -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/icons8_account_96px.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">REPORTES MEDICINA GENERAL</h3>
                            </header>
                            <p>Generar archivos PDF de distintos reportes</p>
                            <a href="MenuReportesMedGeneral.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
                        </div>
                    </section>
                    
                </div>
            </div>
        </section>
        
        <script>
            
            function principal(){
              window.location.href = "./Principal.jsp";
            }

            function Ingresar(){
              window.location.href = "./ingreso.jsp?idx=mg";
            }
            function Actualizar(){
              window.location.href = "./Actualizardatospaciente.jsp?idx=mg";
            }
            
            function agregarConsulta(){
              window.location.href = "./Medicinageneral.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            
            function SubirExamen(){
              window.location.href = "./ListarPacientes.jsp";
            }
            function ActualizarExamen(){
              window.location.href = "./ListarPacientesGeneral.jsp";
            }
            
            function historial(){
              window.location.href = "./HistorialPaciente.jsp";
            }
        </script>
    </body>
</html>
