<%-- 
    Document   : control
    Created on : 07-dic-2022, 15:50:49
    Author     : Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
        <link href="css/Ingresos_2.css" rel="stylesheet" type="text/css"/>
        <title>Seguimiento</title>
    </head>
    <body>

        <header id="header" style=" background: #007653 !important; margin-top:-40px">
            
                <a class="logo" href="Principal.jsp" id="ulUserData"> 
            </a>
             <nav class="nav-tp"></nav>
            
        </header>     
        <div class="div-head" style="margin-top:-18px"><h2></h2></div>


        <form class="form1" action="AddSeguimiento" method="GET" style="margin-top:-30px">
            <section class="sec-main">
                <div class="div-cont-main1">
                    <div class="div-cont-ced">
                    <input type="button" id="btn-actionbu" class="inp-search" value="Buscar"/>
                    <input type="text" id="txt-cedee" class="inp-ced" onkeypress='return validaNumericos(event)' placeholder="Cédula" name="cedula" maxlength="15"/>
                </div>  
                <hr />
                <div class="div-cont-ced">
                    <input type="button" id="btn-actionbusc" class="inp-search" value="Buscar"/></th>
                    <input style='width: 40%' type="text" id="txt-nameaz" class="inp-name" placeholder="Nombres" name="PrimerNombre"   onkeypress="return soloLetras(event)"/>
                    <p></p>
                    <input style='width: 40%; margin-left:5%;'  type="text" id="txt-lnamesegaz" class="inp-lname" placeholder="Apellidos" name="SegundoNombre" onkeypress="return soloLetras(event)" />
                </div> 
                <hr />
                    <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                        <thead >
                            <tr>
                                <th>Sesión No.</th>
                                <td><div class="div-cont-name"><input readonly="readonly"  type="text" id="txt-sesion" class="inp-name" placeholder="No" name="sesionnumero" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead>
                            <tr>
                                <th>Fecha:</th>
                                <td><div class="div-cont-lname"><input type="text" id="txt-fechaAc" class="inp-lname" placeholder="Fecha"required=""  name="FechaActual" readonly="readonly" /></div></td>
                            </tr>
                        </thead>
                    </table>
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                        <thead align="left">
                            <tr>
                                <th>Análisis de la demanda</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style='height: 175px'>
                                <td colspan="2" ROWSPAN="2" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-analisisDemanda" class="inp-lname" required="" placeholder="Análisis de la demanda" name="AnalisisDemanda" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        
                        
                        <thead align="left">
                            <tr>
                                <th>Objetivos durante la sesión</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style='height: 175px'>
                                <td colspan="2" ROWSPAN="2" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-objetivoSesion" class="inp-lname" required="" placeholder="Objetivos durante la sesión" name="ObjetivosSesion" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead align="left">
                            <tr>
                                <th>Descripción de estrategias y técnicas</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style='height: 175px'>
                                <td colspan="2" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-descripcionET" class="inp-lname" required="" placeholder="Descripción de estrategias y técnicas" name="DescripcionET" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead align="left">
                            <tr>
                                <th>Información relevante obtenida</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style='height: 175px'>
                                <td colspan="2" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Información relevante obtenida" name="informacionRO" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <tbody align="center">
                            <tr>
                                <td><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="submit" id="btn-action" class="btn-accept" value="Guardar"/> </div></td>
                                <td><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="button" id="btn-action" class="btn-accept" value="Cancelar" onclick="javascript:cancel();"/> </div></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>
        </form>
            <script>
                function cancel(){
                    window.location.href = "./MenuPsicologia.jsp";
                }
                
                window.addEventListener('load', function() {
                 var today = new Date();
                    
                 // get today's date in `MM/DD/YYYY` format
                 var now = today.toLocaleDateString('en-EC');
                  $("#txt-fechaAc").val(now);
                 });
            </script>
    </body>
    <script src="js/JQuery.js" type="text/javascript"></script> 
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/ConsultarPaciente.js" type="text/javascript"></script>
</html>
