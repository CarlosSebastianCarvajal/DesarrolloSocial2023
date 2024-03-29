<%-- 
    Document   : HistoriaClinica_Ginecologia
    Created on : 08-jun-2023, 15:31:32
    Author     : Miguel
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="BD.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
        <a href="../src/java/DAO/Buscador.java"></a>
        <link href="css/Ingresos_2.css" rel="stylesheet" type="text/css"/>
        <title>Historia Clínica</title>
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
        <header id="header" style=" background: #007653 !important; margin-top:-40px">
            
                <a class="logo" href="Principal.jsp" id="ulUserData"> 
            </a>
             <nav class="nav-tp"></nav>
            
        </header>     
        <div class="div-head-titl" style="margin-top:-18px"><h2></h2></div>


        <form class="form1" action="AddGineHistoriaClinica" method="GET" id="divv"  >
            <section class="sec-main">
                <div class="div-cont-main2">
                        <div class="div-cont-ced">
                            <input type="button" id="btn-actionb" class="inp-search" value="Buscar"/>
                            <input type="text" id="txt-cede" class="inp-ced" onkeypress='return validaNumericos(event)' placeholder="Cédula" name="Identificacion" maxlength="15"/>
                        </div>
                        <hr />
                        <div class="div-cont-ced">
                            <input type="button" id="btn-actionbusc" class="inp-search" value="Buscar"/></th>
                            <input style='width: 40%' type="text" id="txt-namea" class="inp-name" placeholder="Nombres" name="PrimerNombre"  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/>
                            <p></p>
                            <input  style='width: 40%; margin-left:5%;'  type="text" id="txt-lnamesega" class="inp-lname" placeholder="Apellidos" name="SegundoNombre"  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/>
                        </div>
                        <hr />
                    <table align="center" style='width: 98%; margin-left: 10px; margin-top: 30px'>
                       <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">1.- ANAMNESIS</th>
                            </tr>
                       </thead>
                        <thead>
                            <tr>
                                <th>Cédula</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Estado Civil</th>

                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-cedula" class="inp-name" placeholder="Cédula" name="hg_cedula" required=""  onkeypress="return soloLetras(event)" readonly="readonly"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-nombres" class="inp-lname" placeholder="Nombres" name="hg_nombres"required=""  onkeypress="return soloLetras(event)" readonly="readonly"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-apellidos" class="inp-name" placeholder="Apellidos" name="hg_apellidos"required=""  onkeypress="return soloLetras(event)" readonly="readonly"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-estadoc" class="inp-lname" placeholder="Estado Civil" name="hg_estado_civil"required=""  onkeypress="return soloLetras(event)" readonly="readonly"/></div></td>
                                <input hidden type="text" id="txt-id" class="inp-lname" placeholder="txt-id" name="txtid"/>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Fecha De Nacimiento</th>
                                <th>Edad</th>
                                <th>Teléfono</th>
                                <th>Domicilio</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="date" id="txt-fn" class="inp-edad"  minlength="1" maxlength="2" placeholder="Fecha de Nacimiento" name="edadP" value="" required="" readonly="readonly" /></div> </td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"  minlength="1" maxlength="2" placeholder="Edad" name="edadP" value="" required="" readonly="readonly" /></div> </td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-telefono" class="inp-edad"  minlength="1" maxlength="2" placeholder="Teléfono" name="edadP" value="" required="" readonly="readonly" /></div> </td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-domicilio" class="inp-edad"  minlength="1" maxlength="2" placeholder="Domicilio" name="edadP" value="" required="" readonly="readonly" /></div> </td>
                               </tr> 
                        </tbody>
                    </table>
                        <table align="center" style='width: 98%; margin-left: 10px; margin-top: 30px'>
                        <thead>
                            <tr>
                                
                                <th style='background: #007653; text-align: left' colspan="4">2.- SIGNOS VITALES</th>
                            </tr>
                       </thead>
                       </table>   
                       <label style='margin-left: 10px;' id="signos-res"></label>
                       <table align="center" style='width: 98%; margin-left: 10px; margin-top: 30px'> 
                       <thead >
                            <tr>                                
                                <th>Presión Arterial Sistólica</th>
                                <th>Presión Arterial Diastólica</th>
                                <th>Temperatura</th>
                                <th>Frecuencia Cardíaca</th>
                                
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-pa-sistolica" class="inp-name" placeholder="P/A Sistólica" name="presion_arterial_s" required=""  onkeypress="return validaNumericos(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-pa-diastolica" class="inp-name" placeholder="P/A Daistólica" name="presion_arterial_d" required=""  onkeypress="return validaNumericos(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-Temperatura" class="inp-name" placeholder="Temperatura (Ejem: 36.8)" name="temperatura" required=""  onkeypress="return validaNumericosDec(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-FrecuenciaC" class="inp-name" placeholder="Frecuencia Cardíaca" name="frecuencia_cardiaca" required=""  onkeypress="return validaNumericos(event)" onkeyup="mayus(this);"/></div></td>
                                <input hidden type="text" id="txt-idsv" class="inp-lname" placeholder="txt-idsv" name="txtidsv"/>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>            
                                <th>Saturación</th>
                                <th>Peso</th>
                                <th>Talla</th>
                                <th>IMC</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-saturacion" class="inp-name" placeholder="Saturación de oxígeno" name="saturacion" required=""  onkeypress="return validaNumericos(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-peso" class="inp-name" placeholder="Peso en Kg (Ejem: 59.7)" name="peso" required=""  onkeypress="return validaNumericosDec(event)" oninput="clacularIMC(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-talla" class="inp-name" placeholder="Talla en Cemtímetros" name="estatura" required=""  onkeypress="return validaNumericos(event)" oninput="clacularIMC(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-imc" class="inp-name" placeholder="IMC" name="imc" readonly="readonly"  /></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">3.- ANTECEDENTES PATOLOGICOS</th>
                            </tr>
                        </thead>
                        <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead>
                            <tr>                                
                                <th style="width: 300px;">Personales:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style='text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Personales" name="ap_personales" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Familiares:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Familiares" name="ap_familiares" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Quirúrgicos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Quirúrgicos" name="ap_quirurgicos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Alérgicos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Alérgicos" name="ap_alergicos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Hábitos Nocivos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Hábitos Nocivos" name="ap_habitos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        </table>
                        <table align="center" style='width: 98%; margin-left: 10px; margin-top: 30px'>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">4.- ANTECEDENTES GINECOLOGICOS Y OBSTETRICOS</th>
                            </tr>
                        </thead>
                       <thead >
                            <tr>                                
                                <th>Menarquia</th>
                                <th>Inicio Relaciones Sexuales</th>
                                <th>Parejas Sexuales</th>
                                <th>Ultimo PAP</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  maxlength="2" placeholder="Menarquia" name="ago_menarquia" value=""  onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  maxlength="2" placeholder="Inicio Relaciones Sexuales" name="ago_irs" value=""  onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad" required=""  maxlength="2" placeholder="Parejas Sexuales" name="ago_parejas" value="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-lname"><input type="date" id="txt-fechaNaci" class="inp-lname" placeholder="Ultimo PAP"  name="ago_ultimo_pap"/></div></td> 
                            </tr>
                        </tbody>
                        </table>
                        <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Métodos Anticonceptivos</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Métodos Anticonceptivos" name="ago_metodos_anti" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        </table>
                         <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th>FUM</th>
                                <th>FPP</th>
                                <th>Menopausia</th>
                                <th>Gestas</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-lname"><input type="date" id="txt-fechaNaci" class="inp-lname" placeholder="FUM"  name="ago_fum"/></div></td> 
                                <td><div class="div-cont-lname"><input type="date" id="txt-fechaNaci" class="inp-lname" placeholder="FPP"  name="ago_fpp"/></div></td> 
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad" maxlength="2" placeholder="Menopausia" name="ago_menopausia" value="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" required="" class="inp-edad"  maxlength="2" placeholder="Gestas" name="ago_gestas" value=""  onkeypress='return validaNumericos(event)'/></div> </td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>                                
                                <th>Partos</th>
                                <th>Abortos</th>
                                <th>Cesárea</th>
                                <th>Edad Gestacional</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  maxlength="2" placeholder="Partos" name="ago_partos" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"   maxlength="2" placeholder="Abortos" name="ago_abortos" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  maxlength="2" placeholder="Cesárea" name="ago_cesareas" value="" required="" onkeypress='return validaNumericos(event)' /></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"   maxlength="2" placeholder="Edad Gestacional" name="ago_edad_gestacional" value=""  onkeypress='return validaNumericos(event)'/></div> </td>
                            </tr>
                        </tbody>
                         </table>
                         <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Complicaciones</th>
                                <td><div class="div-cont-name"><input input style="width: 1000px;" style= 'text-align: center' type="text" id="txt-name" required="" class="inp-name" placeholder="Complicaciones" name="ago_complicaciones"  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        </table>
                        <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">5.- MOTIVO DE LA CONSULTA</th>
                            </tr>
                       </thead>
                         <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" placeholder="Motivo de la Consulta" name="motivo_consulta" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">6.- ENFERMEDAD ACTUAL</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname"  placeholder="Enfermedad Actual" name="enfermedad_acual" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">7.- DIAGNOSTICO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname"  placeholder="Diagnostico" name="diagnostico" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">8.- TRATAMIENTO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname"  placeholder="Tratamiento" name="tratamiento" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        </table>
                        
                        <hr />
                
                        <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px; margin-bottom: 30px'> 
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="col-sm-4 col-xs well">
                                            <a href="#info2" class="inf"><h3>PRESCRIPCIONES</h3></a>
                                        </div>
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <div id="info2" class="oculto">
                                            <section>
                                                <div>
                                                    <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                                                        <thead >
                                                            <tr>                          
                                                                <th>Medicamento</th>
                                                                <th>Indicación Médica</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <input hidden type="text" id="txt-tabla-datos-medicamentos" name="txt-tabla-datos-medicamentos" class="inp-lname"/>
                                                                <td><div class="div-cont-lname"><input type="text" onkeyup="mayus(this);" id="txt-medicamento" class="inp-name" placeholder="Medicamento" name="medicamento"/></div></td>
                                                                <td><div class="div-cont-name"><input type="text"onkeyup="mayus(this);" id="txt-med-indicacion" class="inp-name" placeholder="Indicación Médica" name="indicaciones"/></div></td>
                                                                <td><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="button" id="btn-action-receta" class="btn-accept" value="+"> 
                                                            </tr>
                                                        </tbody>                        
                                                    </table> 

                                                    <div style="width: 80%; height: auto; margin-left: auto; margin-right: auto" >
                                                        <div >
                                                            <table id="tablaReceta" style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                                                                <thead>
                                                                    <tr> 

                                                                        <td>Nª</td>
                                                                        <td>Medicamentos</td>
                                                                        <td>Indicaciones Médicas</td>
                                                                        <td>Acciones</td>
                                                                    </tr>
                                                                </thead>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </td>

                                </tr>

                            </tbody>
                        </table>
                        
                        <hr>
                        <table style='width: 95%; margin-left: 10px; '>
                           <thead>
                               <th></th>
                               <th></th>
                           </thead>
                           <tbody align="center" >
                           <td style="width: 50%; text-align: right;" >¿Enviará a realizarse examanes a la paciente?&nbsp &nbsp</td>
                            <td style="width: 50%; text-align: left;" aling="left"><input style= 'text-align: center; margin-top: 5px; align-content: left;' type="checkbox" id="checkcito-examen"  name="checkcito_examen" /></td>
                            </tbody>
                       </table>
                        <hr>
                    <table style='width: 95%; margin-left: 10px; '>
                        <tbody align="center">
                            <tr>
                                <td ><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="button" id="btn-action" class="btn-accept" value="Cancelar" onclick="javascript:cancel();"/> </div></td>
                                <td ><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="submit" id="btn-action" class="btn-accept" value="Guardar"/> </div></td>
                            </tr>
                        </tbody>
                    </table>
                     
                </div>
            </section>
        </form>
       <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="js/newjavascript.js" type="text/javascript"></script>
        
    </body>
    <footer></footer>
    <script src="js/JQuery.js" type="text/javascript"></script> 
    <script src="js/Gine-Historial-Funciones.js" type="text/javascript"></script>
    <script src="js/TF-AddReceta.js" type="text/javascript"></script>
    <script type="text/javascript">
        function cancel(){
            window.location.href = "./MenuGinecologia.jsp";
        }

        function validaNumericos(event) {
                if (event.charCode >= 48 && event.charCode <= 57) {
                    return true;
                }
                return false;
        }
        
        function validaNumericosDec(event) {
                if (event.charCode >= 48 && event.charCode <= 57 || event.charCode == 46) {
                    return true;
                }
                return false;
        }   
        
        function clacularIMC(e) {
            //e.value = e.value.toUpperCase();
            var imc = 0;
            var peso = Number(document.getElementById("txt-peso").value);
            var talla = Number(document.getElementById("txt-talla").value); 
            if(peso > 0 && talla > 0){
                imc = peso / Math.pow((talla * 0.01), 2);
                imc = Number(imc.toFixed(3));
                document.getElementById("txt-imc").value = imc;
            }else{
                document.getElementById("txt-imc").value = '';
            }
        }
    </script>
          
</html>

