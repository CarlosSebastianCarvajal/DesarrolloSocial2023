<%-- 
    Document   : MenuGinecologia
    Created on : 08-jun-2023, 0:03:36
    Author     : Sebastian Carvajal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ginecología</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="css/menuginecologia.css" rel="stylesheet" type="text/css"/>
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
                    <!-- GESTIÒN DE PACIENTES -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/GestionPaciente.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">Gestión de Pacientes</h3>

                            </header>
                            <p>Ingresar datos personales por primera vez del paciente o actualizar datos</p>
                            <input type="button" onclick="javascript:Ingresar();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                            <input type="button" onclick="javascript:Actualizar();" value="Actualizar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    <!-- HISTORIA CLINICA NORMAL -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/historia_clinica_96.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">HISTORIA CLÍNICA PACIENTE NORMAL</h3>

                            </header>
                            <p>Registre o actualice la Historia Clínica Gineco-Obstetrico de las pacientes</p>
                            <input type="button" onclick="javascript:abrirHistoriaNormal();" value="Registrar" class="button primary" style=" background: #007653 !important;"/>
                            <input type="button" onclick="javascript:actuaHistoriaNormal();" value="Actualizar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    <!-- SEGUIMIENTO NORMAL -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/gine_seguimiento_96.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">SEGUIMIENTO PACIENTE NORMAL</h3>
                            </header>
                            <p>Ingrese la información correspondiente al seguimiento realizado a la paciente</p>
                            <input type="button" onclick="javascript:abrirSeguimientoNormal();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    <!-- HISTORIA CLINICA PACIENTES EMBARAZADAS -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/gine_historia_emba_96.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">HISTORIA CLÍNICA PACIENTES EMBARAZADAS</h3>

                            </header>
                            <p>Registre o actualice la Historia Clínica Gineco-Obstetrico de las pacientes que se encuentran embarazadas</p>
                            <input type="button" onclick="javascript:abrirHistoriaEmba();" value="Registrar" class="button primary" style=" background: #007653 !important;"/>
                            <input type="button" onclick="javascript:actuaHistoriaEmba();" value="Actualizar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    <!-- SEGUIMIENTO PACIENTES EMBARAZADAS -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/gine_seguimiento_emba_96.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">SEGUIMIENTO PACIENTES EMBARAZADAS</h3>
                            </header>
                            <p>Ingrese la información correspondiente al seguimiento realizado a la paciente embarazada</p>
                            <input type="button" onclick="javascript:abrirSeguimientoEmba();" value="Ingresar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    <!-- SOLICITUD HISTOPATOLOGICA -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/solicitud_histopatologico.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">SOLICITUD HISTOPATOLÓGICA</h3>
                            </header>
                            <p>Elabore la solicitud Histopatológico para la paciente</p>
                            <input type="button" onclick="javascript:abrirSH();" value="Acceder" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>

                    <!-- REPORTES -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/icon-reporte-terapia-fisica.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">REPORTES TERAPIA FÍSICA</h3>
                            </header>
                            <p>Generar archivos PDF de distintos reportes</p>
                            <a href="ReportesTerapiaFisica.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
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
              window.location.href = "./ingreso.jsp?idx=g";
            }
            function Actualizar(){
              window.location.href = "./Actualizardatospaciente.jsp?idx=g";
            }
            
            function abrirHistoriaNormal(){
              // Aqui coloca lo de ingresar historia clinica Cholota
              window.location.href = "./HistoriaClinica_Ginecologia.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function actuaHistoriaNormal(){
              //window.location.href = "./Terapiafisica.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirSeguimientoNormal(){
                window.location.href = "./SeguimientoGinecologia.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirHistoriaEmba(){
              //window.location.href = "./Terapiafisica.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function actuaHistoriaEmba(){
              //window.location.href = "./Terapiafisica.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirSH(){
              //Aqui va lo de solicitud hispatologica
              //window.location.href = "./Terapiafisica.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            
            
        </script>
    </body>
</html>