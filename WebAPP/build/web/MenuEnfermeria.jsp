<%-- 
    Document   : MenuEnfermeria
    Created on : 16-jun-2023, 09:21:36
    Author     : Sebastian Carvajal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Enfermería</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="css/menuenfermeria.css" rel="stylesheet" type="text/css"/>
        <link href="css/animacionprincipal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            HttpSession s = request.getSession();
            String usuario=(String)s.getAttribute("galeno_user11");
            if(usuario==null)
            {
                response.sendRedirect("index.jsp");
            }
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
                                    <img alt="" src="img/signosvitales.png" width="96" height="96">
                                    <span class="label"></span></a>
                                <h3 style="color:#007653; font-weight: bold">TOMAR SIGNOS VITALES</h3>

                            </header>
                            <p>Registre o actualice la Historia Clínica Gineco-Obstetrico de las pacientes</p>
                            <input type="button" onclick="javascript:SignosVitales();" value="Registrar" class="button primary" style=" background: #007653 !important;"/>
                            
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
              window.location.href = "./ingreso.jsp?idx=e";
            }
            function Actualizar(){
              window.location.href = "./Actualizardatospaciente.jsp?idx=e";
            }
            
            function SignosVitales(){
              window.location.href = "./SignosVitales.jsp?user="+document.getElementById("usuario").innerHTML;
            }
            
            
        </script>
    </body>
</html>