<%-- 
    Document   : FormularioReporteTerapiaFisica
    Created on : 01-dic-2022, 9:47:26
    Author     : Sebastian Carvajal
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/ReportesTerapiaFisica.css" rel="stylesheet" type="text/css"/>
        <title>Reportes - Terapia Física</title>
    </head>
    <body>
                    <%
                HttpSession s = request.getSession();
            %>
        <header id="header" style=" background: #007653 !important;">
            <a class="logo" href="Principal.jsp">
            </a>
        </header>
        <div class="div-head-tittle"><h2></h2></div>
        
       <!-- 
        <input type="button" onclick="javascript:menutf();" value="<-- Volver" class="btn-accept" />
        
       -->
         <!-- Reporte General de pacientes atendidos -->
        <form name="form1" method="post" action="REPORTETerapiaFisicaGeneral.jsp" target="_blank" >
            <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px' >
                            <thead>
                                <h1 class="textgrueso"  style='text-align: center; '>REPORTE DE PACIENTES ATENDIDOS</h1>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><div ></div> Ingrese Su Usuario </th>
                                    <th><div ></div>Ingrese Fecha Inicio</th>
                                    <th><div ></div>Ingrese Fecha Fin</th>
                                </tr>
                                <tr>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="Usuario" class="inp-ced" placeholder="Su usuario es" name="Usuario"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaInicio"></label><input type="date" id="fechaInicio" class="inp-lname" placeholder="Fecha Inicio"required=""  name="fechaInicio"onchange="myFunction(value)"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaFin"></label><input type="date" id="fechaFin" class="inp-lname" placeholder="Fecha Fin"required=""  name="fechaFin"onchange="myFunction(value)"/></div></td>
                                </tr>
                                <tr>
                                    <td></td> 
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="Generar Reporte" style='width: 200px;'/></td> 
                                    <td></td> 
                                </tr>
                            </tbody>   
                        </table>
                    </div>           
                </div>
            </section>            
        </form>
        
        <!-- Reporte de Atención de un solo pacientes-->
        <form name="form1" method="post" action="REPORTETerapiaFisicaPaciente.jsp" target="_blank" >
            <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px' >
                            <thead>
                                <h1 class="textgrueso"  style='text-align: center; '>REPORTE DE TERAPIAS DE UN PACIENTE</h1>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><div></div>Ingrese Su Usuario </th>
                                    <th><div></div>Ingrese Fecha Inicio</th>
                                    <th><div></div>Ingrese Fecha Fin</th>
                                </tr>
                                <tr>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="Usuario" class="inp-ced" placeholder="Su usuario es" name="Usuario"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaInicio"></label><input type="date" id="fechaInicio" class="inp-lname" placeholder="Fecha Inicio"required=""  name="fechaInicio"onchange="myFunction(value)"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaFin"></label><input type="date" id="fechaFin" class="inp-lname" placeholder="Fecha Fin"required=""  name="fechaFin"onchange="myFunction(value)"/></div></td>
                                </tr>
                                <tr>
                                    <th><div></div> Ingrese Cédula del paciente </th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="cedulaPaciente" class="inp-ced" placeholder="Ingrese Cédula del Paciente" name="cedulaPaciente"/></div></td> 
                                    <td></td> 
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="Generar Reporte" style='width: 200px;'/></td> 
                                    
                                </tr>
                            </tbody>   
                        </table>
                    </div>           
                </div>
            </section>            
        </form>
        
        <!-- Consulta terapia en casa -->
        <form name="form1" method="post" action="REPORTETerapiaFisicaCasa.jsp" target="_blank" >
            <section class="sec-main">
                <div class="div-cont-main">         
                    <div class="div-cont-ced">
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px' >
                            <thead>
                                <h1 class="textgrueso"  style='text-align: center; '>CONSULTA DE RECOMENDACIONES DE TERAPIA EN CASA</h1>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><div></div>Ingrese Su Usuario </th>
                                    <th><div></div>Ingrese Cédula del paciente</th>
                                    <th><div></div>Ingrese Fecha de la cita</th>
                                </tr>
                                <tr>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="Usuario" class="inp-ced" placeholder="Su usuario es" name="Usuario"/></div></td>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="cedulaPaciente" class="inp-ced" placeholder="Cédula del paciente" name="cedulaPaciente"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaConsulta"></label><input type="date" id="fechaConsulta" class="inp-lname" placeholder="Fecha"required=""  name="fechaConsulta"onchange="myFunction(value)"/></div></td>
                                </tr>
                                <tr>
                                    <td></td> 
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="CONSULTAR" style='width: 200px;'/></td> 
                                    <td></td> 
                                    
                                    
                                </tr>
                            </tbody>   
                        </table>
                    </div>           
                </div>
            </section>            
        </form>
        
        <!-- Consulta de recetario-->
        <form name="form1" method="post" action="REPORTETerapiaFisicaReceta.jsp" target="_blank" >
            <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px' >
                            <thead>
                                <h1 class="textgrueso"  style='text-align: center; '>CONSULTA DE RECETARIO MÉDICO</h1>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><div></div>Ingrese Su Usuario </th>
                                    <th><div></div>Ingrese Cédula del paciente</th>
                                    <th><div></div>Ingrese Fecha de la cita</th>
                                </tr>
                                <tr>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="Usuario" class="inp-ced" placeholder="Su usuario es" name="Usuario"/></div></td>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="cedulaPaciente" class="inp-ced" placeholder="Cédula del paciente" name="cedulaPaciente"/></div></td>
                                    <td><div class="div-cont-lname"><label for="fechaConsulta"></label><input type="date" id="fechaConsulta" class="inp-lname" placeholder="Fecha"required=""  name="fechaConsulta"onchange="myFunction(value)"/></div></td>
                                </tr>
                                <tr>
                                    <td></td> 
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="CONSULTAR" style='width: 200px;'/></td> 
                                    <td></td> 
                                    
                                    
                                </tr>
                            </tbody>   
                        </table>
                    </div>           
                </div>
            </section>            
        </form>
        
        <!-- Reporte de todos los pacientes atendidos de un mes especifico-->
        <!--
        <form name="form1" method="post" action="REPORTEHistorialpaciente.jsp">
            <section class="sec-main">
                <div class="div-cont-main"> 
                    <div class="div-cont-ced">
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px' >
                            <thead>
                                <h1 class="textgrueso"  style='text-align: center; '>REPORTE DE PACIENTES ATENDIDOS DE UN MES ESPECÍFICO</h1>
                            </thead>
                            <tbody>
                                <tr>
                                    <th><div></div> Ingrese Su Usuario </th>
                                    <th><div></div>Escoja El Mes</th>
                                    <th><div></div>Escoja El Año</th>
                                </tr>
                                <tr>
                                    <td><div class="div-cont-ced" style='margin-top: 10px !important;'><input type="text" id="Usuario" class="inp-ced" placeholder="SU USUARIO ES" name="Usuario"/></div></td>
                                    <th>
                                        <div class="div-cont-ced">
                                            <select class="sel-dep-to-transf" name="tipo">
                                                <option>Enero</option>
                                                <option>Febrero</option>
                                                <option>Marzo</option>
                                                <option>Abril</option>
                                                <option>Mayo</option>
                                                <option>Junio</option>
                                                <option>Julio</option>
                                                <option>Agosto</option>
                                                <option>Septiembre</option>
                                                <option>Octubre</option>
                                                <option>Noviembre</option>
                                                <option>Diciembre</option>
                                            </select>
                                        </div>
                                    </th> 
                                    <th>
                                        <div class="div-cont-ced">
                                            <select class="sel-dep-to-transf" name="tipo" id="select1">
                                                <option>2010</option>
                                                <option>2011</option>
                                                <option>2012</option>
                                                <option>2013</option>
                                                <option>2014</option>
                                                <option>2015</option>
                                                <option>2016</option>
                                                <option>2017</option>
                                                <option>2018</option>
                                                <option>2019</option>
                                                <option>2020</option>
                                                <option>2021</option>
                                                <option>2022</option>
                                                <option>2023</option>
                                                <option>2024</option>
                                                <option>2025</option>
                                                <option>2026</option>
                                                <option>2027</option>
                                                <option>2028</option>
                                                <option>2029</option>
                                                <option>2030</option>
                                            </select>
                                        </div>
                                    </th> 
                                </tr>
                                <tr>                                    
                                    <td></td> 
                                    <td><input type="submit" name="button" id="btn-actiong" class="btn-accept" value="Generar Reporte"/></td> 
                                    <td></td>                                     
                                </tr>
                            </tbody>   
                        </table>
                    </div>           
                </div>
            </section>            
        </form>
        -->

        
        <script>
            window.onload=function() {
                //var seleccion=document.getElementById('select1');
                //var hoy = new Date();
                //var fecha = hoy.getDate() + '-' + ( hoy.getMonth() + 1 ) + '-' + hoy.getFullYear();
                //alert(fecha);
                //seleccion.selectedIndex = 3;
            }
            
            
            var a;
            function myFunction(val) {
                a = val.split("-").reverse().join("/");
                document.getElementById("fecha").type = "text";
                document.getElementById("fecha").value = a;
            }
            
            function menutf(){
              window.location.href = "./MenuTerapiaFisica.jsp";
            }
        </script>
    </body>
</html>

