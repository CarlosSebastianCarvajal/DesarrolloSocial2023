<%-- 
    Document   : Histopatologico
    Created on : 09-jun-2023, 4:22:25
    Author     : Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
        <a href="../src/java/DAO/Buscador.java"></a>
        <link href="css/Ingresos_2.css" rel="stylesheet" type="text/css"/>
        <title>Ficha Psicológica</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important; margin-top:-40px">
            
                <a class="logo" href="Principal.jsp" id="ulUserData"> 
            </a>
             <nav class="nav-tp"></nav>
            
        </header>     
        <div class="div-head-titli" style="margin-top:-18px"><h2></h2></div>


        <form class="form1" action="AddFichaPsicologica" method="GET" style="margin-top:-20px">
            <section class="sec-main">
                <div class="div-cont-main3">
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
                    <table align="center" style='width: 98%; margin-left: 10px; margin-top: 30px'>
                        <thead>
                            <tr>
                                <th>Primer Nombre</th>
                                <th>Segundo Nombre</th>
                                <th>Primer Apellido</th>
                                <th>Segundo Apellido</th>

                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Primer Nombre" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Nombre" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Primer Apellido" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">1 ESTUDIO SOLICITADO</th>
                            </tr>
                       </thead>
                       <thead >
                            <tr>
                                <th>Estudio Solicitado</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-sel-dep-to-transf"  ><select class="sel-dep-to-transf"required=""  name="estadoCivil">
                                            <option>Seleccione el estudio solicitado</option>
                                            <option>Histopatologia</option>
                                            <option>Citologia</option>
                                            <option>Otro</option>
                                        </select></div></td>
                            </tr> 
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">2 RESUMEN CLINICO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Resumen Clínico" name="ResumenClinico" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">3 DIAGNOSTICO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Diagnostico" name="Diagnostico" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">4 MUESTRA O PIEZA</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Muestra o Pieza" name="MuestraPieza" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">5 TRATAMIENTO QUE RECIBE</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Tratamiento que Recibe" name="TratamientoRecibe" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">6 DATOS BASICOS PARA LA CITOLOGIA CERVICAL</th>
                            </tr>
                       </thead>
                       <thead>
                            <tr>
                                <th style='background: #004653; text-align: left' colspan="4">MATERIAL</th>
                            </tr>
                       </thead>
                       <thead>
                            <tr>
                                <th>Endocervix</th>
                                <th>Pared Vaginal</th>
                                <th>Union Escamo Columnar</th>
                                <th>Muñon Cervical</th>

                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Endocervix" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Pared Vaginal" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Union Escamo Columnar" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Muñon Cervical" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th>Otro</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Otro" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #004653; text-align: left' colspan="4">ANTICONCEPCION</th>
                            </tr>
                        </thead>
                        <thead>
                            <tr>
                                <th>Oral o Inyectable</th>
                                <th>DIU</th>
                                <th>Ligadura</th>
                                <th>Otro</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Oral o Inyectable" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="DIU" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Ligadura" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Otro" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #004653; text-align: left' colspan="4">EDADES DE</th>
                            </tr>
                        </thead>
                        <thead>
                            <tr>
                                <th>Terapia Hormonal</th>
                                <th>Menarquia</th>
                                <th>Menopausia</th>
                                <th>Inicio de Relaciones Sexuales</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Terapia Hormonal" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Menarquia" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Menopausia" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Inicio de Relaciones Sexuales" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #004653; text-align: left' colspan="4">PARIDAD</th>
                            </tr>
                        </thead>
                        <thead>
                            <tr>
                                <th>Gestaciones</th>
                                <th>Partos</th>
                                <th>Abortos</th>
                                <th>Cesareas</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Gestaciones" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Partos" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Abortos" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Cesareas" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #004653; text-align: left' colspan="4">FECHAS</th>
                            </tr>
                        </thead>
                        <thead>
                            <tr>
                                <th>Ultima Menstruación</th>
                                <th>Ultimo Parto</th>
                                <th>Ultima Citologia</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Ultima Menstruación" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Ultimo Parto" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Ultima Citologia" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">DATOS DEL PROFESIONAL</th>
                            </tr>
                       </thead>
                        <thead>
                            <tr>
                                <th>Fecha</th>
                                <th>Hora</th>
                                <th colspan="2">Usuario</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-fechaA" class="inp-name" placeholder="Fecha" name="fecha" required="" readonly="readonly" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="reloj" class="inp-lname" placeholder="Hora" name="hora"required="" readonly="readonly" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td align="left" colspan="2"><div class="div-cont-name"><input style= 'text-align: center; width: 150%' type="text" id="txt-Usuario" class="inp-name" placeholder="Nombres y Apellidos" name="NombresApellidos"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"></div></td>
                            </tr>
                        </tbody>
                         <tbody align="center">
                            <tr>
                                <td colspan="2"><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="submit" id="btn-action" class="btn-accept" value="Guardar"/> </div></td>
                                <td colspan="2"><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="button" id="btn-action" class="btn-accept" value="Cancelar" onclick="javascript:cancel();"/> </div></td>
                            </tr>
                        </tbody>
                    </table> 
                </div>
            </section>
        </form>
        <script>
                function cancel(){
                    window.location.href = "./MenuGinecologia.jsp";
                }
                function muestraReloj() {
                                    var fechaHora = new Date();
                                    var horas = fechaHora.getHours();
                                    var minutos = fechaHora.getMinutes();
                                    var segundos = fechaHora.getSeconds();

                                    if(horas < 10) { horas = '0' + horas; }
                                    if(minutos < 10) { minutos = '0' + minutos; }
                                    if(segundos < 10) { segundos = '0' + segundos; }
                                    $("#reloj").val(horas+':'+minutos+':'+segundos);
                                  }

                                  window.onload = function() {
                                    setInterval(muestraReloj, 1000);
                                  }
                                  
                                 
                                  
                                  window.addEventListener('load', function() {
                                    var today = new Date();
                                    var now = today.toLocaleDateString('en-EC');
                                     $("#txt-fechaA").val(now);
                                    });
            </script>
    <script src="js/JQuery.js" type="text/javascript"></script>  
</html>
