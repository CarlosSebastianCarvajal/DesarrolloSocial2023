<%-- 
    Document   : Actualizar_HistoriaCli_Ginecologia
    Created on : 27-jun-2023, 19:12:11
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
        <header id="header" style=" background: #007653 !important; margin-top:-40px">
            
                <a class="logo" href="Principal.jsp" id="ulUserData"> 
            </a>
             <nav class="nav-tp"></nav>
            
        </header>     
        <div class="div-head-titl" style="margin-top:-18px"><h2></h2></div>


        <form class="form1" action="AddGineHistoriaClinica" method="GET" style="margin-top:140px">
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
                        
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">2.- SIGNOS VITALES</th>
                            </tr>
                       </thead>
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
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-presionArterialS" class="inp-name" placeholder="P/A Sistólica" name="presion_arterial_s" required=""  onkeypress="return validaNumericos(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-presionArterialD" class="inp-name" placeholder="P/A Daistólica" name="presion_arterial_d" required=""  onkeypress="return validaNumericos(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-Temperatura" class="inp-name" placeholder="Temperatura (Ejem: 36.8)" name="temperatura" required=""  onkeypress="return validaNumericosDec(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-FrecuenciaC" class="inp-name" placeholder="Frecuencia Cardíaca" name="frecuencia_cardiaca" required=""  onkeypress="return validaNumericos(event)" onkeyup="mayus(this);"/></div></td>
                                
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
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-peso" class="inp-name" placeholder="Peso en Kg (Ejem: 59.7)" name="peso" required=""  onkeypress="return validaNumericosDec(event)" onchange="clacularIMC(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-talla" class="inp-name" placeholder="Talla en Cemtímetros" name="estatura" required=""  onkeypress="return validaNumericos(event)" onchange="clacularIMC(this);"/></div></td>
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
                                <td><div class="div-cont-name"><input style="width: 1000px;" style='text-align: left' type="text" id="txt-personales" class="inp-name" placeholder="Personales" name="ap_personales" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Familiares:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-familiares" class="inp-name" placeholder="Familiares" name="ap_familiares" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Quirúrgicos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-quirurgicos" class="inp-name" placeholder="Quirúrgicos" name="ap_quirurgicos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Alérgicos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-alergicos" class="inp-name" placeholder="Alérgicos" name="ap_alergicos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Hábitos Nocivos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-habitos" class="inp-name" placeholder="Hábitos Nocivos" name="ap_habitos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-Menarquia" class="inp-edad"  minlength="1" maxlength="2" placeholder="Menarquia" name="ago_menarquia" value=""  onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-IRS" class="inp-edad"  minlength="1" maxlength="2" placeholder="Inicio Relaciones Sexuales" name="ago_irs" value=""  onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-Parejas" class="inp-edad"  minlength="1" maxlength="2" placeholder="Parejas Sexuales" name="ago_parejas" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-lname"><input type="date" id="txt-UltimoPAP" class="inp-lname" placeholder="Ultimo PAP"required=""  name="ago_ultimo_pap"/></div></td> 
                            </tr>
                        </tbody>
                        </table>
                        <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Métodos Anticonceptivos</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: center' type="text" id="txt-MetodosAnt" class="inp-name" placeholder="Métodos Anticonceptivos" name="ago_metodos_anti" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td><div class="div-cont-lname"><input type="date" id="txt-FUM" class="inp-lname" placeholder="FUM"required=""  name="ago_fum"/></div></td> 
                                <td><div class="div-cont-lname"><input type="date" id="txt-FPP" class="inp-lname" placeholder="FPP"required=""  name="ago_fpp"/></div></td> 
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-Menopausia" class="inp-edad"  minlength="1" maxlength="2" placeholder="Menopausia" name="ago_menopausia" value="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-Gestas" class="inp-edad"  minlength="1" maxlength="2" placeholder="Gestas" name="ago_gestas" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
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
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-Partos" class="inp-edad"  minlength="1" maxlength="2" placeholder="Partos" name="ago_partos" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-Abortos" class="inp-edad"  minlength="1" maxlength="2" placeholder="Abortos" name="ago_abortos" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-Cesarea" class="inp-edad"  minlength="1" maxlength="2" placeholder="Cesárea" name="ago_cesareas" value="" required="" onkeypress='return validaNumericos(event)' /></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-EdadGes" class="inp-edad"  minlength="1" maxlength="2" placeholder="Edad Gestacional" name="ago_edad_gestacional" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                            </tr>
                        </tbody>
                         </table>
                         <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Complicaciones</th>
                                <td><div class="div-cont-name"><input input style="width: 1000px;" style= 'text-align: center' type="text" id="txt-Complicaciones" class="inp-name" placeholder="Complicaciones" name="ago_complicaciones" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-MotivoCon" class="inp-lname" required="" placeholder="Motivo de la Consulta" name="motivo_consulta" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">6.- ENFERMEDAD ACTUAL</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-EnfermedadAc" class="inp-lname" required="" placeholder="Enfermedad Actual" name="enfermedad_acual" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">7.- DIAGNOSTICO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-Diagnostico" class="inp-lname" required="" placeholder="Diagnostico" name="diagnostico" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">8.- TRATAMIENTO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-Tratamiento" class="inp-lname" required="" placeholder="Tratamiento" name="tratamiento" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
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
    </body>
    <script src="js/JQuery.js" type="text/javascript"></script> 
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/BuscarHistoriaClinica_Gine.js" type="text/javascript"></script>
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

