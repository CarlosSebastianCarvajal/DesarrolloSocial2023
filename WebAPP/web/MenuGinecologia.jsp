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
                    <!--  HISTORIA CLINICA NORMAL -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/historia_clinica_96.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">HISTORIA CLÍNICA DE LA PACIENTE</h3>

                            </header>
                            <p>Registre o actualice la Historia Clínica Gineco-Obstetrico de las pacientes</p>
                            <input type="button" onclick="javascript:nuevaHistoriaNormal();" value="Nueva" class="button primary" style=" background: #007653 !important;"/>
                            
                            <input type="button" onclick="javascript:actuaHistoriaNormal();" value="Ver/Modificar" class="button primary" style=" background: #007653 !important;"/>
                            
                        </div>
                    </section>
                    
                    
                    
                    <!-- SEGUIMIENTO NORMAL -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/gine_seguimiento_96.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">SEGUIMIENTO A PACIENTE</h3>
                            </header>
                            <p>Ingrese la información correspondiente al seguimiento realizado a la paciente</p>
                            <input type="button" onclick="javascript:abrirSeguimientoNormal();" value="Registrar" class="button primary" style=" background: #007653 !important;"/>
                        </div>
                    </section>
                    
                    <!--HISTORIA CLINICA PACIENTES EMBARAZADAS -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="">
                                    <img alt="" src="img/gine_historia_emba_96.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">HISTORIA CLÍNICA PACIENTES EMBARAZADAS</h3>

                            </header>
                            <p>Registre Historia Clínica Gineco-Obstetrico y Perinatal de pacientes embarazadas</p>
                            <input type="button" onclick="javascript:abrirHistoriaEmba();" value="Registrar Nueva" class="button primary" style=" background: #007653 !important;"/>
                            
                        </div>
                    </section>
                    
                    <!-- SEGUIMIENTO PACIENTES EMBARAZADAS -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/gine_seguimiento_emba_96.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">SEGUIMIENTO A PACIENTES EMBARAZADAS</h3>
                            </header>
                            <p>Ingrese la información del seguimiento realizado a las pacientes embarazadas</p>
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
                    
                     <!-- EXAMENES -->
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
                    
                      <!-- HISTORIAL -->
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

                    <!-- REPORTES -->
                    <section class="animadoagregarinformacion">
                        <div class="content">
                            <header>
                                <a href="" >
                                    <img alt="" src="img/icon-reporte-terapia-fisica.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold" class="textgrueso">REPORTES GINECOLOGÍA</h3>
                            </header>
                            <p>Generar archivos PDF de distintos reportes</p>
                            <a href="ReportesGinecologia.jsp" class="button primary" style=" background: #007653 !important;">Acceder</a>
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
            
            function nuevaHistoriaNormal(){
              // Aqui coloca lo de ingresar historia clinica Cholota
              alert('Usted va a registrar una nueva historia clínica a una paciente. El seguimiento a la paciente ahora estará basada en la nueva historia clínica, en caso que desee cancelar la accion puede ralizarlo presionando el boton CANCELAR al fianl de la página');
              window.location.href = "./HistoriaClinica_Ginecologia.jsp?user="+document.getElementById("usuario").innerHTML;
              
            }
            function actuaHistoriaNormal(){
              window.location.href = "./Actualizar_HistoriaCli_Ginecologia.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirSeguimientoNormal(){
                window.location.href = "./SeguimientoGinecologia.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirHistoriaEmba(){
              window.location.href = "./HistoriaClinica_Ginecologia_Emb.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirSeguimientoEmba(){
              window.location.href = "./Seguimiento_Ginecologia_Emb.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function abrirSH(){
              window.location.href = "./Histopatologico.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            function SubirExamen(){
              window.location.href = "./ListarPacientesG.jsp";
            }
            function ActualizarExamen(){
              window.location.href = "./ListarPacientesGeneralG.jsp";
            }
            function historial(){
              window.location.href = "./HistorialPacienteG.jsp";
            }
            
        </script>
    </body>
</html>