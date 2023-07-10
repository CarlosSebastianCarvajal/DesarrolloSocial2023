<%-- 
    Document   : HistoriaClinica_Ginecologia_Emb
    Created on : 22-jun-2023, 23:51:32
    Author     : Sebastian Carvajal
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
        <title>Historia Clínica Embarazadas</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important; margin-top:-40px">
            
                <a class="logo" href="Principal.jsp" id="ulUserData"> 
            </a>
             <nav class="nav-tp"></nav>
            
        </header>     
        <div class="div-head-titl" style="margin-top:-18px"><h2></h2></div>


        <form class="form1" action="AddGineHistoriaClinicaEmb" method="GET" style="margin-top:2850px">
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
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-cedula" class="inp-name" placeholder="Cédula" name="hg_cedula" required=""  onkeypress="return soloLetras(event)"  readonly="readonly"/></div></td>
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
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-pa-sistolica" class="inp-name" placeholder="P/A Sistólica" name="presion_arterial_s" required="" maxlength="3" onkeypress="return validaNumericos(event)" oninput="pasarPresion(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-pa-diastolica" class="inp-name" placeholder="P/A Daistólica" name="presion_arterial_d" required="" maxlength="3"  onkeypress="return validaNumericos(event)" /></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-temperatura" class="inp-name" placeholder="Temperatura (Ejem: 36.8)" name="temperatura" required="" maxlength="6" onkeypress="return validaNumericosDec(event)"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-FC" class="inp-name" placeholder="Frecuencia Cardíaca" name="frecuencia_cardiaca" required="" maxlength="3" onkeypress="return validaNumericos(event)" /></div></td>
                                
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
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-saturacion" class="inp-name" placeholder="Saturación de oxígeno" name="saturacion" required="" maxlength="3" onkeypress="return validaNumericos(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-peso" class="inp-name" placeholder="Peso en Kg (Ejem: 59.7)" name="peso" required=""  maxlength="6" onkeypress="return validaNumericosDec(event)" oninput="clacularIMC(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-talla" class="inp-name" placeholder="Talla en Cemtímetros" name="estatura" required="" maxlength="3" onkeypress="return validaNumericos(event)" oninput="clacularIMC(this);"/></div></td>
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
                                <td><div class="div-cont-name"><input style="width: 1000px;" style='text-align: left' type="text" id="txt-ap-personales" class="inp-name" placeholder="Personales" name="ap_personales" required="" maxlength="1000" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Familiares:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-ap-familiares" class="inp-name" placeholder="Familiares" name="ap_familiares" required="" maxlength="1000" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Quirúrgicos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-ap-quirurgicos" class="inp-name" placeholder="Quirúrgicos" name="ap_quirurgicos" required="" maxlength="1000" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Alérgicos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-ap-alergicos" class="inp-name" placeholder="Alérgicos" name="ap_alergicos" required="" maxlength="1000" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Hábitos Nocivos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-ap-habitos" class="inp-name" placeholder="Hábitos Nocivos" name="ap_habitos" required="" maxlength="1000" onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt--ago-menarquia" class="inp-edad" maxlength="3" placeholder="Menarquia" name="ago_menarquia" value=""  onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" required=""  id="txt-ago-irs" class="inp-edad" maxlength="2" placeholder="Inicio Relaciones Sexuales" name="ago_irs" value=""  onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" required=""  id="txt-ago-parejas" class="inp-edad"  maxlength="2" placeholder="Parejas Sexuales" name="ago_parejas" value="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-lname"><input type="date" id="txt-ago-ultimo-pap" class="inp-lname" placeholder="Ultimo PAP" name="ago_ultimo_pap"/></div></td> 
                            </tr>
                        </tbody>
                        </table>
                        <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Métodos Anticonceptivos</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: center' type="text" id="txt-metodos-anti" class="inp-name" placeholder="Métodos Anticonceptivos" name="ago_metodos_anti" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td><div class="div-cont-lname"><input type="date" id="txt-FUM" class="inp-lname" placeholder="FUM"  name="ago_fum" oninput="pasarFUM(this);" /></div></td> 
                                <td><div class="div-cont-lname"><input type="date" id="txt-FPP" class="inp-lname" placeholder="FPP"   name="ago_fpp" required="" oninput="pasarFPP(this);"/></div></td> 
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ago-menopausia" class="inp-edad"  maxlength="2" placeholder="Menopausia" name="ago_menopausia" value="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ago-gestas" class="inp-edad"  minlength="1" maxlength="2" placeholder="Gestas" name="ago_gestas" value="" onkeypress='return validaNumericos(event)'/></div> </td>
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
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ago-partos" class="inp-edad"  minlength="1" maxlength="2" placeholder="Partos" name="ago_partos" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ago-abortos" class="inp-edad"  minlength="1" maxlength="2" placeholder="Abortos" name="ago_abortos" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ago-cesareas" class="inp-edad"  minlength="1" maxlength="2" placeholder="Cesárea" name="ago_cesareas" value="" required="" onkeypress='return validaNumericos(event)' /></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ago-edad-ges" class="inp-edad"  maxlength="2" placeholder="Edad Gestacional" name="ago_edad_gestacional" value="" onkeypress='return validaNumericos(event)'/></div> </td>
                            </tr>
                        </tbody>
                         </table>
                         <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Complicaciones</th>
                                <td><div class="div-cont-name"><input input style="width: 1000px;" style= 'text-align: center' type="text" maxlength="1000" id="txt-name" class="inp-name" placeholder="Complicaciones" name="ago_complicaciones" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" maxlength="1000" id="txt-motivo-consulta" class="inp-lname"  placeholder="Motivo de la Consulta" name="motivo_consulta" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">6.- ENFERMEDAD ACTUAL</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" maxlength="1000" id="txt-enfermedad-acttual" class="inp-lname" placeholder="Enfermedad Actual" name="enfermedad_acual" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">7.- DIAGNOSTICO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" maxlength="1000" id="txt-diagnostico" class="inp-lname"  placeholder="Diagnostico" name="diagnostico" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">8.- TRATAMIENTO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" maxlength="1000" id="txt-tratamiento" class="inp-lname"  placeholder="Tratamiento" name="tratamiento" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        
                    <!--   SECCION DE HISTORIA CLINICA PERINATAL -->
                    
                    </table> 
                        <hr /> <h1 style="text-align:  center;">HISTORIA CLÍNICA PERINATAL</h1> <hr />
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left' colspan="5">INFORMACIÓN PERSONAL</th>
                                </tr>
                            </thead>
                            <thead>
                            <tr>
                                <th>Cédula</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Domicilio</th>
                                <th>Localidad</th>

                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><input style= 'text-align: center; width: 75%;' type="text" id="txt-cedula1" class="inp-name" placeholder="Cédula" name="hg_cedula1" required="" readonly="readonly"/></td>
                                <td><input style= 'text-align: center; width: 75%;' type="text" id="txt-nombres1" class="inp-lname" placeholder="Nombres" name="hg_nombres1"required=""  onkeypress="return soloLetras(event)" readonly="readonly"/></td>
                                <td><input style= 'text-align: center; width: 75%;' type="text" id="txt-apellidos1" class="inp-name" placeholder="Apellidos" name="hg_apellidos1"required=""  onkeypress="return soloLetras(event)" readonly="readonly"/></td>
                                <td><input style= 'text-align: center; width: 75%;' type="text" id="txt-domicilio1" class="inp-edad" placeholder="Domicilio" name=".." value=""  readonly="readonly" /></td>
                                <td><input style= 'text-align: center; width: 75%;' type="text" id="txt-localidad1" class="inp-edad" placeholder="Localidad" name=".." value="" readonly="readonly" /></td>
                            </tr>
                        </tbody>
                         <thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead>
                        <thead >
                            <tr>
                                <th>Teléfono</th>
                                <th>Fecha De Nacimiento</th>
                                <th>Edad</th>
                                <th>< de 15 &nbsp&nbsp o &nbsp&nbsp > de 35</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><input style= 'text-align: center; width: 75%;' type="text" id="txt-telefono1" class="inp-edad"  minlength="1" maxlength="2" placeholder="Teléfono" name="edadP" value=""  readonly="readonly" /></td>
                                <td><input style= 'text-align: center; width: 75%;' type="date" id="txt-fn1" class="inp-edad"  minlength="1" maxlength="2" placeholder="Fecha de Nacimiento" name="edadP" value="" required="" readonly="readonly" /></td>
                                <td><input style= 'text-align: center; width: 75%;' type="text" id="txt-edad1" class="inp-edad"  minlength="1" maxlength="2" placeholder="Edad" name="edadP" value=""  readonly="readonly" /></td>
                                <td><input style= 'text-align: center; width: 75%;' type="text" id="txt-edad-rango1" class="inp-edad"  minlength="1" maxlength="2" placeholder="." name="edadP" value=""  readonly="readonly" /></td>
                                
                                
                               </tr> 
                        </tbody>
                        </table>
                        <table  style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <th>Etnia</th>
                                <th>Alfa/Beta</th>
                                <th>Estudios</th>
                                <th>Años del mayor nivel</th>
                            </thead>
                            <tbody  align="center">
                                <td style= 'width: 25%;'><input style= 'text-align: center; width: 80%;' class="inp-lname" type="text" id="txt-etnia1" placeholder="Etnia" name="etnia" value="" readonly="readonly" /></td>
                                <td style= 'width: 25%;'>
                                    <div style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-per-alfa-beta" name="per_alfa_beta" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-per-alfa-beta" name="per_alfa_beta" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 25%;'><input style= 'text-align: center; width: 80%;' class="inp-lname" type="text" id="txt-estudios1"  placeholder="Estudios" name="fechaNac" value="" readonly="readonly" /></td>
                                <td style= 'width: 25%;'><input style= 'text-align: center; width: 80%;' class="inp-lname" type="text" id="txt-años-nivel1"  placeholder="Años" name="fechaNac" value="" readonly="readonly" /></td>
                            </tbody>
                            <thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead>
                            <thead >
                                <th>Estado Civil</th>
                                <th>¿Vive Sola?</th>
                                <th>Lugar Control Prenatal</th>
                                <th>Lugar del parto/aborto</th>
                            </thead>
                            <tbody  align="center">
                                <td><input  style= 'text-align: center; width: 80%;'type="text" id="txt-estadoc1" class="inp-lname" placeholder="Estado Civil" name="per_estado_civil" readonly="readonly"/></td>
                                <td>
                                    <div style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-per-vive-sola" name="per_vive_sola" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-per-vive-sola" name="per_vive_sola" value="No" />
                                    </div>
                                </td>
                                <td><input style= 'text-align: center; width: 80%;' class="inp-lname" type="text" id="txt-lcp"  placeholder="." name="per_lugarPrenatal" value="Desarrollo Social" readonly="readonly"/></td>
                                <td><input style= 'text-align: center; width: 80%;' class="inp-lname" type="text" id="txt-lcpa"  placeholder="." name="per_lugarParto" value="Desconocido" readonly="readonly"/></td>
                            </tbody>
                        </table>
                        <br/>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left' colspan="1">ANTECEDENTES</th>
                                    <th style='background: #afadac; text-align: left' colspan="7">Familiares</th>
                                </tr>
                            </thead>
                            
                            <thead>
                                <th>TBC</th>
                                <th>Diabetes</th>
                                <th>Hipertensión</th>
                                <th>Preclampsia</th>
                                <th>Eclampsia</th>
                                <th>Otra Condición</th>
                                <th>Describir Otra Condición médica grave</th>
                            </thead>
                            <tbody  align="center">
                                <td style= 'width: 11%;'>
                                    <div id="af_tbc" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda;width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-tbc" name="af_tbc" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-tbc" name="af_tbc" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 15%;'> 
                                    <div id="af_diabetes" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">NO </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-diabetes" name="af_diabetes" value="No" />
                                        <span style="margin-top: 2px">&nbsp &nbsp I </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-diabetes" name="af_diabetes" value="I" />
                                        <span style="margin-top: 2px">&nbsp &nbsp II </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-diabetes" name="af_diabetes" value="II" />
                                        <span style="margin-top: 2px">&nbsp &nbsp G </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-diabetes" name="af_diabetes" value="G" />
                                    </div>
                                </td>
                                <td style= 'width: 11%;'>
                                    <div id="af_hipertension" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-hipertension" name="af_hipertension" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-hipertension" name="af_hipertension" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 11%;'>
                                    <div id="af_preeclampsia" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-preeclampsia" name="af_preeclampsia" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-preeclampsia" name="af_preeclampsia" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 11%;'>
                                    <div id="af_eclampsia" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-eclampsia" name="af_eclampsia" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-eclampsia" name="af_eclampsia" value="No" />
                                    </div>
                                </td>
                                
                                <td style= 'width: 11%;'>
                                    <div id="af_ocmg" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda;width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-ocmg" name="af_ocmg" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-af-ocmg" name="af_ocmg" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 30%;'><input style="width: 80%;"  type="text" id="af_ocmg_desc" class="inp-name" placeholder="Describir otra condición médica grave" name="af_ocmg_desc" maxlength="200" onkeypress="return soloLetras(event)" /></td>
                            </tbody
                            <thead></thead>
                        </table>
                        <br/>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left' colspan="1">ANTECEDENTES</th>
                                    <th style='background: #afadac; text-align: left' colspan="7">Personales</th>
                                </tr>
                            </thead>
                            
                            <thead>
                                <th>TBC</th>
                                <th>Diabetes</th>
                                <th>Hipertensión</th>
                                <th>Preclampsia</th>
                                <th>Eclampsia</th>
                                <th>Otra Condición</th>
                                <th>Describir Otra Condición médica grave</th>
                            </thead>
                            <tbody  align="center">
                                <td id="ap_tbc" style= 'width: 11%;'>
                                    <div style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda;width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-tbc" name="ap_tbc" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-tbc" name="ap_tbc" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 15%;'> 
                                    <div id="ap_diabetes" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">NO </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-diabetes" name="ap_diabetes" value="No" />
                                        <span style="margin-top: 2px">&nbsp &nbsp I </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-diabetes" name="ap_diabetes" value="I" />
                                        <span style="margin-top: 2px">&nbsp &nbsp II </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-diabetes" name="ap_diabetes" value="II" />
                                        <span style="margin-top: 2px">&nbsp &nbsp G </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-diabetes" name="ap_diabetes" value="G" />
                                    </div>
                                </td>
                                <td style= 'width: 11%;'>
                                    <div id="ap_hipertension" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-hipertension" name="ap_hipertension" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-hipertension" name="ap_hipertension" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 11%;'>
                                    <div id="ap_preeclampsia" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-preeclampsia" name="ap_preeclampsia" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-preeclampsia" name="ap_preeclampsia" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 11%;'>
                                    <div id="ap_eclampsia" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-eclampsia" name="ap_eclampsia" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-eclampsia" name="ap_eclampsia" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 11%;'>
                                    <div id="ap_ocmg"  style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda;width: 90%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-ocmg" name="ap_ocmg" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-ocmg" name="ap_ocmg" value="No" />
                                    </div>
                                </td>
                                <td style= 'width: 30%;'><input style="width: 80%;"  type="text" id="ap_ocmg_desc" class="inp-name" placeholder="Describir otra condición médica grave" name="ap_ocmg_desc" maxlength="200" onkeypress="return soloLetras(event)" /></td>
                            </tbody
                            
                            <thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead><thead></thead>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <th>Cirugía genito-urinaria</th>
                                <th>Infertilidad</th>
                                <th>Cardiopat.</th>
                                <th>Nefropatía</th>
                                <th>Violencia</th>
                            </thead>
                            <tbody  align="center">
                                <td style="width: 20%;">
                                    <div id="ap_cirugia_gu" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda;width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-cirugia-gu" name="ap_cirugia_gu" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-cirugia-gu" name="ap_cirugia_gu" value="No" />
                                    </div>
                                </td>
                                <td style="width: 20%;">
                                    <div id="ap_infertilidad" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-infertilidad" name="ap_infertilidad" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-infertilidad" name="ap_infertilidad" value="No" />
                                    </div>
                                </td>
                                <td style="width: 20%;">
                                    <div id="ap_cardiopat" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-cardiopat" name="ap_cardiopat" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-cardiopat" name="ap_cardiopat" value="No" />
                                    </div>
                                </td>
                                <td style="width: 20%;">
                                    <div id="ap_nefropatia" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-nefropatia" name="ap_nefropatia" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-nefropatia" name="ap_nefropatia" value="No" />
                                    </div>
                                </td>
                                <td style="width: 20%;">
                                    <div id="ap_violencia" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-violencia" name="ap_violencia" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ap-violencia" name="ap_violencia" value="No" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        <br/>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left' colspan="1">ANTECEDENTES</th>
                                    <th style='background: #afadac; text-align: left' colspan="4">Obstetricos</th>
                                </tr>
                            </thead>
                            <thead>
                                <th>Último previo</th>
                                <th>Último previo</th>
                                <th>Ant. de Gemelares</th>
                                <th>GESTAS PREVIAS</th>
                                <th>emb. ectópico</th>
                            </thead>
                            <tbody  align="center">
                                <td>
                                    <div id="ao_up_nc" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda;width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">N/C: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-up-nc" name="ao_up_nc" value="Nc" />
                                        <span style="margin-top: 2px">&nbsp >2500g: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-up-nc" name="ao_up_nc" value=">2500g" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ao_up_normal" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">Normal: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-up-normal" name="ao_up_normal" value="Normal" />
                                        <span style="margin-top: 2px">&nbsp 4000g: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-up-normal" name="ao_up_normal" value="4000g" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ao_ant_gem" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-ant-gem" name="ao_ant_gem" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-ant-gem" name="ao_ant_gem" value="No" />
                                    </div>
                                </td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;"  type="number" id="ao_gestas_previas"  placeholder="." name="ao_gestas_previas" value='0' maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ao_emb_ectopico"  placeholder="." name="ao_emb_ectopico" value='0' maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                            </tbody>
                            
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            
                            <thead>
                                <th>ABORTOS</th>
                                <th>¿3 abortos consecutivos?</th>
                                <th>PARTOS</th>
                                <th>Partos Vaginales</th>
                                <th>Cesareas</th>
                                <th>Nacidos Vivos</th>
                                <th>Nacidos Muertos</th>
                            </thead>
                            <tbody  align="center">
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;"  type="number" id="ao_abortos"  placeholder="." name="ao_abortos" value='0' maxlength="2" onkeypress="return validaNumericos(event)" /></td>
                                <td>
                                    <div id="ao_abortos_cons" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-abortos-cons" name="ao_abortos_cons" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-abortos-cons" name="ao_abortos_cons" value="No" />
                                    </div>
                                </td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ao_partos"  placeholder="." name="ao_partos" value='0' maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;"  type="number" id="ao_partos_vag"  placeholder="." name="ao_partos_vag" value='0' maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ao_partos_ces"  placeholder="." name="ao_partos_ces" value='0'  maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;"  type="number" id="ao_nac_vivos"  placeholder="." name="ao_nac_vivos" value='0'  maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ao_nac_muertos"  placeholder="." name="ao_nac_muertos" value='0'  maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                            </tbody>
                            
                        </table>
                        
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <th>Cuantos viven actualmente?</th>
                                <th>muertos 1ra sem de haber nacido</th>
                                <th>muertos despues 1ra sem de haber nacido</th>
                            </thead>
                            <tbody  align="center">
                                
                                <td style="width: 33.33%"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;"  type="number" id="ao_viven"  placeholder="." name="ao_viven" value='0'  maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                                <td style="width: 33.33%"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ao_nac_muer_ant"  placeholder="." name="ao_nac_muer_ant" value='0'  maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                                <td style="width: 33.33%"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ao_nac_muer_des"  placeholder="." name="ao_nac_muer_des" value='0'  maxlength="2" onkeypress="return validaNumericos(event)"/></td>
                            </tbody>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <hr style='margin-left: 25px; margin-right: 25px;'/>
                            <thead>
                                <th>Fin embarazo anterior</th>
                                <th>Embarazo Planeado</th>
                                <th>Fracaso Metodo Anticonceptivo</th>
                            </thead>
                            <tbody  align="center">
                                
                                <td><div class="div-cont-lname"><input type="date" id="ao_fin_emb_ant" class="inp-lname" name="ao_fin_emb_ant"/></div></td> 
                                <td>
                                    <div id="ao_emb_planeado" style="margin-top: -5px; border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-emb-planeado" name="ao_emb_planeado" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-emb-planeado" name="ao_emb_planeado" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ao_fma" style="margin-top: -5px; border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">no usaba: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-fma" name="ao_fma" value="No usaba" />
                                        <span style="margin-top: 2px">&nbsp barrera: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-fma" name="ao_fma" value="Barrera" />
                                        <span style="margin-top: 2px">&nbsp DIU: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-fma" name="ao_fma" value="DIU" />
                                        <span style="margin-top: 2px">&nbsp hormonal: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-fma" name="ao_fma" value="Hormonal" />
                                        <span style="margin-top: 2px">&nbsp emergencia: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-fma" name="ao_fma" value="Emergencia" />
                                        <span style="margin-top: 2px">&nbsp natural: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ao-fma" name="ao_fma" value="Natural" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left' colspan="1">GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="4">Datos</th>
                                </tr>
                            </thead>
                            <thead>
                                <th>Peso Anterior</th>
                                <th>Talla</th>
                                <th>Fum</th>
                                <th>FPP</th>
                            </thead>
                            <tbody align="center">
                            <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-ga-peso" class="inp-name" placeholder="Peso en Kg (Ejem: 59.7)" name="ga_peso"  onkeypress="return validaNumericosDec(event)" readonly="true"></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-ga-talla" class="inp-name" placeholder="Talla en Cemtímetros" name="ga_talla" onkeypress="return validaNumericos(event)" readonly="true"/></div></td>
                                <td><div class="div-cont-lname"><input type="date" id="txt-ga-fum" class="inp-name" name="ga_fum"/></div></td> 
                                <td><div class="div-cont-lname"><input type="date" id="txt-ga-fpp" class="inp-name" name="ga_fpp"/></div></td> 
                            </tbody>
                            
                            <thead>
                                <th>EG. CONFIABLE por FUM</th>
                                <th>EG. CONFIABLE por Eco<20s</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_egconf_fum" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-egconf-fum" name="ga_egconf_fum" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-egconf-fum" name="ga_egconf_fum" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_egconf_eco" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-egconf-eco"  name="ga_egconf_eco" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-egconf-eco" name="ga_egconf_eco" value="No" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left' colspan="1">GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="5">Alcohol, drogas, voilencia, etc..</th>
                                </tr>
                            </thead>
                            <thead>
                                <th></th>
                                <th>FUMA ACT.</th>
                                <th>FUMA PAS.</th>
                                <th>DROGAS</th>
                                <th>ALCOHOL</th>
                                <th>VIOLENCIA</th>
                            </thead>
                            <tbody align="center">
                                <td>1er trim.</tD>
                                <td>
                                    <div id="ga_fuma_act_uno" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-act-uno" name="ga_fuma_act_uno" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-act-uno" name="ga_fuma_act_uno" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_fuma_pas_uno" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-pas-uno" name="ga_fuma_pas_uno" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-pas-uno" name="ga_fuma_pas_uno" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_drogas_uno" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-drogas-uno"  name="ga_drogas_uno" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-drogas-uno" name="ga_drogas_uno" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_alcohol_uno" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-alcohol-uno" name="ga_alcohol_uno" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-alcohol-uno" name="ga_alcohol_uno" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_violencia_uno" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-violencia-uno" name="ga_violencia_uno" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-violencia-uno" name="ga_violencia_uno" value="No" />
                                    </div>
                                </td>
                            </tbody>
                            <tbody align="center">
                                <td>2do trim.</tD>
                                <td>
                                    <div id="ga_fuma_act_dos" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-act-dos" name="ga_fuma_act_dos" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-act-dos" name="ga_fuma_act_dos" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_fuma_pas_dos" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-pas-dos" name="ga_fuma_pas_dos" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-pas-dos" name="ga_fuma_pas_dos" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_drogas_dos" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-drogas-dos" name="ga_drogas_dos" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-drogas-dos" name="ga_drogas_dos" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_alcohol_dos" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-alcohol-dos" name="ga_alcohol_dos" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-alcohol-dos" name="ga_alcohol_dos" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_violencia_dos" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-violencia-dos" name="ga_violencia_dos" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-violencia-dos" name="ga_violencia_dos" value="No" />
                                    </div>
                                </td>
                            </tbody>
                            <tbody align="center">
                                <td>3er trim.</tD>
                                <td>
                                    <div id="ga_fuma_act_tres" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-act-tres" name="ga_fuma_act_tres" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-act-tres" name="ga_fuma_act_tres" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_fuma_pas_tres" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-pas-tres" name="ga_fuma_pas_tres" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fuma-pas-tres" name="ga_fuma_pas_tres" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_drogas_tres" style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-drogas-tres" name="ga_drogas_tres" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-drogas-tres" name="ga_drogas_tres" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_alcohol_tres" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-alcohol-tres" name="ga_alcohol_tres" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-alcohol-tres" name="ga_alcohol_tres" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_violencia_tres" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-violencia-tres" name="ga_violencia_tres" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-violencia-tres" name="ga_violencia_tres" value="No" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left' colspan="1">GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="5">Vacunas</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>ANTITETANICA vigente</th>
                                <th>Antitetanica - Mes de gestación de 1ra Dosis</th>
                                <th>Antitetanica - Mes de gestación de 2da Dosis</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_antitet" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-antitet" name="ga_antitet" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-antitet" name="ga_antitet" value="No" />
                                    </div>
                                </td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_antitet_dosis_uno"  name="ga_antitet_dosis_uno" maxLength="2" onkeypress="return validaNumericos(event)" placeholder="Mes de gestación que se aplicó vacuna"/></td>
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_antitet_dosis_dos"  name="ga_antitet_dosis_dos" maxLength="2" onkeypress="return validaNumericos(event)" placeholder="Mes de gestación que se aplicó vacuna"/></td>
                            </tbody>
                        </table> 
                        <table style='width: 95%; margin-left: 10px; '>
                            <hr style='margin-left: 25px; margin-right: 25px;'/>
                            <thead>
                                <th>ANTIRUBEOLA</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_antirubeola" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">previa: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-antirubeola" name="ga_antirubeola" value="Previa" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp no sabe: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-antirubeola" name="ga_antirubeola" value="No sabe" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp embarazo: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-antirubeola" name="ga_antirubeola" value="Embarazo" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-antirubeola" name="ga_antirubeola" value="No" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; width: 50%;' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="1">EX.NORMAL</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>ODONT</th>
                                <th>MAMAS</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_exnormal_odont" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-exnormal-odont"  name="ga_exnormal_odont" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-exnormal-odont"  name="ga_exnormal_odont" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_exnormal_mamas" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-exnormal-mamas" name="ga_exnormal_mamas" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-exnormal-mamas" name="ga_exnormal_mamas" value="No" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left;' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="2">CERVIX</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>Insp. visual</th>
                                <th>PAP</th>
                                <th>COLP</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_cervix_insp" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">Normal: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-insp" name="ga_cervix_insp" value="Normal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp Anormal: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-insp" name="ga_cervix_insp" value="Anormal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp no se hizo: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-insp" name="ga_cervix_insp" value="No se hizo" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_cervix_pap" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">Normal: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-pap" name="ga_cervix_pap" value="Normal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp Anormal: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-pap" name="ga_cervix_pap" value="Anormal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp no se hizo: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-pap" name="ga_cervix_pap" value="No se hizo" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_cervix_colp" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">Normal: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-colp" name="ga_cervix_colp" value="Normal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp Anormal: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-colp" name="ga_cervix_colp" value="Anormal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp no se hizo: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-cervix-colp" name="ga_cervix_colp" value="No se hizo" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; width: 25%;' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="3">Exámen de sangre</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>Grupo</th>
                                <th>Rh</th>
                                <th>Inmuniz.</th>
                                <th>yglubolina anti D</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_san_grupo" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">A: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-san-grupo" name="ga_san_grupo" value="A" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp B: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-san-grupo" name="ga_san_grupo" value="B" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp AB: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-san-grupo" name="ga_san_grupo" value="AB" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp O: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-san-grupo" name="ga_san_grupo" value="O" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_san_rh" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">+&nbsp </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-san-rh" name="ga_san_rh" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp - &nbsp  </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-san-rh" name="ga_san_rh" value="-" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_san_inmuniz" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-san-inmuniz" name="ga_san_inmuniz" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-san-inmuniz" name="ga_san_inmuniz" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_san_globulina" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rbga-san-globulina" name="ga_san_globulina" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rbga-san-globulina" name="ga_san_globulina" value="No" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp N/C: </span>
                                        <input style="margin-top: 2px" type="radio" id="rbga-san-globulina" name="ga_san_globulina" value="Nc" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; ' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="3">Taxoplasmosis</th>
                                </tr>
                            </thead>
                            <thead >
                                <th><20sem IgG</th>
                                <th>>=20sem IgG</th>
                                <th>1ra Consulta IgM</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_toxo_menor" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-menor" name="ga_toxo_menor" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-menor" name="ga_toxo_menor" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No se hizo </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-menor" name="ga_toxo_menor" value="No se hizo" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_toxo_mayor" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-mayor" name="ga_toxo_mayor" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-mayor" name="ga_toxo_mayor" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No se hizo </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-mayor" name="ga_toxo_mayor" value="No se hizo" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_toxo_prim_cons" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-prim-cons" name="ga_toxo_prim_cons" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-prim-cons" name="ga_toxo_prim_cons" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No se hizo </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-toxo-prim-cons" name="ga_toxo_prim_cons" value="No se hizo" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left;' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="3">Examenes Chagas y Paludismo</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>CHAGAS</th>
                                <th>PALUDISMO / MALARIA</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_chagas" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-chagas" name="ga_chagas" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-chagas" name="ga_chagas" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No se hizo </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-chagas" name="ga_chagas" value="No se hizo" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_pal_mal" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-pal-mal" name="ga_pal_mal" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-pal-mal" name="ga_pal_mal" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No se hizo </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-pal-mal" name="ga_pal_mal" value="No se hizo" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left;' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="3">Bacteriuria</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>Sem < 20</th>
                                <th>Sem >= 20</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_bac_menor" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">Normal </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-bac-menor" name="ga_bac_menor" value="Normal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp Anormal </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-bac-menor" name="ga_bac_menor" value="Anormal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No se hizo </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-bac-menor" name="ga_bac_menor" value="No se hizo" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_bac_mayor" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">Normal </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-bac-mayor" name="ga_bac_mayor" value="Normal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp Anormal </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-bac-mayor" name="ga_bac_mayor" value="Anormal" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No se hizo </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-bac-mayor" name="ga_bac_mayor" value="No se hizo" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; width: 33%;' >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' >Glucemia en ayunas</th>
                                </tr>
                            </thead>
                        </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead >
                                <th><20 Sem</th>
                                <th>>=105mg/dl</th>
                            </thead>
                            <tbody align="center">
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_glu_menor20" name="ga_glu_menor20" onkeypress="return validaNumericos(event)" placeholder="Ingrese la respectiva semana de gestación"/></td>
                                <td>
                                    <div id="ga_glu_menor20_105" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="ga-glu-menor20-105" name="ga_glu_menor20_105" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="ga-glu-menor20-105" name="ga_glu_menor20_105" value="No" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                       <table style='width: 95%; margin-left: 10px; '>
                           <hr style='margin-left: 25px; margin-right: 25px;'/>
                            <thead >
                                <th>>=30 Sem</th>
                                <th>>=105mg/dl</th>
                            </thead>
                            <tbody align="center">
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_glu_mayor30" name="ga_glu_mayor30" onkeypress="return validaNumericos(event)" placeholder="Ingrese la respectiva semana de gestación"/></td>
                                <td>
                                    <div id="ga_glu_mayor30_105" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-glu-mayor30-105" name="ga_glu_mayor30_105" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-glu-mayor30-105" name="ga_glu_mayor30_105" value="No" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                       
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left;' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="3">VIH</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>Solicitado <20 sem</th>
                                <th>Realizado <20 sem</th>
                                <th>Solicitado >=20 sem</th>
                                <th>Realizado >=20 sem</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_vih_sol_menor20" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="ga-vih-rea-menor20" name="ga_vih_sol_menor20" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="ga-vih-rea-menor20" name="ga_vih_sol_menor20" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_vih_rea_menor20" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="ga-vih-rea-menor20" name="ga_vih_rea_menor20" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="ga-vih-rea-menor20" name="ga_vih_rea_menor20" value="No" />
                                    </div>
                                </td>                                
                                <td>
                                    <div id="ga_vih_sol_mayor20" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-vih-rea-mayor20" name="ga_vih_sol_mayor20" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-vih-rea-mayor20" name="ga_vih_sol_mayor20" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_vih_rea_mayor20" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-vih-rea-mayor20" name="ga_vih_rea_mayor20" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-vih-rea-mayor20" name="ga_vih_rea_mayor20" value="No" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; width: 50%' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="3">Fe / Folatos</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>Hb <20 sem</th>
                                <th><11.0 g/dl</th>
                            </thead>
                            
                            <tbody align="center">
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_hb_menor_20" name="ga_hb_menor_20" placeholder="Ingrese la respectiva semana de gestación" onkeypress="return validaNumericosDec(event)"/></td>
                                <td>
                                    <div id="ga_hb_menor_bajo" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-hb-menor-bajo" name="ga_hb_menor_bajo" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-hb-menor-bajo" name="ga_hb_menor_bajo" value="No" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <hr style='margin-left: 25px; margin-right: 25px;'/>
                            <thead >
                                <th>Fe</th>
                                <th>Folatos</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_fe" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 60%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fe" name="ga_fe" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-fe" name="ga_fe" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_folatos" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-folatos" name="ga_folatos" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-folatos" name="ga_folatos" value="No" />
                                    </div>
                                </td>
                            </tbody>
                        </table>
                        <table style='width: 95%; margin-left: 10px; '>
                            <hr style='margin-left: 25px; margin-right: 25px;'/>
                            <thead >
                                <th>Hb >=20 sem</th>
                                <th><11.0 g/dl</th>
                            </thead>
                            <tbody align="center">
                                <td><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_hb_mayor_20" name="ga_hb_mayor_20" placeholder="Ingrese la respectiva semana de gestación" onkeypress="return validaNumericosDec(event)"/></td>
                                <td style="width: 50%;">
                                    <div id="ga_hb_mayor_bajo" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-hb-mayor-bajo" name="ga_hb_mayor_bajo" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-hb-mayor-bajo" name="ga_hb_mayor_bajo" value="No" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; width: 33%' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="3">Datos</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>STREPTOCOCO B</th>
                                <th>Preparación para el parto</th>
                                <th>Consejería lactancia materna</th>
                            </thead>
                            <tbody align="center">
                                <td>
                                    <div id="ga_estreptococo" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-estreptococo" name="ga_estreptococo" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-estreptococo" name="ga_estreptococo" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp No se hizo </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-estreptococo" name="ga_estreptococo" value="No se hizo" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_prepa_parto" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-prepa-parto" name="ga_prepa_parto" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-prepa-parto" name="ga_prepa_parto" value="No" />
                                    </div>
                                </td>
                                <td>
                                    <div id="ga_consej_lactancia" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">SI: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-consej-lactancia" name="ga_consej_lactancia" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp NO: </span>
                                        <input style="margin-top: 2px" type="radio" id="rb-ga-consej-lactancia" name="ga_consej_lactancia" value="No" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                        
                        
                      <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; width: 33%' colspan="1" >GESTACIÓN ACTUAL</th>
                                    <th style='background: #afadac; text-align: left' colspan="3">SIFILIS Diagnostico y Tratamiento</th>
                                </tr>
                            </thead>
                            <thead >
                                <th>Prueba NO Treponémica Resultado <20sem</th>
                                <th><20 sem</th>
                                <th style="border-left: solid #555;">Prueba NO Treponémica Resultado >=20sem</th>
                                <th>>= 20 sem</th>
                            </thead>
                            <tbody align="center">
                                <td style="width: 35%;" >
                                    <div id="ga_sif_prue_notre_res_men" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-notre-res-men" name="ga_sif_prue_notre_res_men" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-notre-res-men" name="ga_sif_prue_notre_res_men" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp s/d </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-notre-res-men" name="ga_sif_prue_notre_res_men" value="Sd" />
                                    </div>
                                </td>
                                <td style="width: 15%;"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_sif_prue_notre_sem_men" name="ga_sif_prue_notre_sem_men" placeholder="Semana" onkeypress="return validaNumericos(event)"/></td>
                                <td style="border-left: solid #555; width: 35%;">
                                    <div id="ga_sif_prue_notre_res_may" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-notre-res-may" name="ga_sif_prue_notre_res_may" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-notre-res-may" name="ga_sif_prue_notre_res_may" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp s/d </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-notre-res-may" name="ga_sif_prue_notre_res_may" value="Sd" />
                                    </div>
                                </td>
                                <td style="width: 15%;"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_sif_prue_notre_sem_may" name="ga_sif_prue_notre_sem_may" placeholder="Semana" onkeypress="return validaNumericos(event)"/></td>
                                
                            </tbody>
                       </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            
                            <thead >
                                <th>Prueba Treponémica Resultado <20sem</th>
                                <th><20 sem</th>
                                <th style="border-left: solid #555;">Prueba Treponémica Resultado >=20sem</th>
                                <th>>= 20 sem</th>
                            </thead>
                            <tbody align="center">
                                <td style="width: 35%;">
                                    <div id="ga_sif_prue_tre_res_men" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-tre-res-men" name="ga_sif_prue_tre_res_men" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-tre-res-men" name="ga_sif_prue_tre_res_men" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp S/D </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-tre-res-men" name="ga_sif_prue_tre_res_men" value="Sd" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp N/C </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-tre-res-men" name="ga_sif_prue_tre_res_men" value="Nc" />
                                    </div>
                                </td>
                                <td style="width: 15%;"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_sif_prue_tre_sem_men" name="ga_sif_prue_tre_sem_men" placeholder="Semana" onkeypress="return validaNumericos(event)"/></td>
                                <td style="border-left: solid #555; width: 35%;">
                                    <div id="ga_sif_prue_tre_res_may" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">- </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-tre-res-may" name="ga_sif_prue_tre_res_may" value="-" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp + </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-tre-res-may" name="ga_sif_prue_tre_res_may" value="+" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp S/D </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-tre-res-may" name="ga_sif_prue_tre_res_may" value="Sd" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp N/C </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-prue-tre-res-may" name="ga_sif_prue_tre_res_may" value="Nc" />
                                    </div>
                                </td>
                                <td style="width: 15%;"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_sif_prue_tre_sem_may" name="ga_sif_prue_tre_sem_may" placeholder="Semana" onkeypress="return validaNumericos(event)"/></td>
                                
                            </tbody>
                            <hr style='margin-left: 25px; margin-right: 25px;'/>
                       </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            
                            <thead >
                                <th>Tratamiento <20sem</th>
                                <th><20 sem</th>
                                <th style="border-left: solid #555;">Tratamiento >=20sem</th>
                                <th>>= 20 sem</th>
                            </thead>
                            <tbody align="center">
                                <td style="width: 35%;">
                                    <div id="ga_sif_trat_menor" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">NO </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" iid="rb-ga-sif-trat-menor" name="ga_sif_trat_menor" value="No" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp SI </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-menor" name="ga_sif_trat_menor" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp S/D </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-menor" name="ga_sif_trat_menor" value="Sd" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp N/C </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-menor" name="ga_sif_trat_menor" value="Nc" />
                                    </div>
                                </td>
                                <td style="width: 15%;"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_sif_trat_menor_sem" name="ga_sif_trat_menor_sem" placeholder="Semana"onkeypress="return validaNumericos(event)"/></td>
                                <td style="border-left: solid #555; width: 35%;">
                                    <div id="ga_sif_trat_mayor" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">NO </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-mayor" name="ga_sif_trat_mayor" value="No" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp SI </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-mayor" name="ga_sif_trat_mayor" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp S/D </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-mayor" name="ga_sif_trat_mayor" value="Sd" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp N/C </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-mayor" name="ga_sif_trat_mayor" value="Nc" />
                                    </div>
                                </td>
                                <td style="width: 15%;"><input style="border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="ga_sif_trat_mayor_sem" name="ga_sif_trat_mayor_sem" placeholder="Semana" onkeypress="return validaNumericos(event)"/></td>
                                
                            </tbody>
                            <hr style='margin-left: 25px; margin-right: 25px;'/>
                       </table>
                        
                        <table style='width: 95%; margin-left: 10px; '>
                            <hr style='margin-left: 25px; margin-right: 25px;'/>
                            <thead >
                                <th>Tratamiento Pareja <20sem</th>
                                <th style="border-left: solid #555;">Tratamiento Pareja >=20sem</th>
                            </thead>
                            <tbody align="center">
                                <td style="width: 50%;">
                                    <div id="ga_sif_trat_par_menor" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">NO </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-par-menor" name="ga_sif_trat_par_menor" value="No" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp SI </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-par-menor" name="ga_sif_trat_par_menor" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp S/D </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-par-menor" name="ga_sif_trat_par_menor" value="Sd" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp N/C </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-par-menor" name="ga_sif_trat_par_menor" value="Nc" />
                                    </div>
                                </td>
                                <td style="border-left: solid #555; width: 50%;">
                                    <div id="ga_sif_trat_par_mayor" style=" border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 80%; height: 40px; display: flex; justify-content: center; align-items: center;">
                                        <span style="margin-top: 2px">NO </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-par-mayor" name="ga_sif_trat_par_mayor" value="No" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp SI </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-par-mayor" name="ga_sif_trat_par_mayor" value="Si" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp S/D </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-par-mayor" name="ga_sif_trat_par_mayor" value="Sd" />
                                        <span style="margin-top: 2px">&nbsp &nbsp &nbsp N/C </span>
                                        <input style="margin-top: 2px; margin-left: 5px" type="radio" id="rb-ga-sif-trat-par-mayor" name="ga_sif_trat_par_mayor" value="Nc" />
                                    </div>
                                </td>
                            </tbody>
                       </table>
                        
                        <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; width: 33%' colspan="1" >CONSULTAS ANTENATALES</th>
                                    <th style='background: #afadac; text-align: left; width: 67%' colspan="16" >Primera consulta</th>
                                </tr>
                            </thead>
                            </thead>
                            <tbody >
                            <td>¿ La paciente se encuentra dentro de las primeras 20 semanas ?</td>
                            <td><input style= 'text-align: center; margin-top: 5px;' type="checkbox" id="checkcito"  name="checkcito" oninput="habDes(this);" checked="true" /></td>
                            </tbody>
                        </table>
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead >
                                <th>Edad gest.</th>
                                <th>Peso</th>
                                <th>PA</th>
                                <th>Altura terina</th>
                                <th>Presentación</th>
                                <th>FCF(lpm)</th>
                                <th>Movin. fetales</th>
                                <th>Proteinuria</th>
                            </thead>
                            <tbody align="center">
                            <td><input style="margin-top: -8px; border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 70%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="txt-ca-edad-ges" name="ca_edad_ges" placeholder="Semana" onkeypress="return validaNumericos(event)" required="" oninput="pasarSemGest(this);"/></td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ca-peso" class="inp-edad"  maxlength="6" placeholder="Peso" name="ca_peso" value="" onkeypress='return validaNumericosDec(event)' readonly="true" required=""/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ca-pa" class="inp-edad"  maxlength="3" placeholder="PA" name="ca_pa" value="" onkeypress='return validaNumericos(event)' required=""/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ca-altura-uterina" class="inp-edad"  maxlength="2" placeholder="altura"  name="ca_altura_uterina" value="" onkeypress='return validaNumericos(event)' required=""/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ca-presentacion" class="inp-edad"  maxlength="50" placeholder="presentacion" name="ca_presentacion" value="" onkeypress='return validaNumericos(event)' required=""/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ca-FCP" class="inp-edad"  maxlength="50" placeholder="FCF" name="ca_FCP" value="" onkeypress='return validaNumericos(event)' required=""/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ca-mov-fetales" class="inp-edad"  maxlength="50" placeholder="movin. fetal" name="ca_mov_fetales" value=""  onkeypress='return validaNumericos(event)' required=""/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-ca-proteinuria" class="inp-edad"  maxlength="50" placeholder="proteinuria" name="ca_proteinuria" value=""  onkeypress='return validaNumericos(event)' required=""/></div> </td>
                            </tbody>
                       </table>
                        
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead >
                                <th>Signos de alarma, exámenes, tratamiento</th>
                                <th>Iniciales Técnico</th>
                                <th>Proxima Cita</th>
                            </thead>
                            <tbody align="center">
                            <td style='width: 50%;'><div class="div-cont-name"><input style= 'text-align: center; width: 100%' type="text" maxlength="200" id="txt-ca-signos-notas" class="inp-name" placeholder="Signos de alarma" name="ca_signos_notas"  onkeypress="return soloLetras(event)" onkeyup="mayus(this);" required=""/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-ca-iniciales-tecnico" maxlength="4" class="inp-name" placeholder="Iniciales" name="ca_iniciales_tecnico" onkeypress="return soloLetras(event)" onkeyup="mayus(this);" required=""/></div></td>
                                <td><div class="div-cont-lname"><input type="date" id="txt-ca-prox-cita" class="inp-name" name="ca_prox_cita" required=""/></div></td>
                                
                            </tbody>
                       </table>
                       
                       <hr /> <h1 style="text-align:  center;">VALORACIÓN DEL ÍNDICE DE MASA CORPORAL</h1> <hr />
                       
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead>
                                <tr>
                                    <th style='background: #afadac; text-align: left; width: 33%' colspan="1" >Valoración del índice de masa corporal</th>
                                    <th style='background: #afadac; text-align: left; width: 67%' colspan="16" >Primera consulta</th>
                                </tr>
                            </thead>
                        </table>
                       <table style='width: 95%; margin-left: 10px; '>
                            <thead >
                                <th>Semana Gestacional</th>
                                <th>Peso</th>
                                <th>Talla</th>
                                <th>IMC</th>
                                <th>Rango de IMC</th>
                            </thead>
                            <tbody align="center">
                            <td style=""><input style="margin-top: -8px; border-style: solid; border-color: #d5ddda; border-radius: 10px; background: #d5ddda; width: 50%; height: 40px; display: flex; align-items: center; text-align: center;" type="number" id="num-imc-semana" name="imc_semana" placeholder="Semana" onkeypress="return validaNumericos(event)" required="" readonly="true"/></td>
                            <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-imc-peso" class="inp-edad"  maxlength="2" placeholder="Peso" name="imc_peso" onkeypress='return validaNumericosDec(event)' readonly="true"/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-imc-talla" class="inp-edad"  maxlength="10" placeholder="Talla" name="imc_talla" value="" required="" onkeypress='return validaNumericos(event)' readonly="true"/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-imc-imc" class="inp-edad"  placeholder="IMC" name="imc_valor_inicial" readonly="true"/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-imc-rango" class="inp-edad"  placeholder="Rango IMC" name="imc_rango" value="Desconocido" readonly="true"/></div> </td>
                            </tbody>
                       </table>
                       <hr/>
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
                       <hr/>
                       <table style='width: 95%; margin-left: 10px; '>
                            <tbody align="center">
                                <td colspan="2"><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="button" id="btn-action" class="btn-accept" value="Cancelar" onclick="javascript:cancel();"/> </div></td>
                                <td colspan="2"><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="submit" id="btn-action" class="btn-accept" value="Guardar"/> </div></td>
                                
                            </tbody>
                           
                       </table>
                </div>
            </section>
        </form>
        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        
    </body>
    <footer></footer>
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/Gine-Historial-Emb-Funciones.js" type="text/javascript"></script>
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
        
        function habDes(e){
           
           if(document.getElementById("checkcito").checked){
               document.getElementById("txt-ca-altura-uterina").value = "";
               document.getElementById("txt-ca-presentacion").value = "";
               document.getElementById("txt-ca-FCP").value = "";
               document.getElementById("txt-ca-mov-fetales").value = "";
               document.getElementById("txt-ca-proteinuria").value = "";
               
               document.getElementById("txt-ca-altura-uterina").readOnly = false;
               document.getElementById("txt-ca-presentacion").readOnly = false;
               document.getElementById("txt-ca-FCP").readOnly = false;
               document.getElementById("txt-ca-mov-fetales").readOnly = false;
               document.getElementById("txt-ca-proteinuria").readOnly = false;
           }else{
               document.getElementById("txt-ca-altura-uterina").value = "NA";
               document.getElementById("txt-ca-presentacion").value = "NA";
               document.getElementById("txt-ca-FCP").value = "NA";
               document.getElementById("txt-ca-mov-fetales").value = "NA";
               document.getElementById("txt-ca-proteinuria").value = "NA";
               
               document.getElementById("txt-ca-altura-uterina").readOnly = true;
               document.getElementById("txt-ca-presentacion").readOnly = true;
               document.getElementById("txt-ca-FCP").readOnly = true;
               document.getElementById("txt-ca-mov-fetales").readOnly = true;
               document.getElementById("txt-ca-proteinuria").readOnly = true;
           }
        }
        
        function pasarSemGest(e){
            document.getElementById("num-imc-semana").value = document.getElementById("txt-ca-edad-ges").value;
        }
        
        function pasarPresion(e){
            document.getElementById("txt-ca-pa").value = document.getElementById("txt-pa-sistolica").value;
        }
        
        function pasarFUM(e){
            document.getElementById("txt-ga-fum").value = document.getElementById("txt-FUM").value;
        }

        function pasarFPP(e){
            document.getElementById("txt-ga-fpp").value = document.getElementById("txt-FPP").value;
        }
        
        function clacularIMC(e) {
            //e.value = e.value.toUpperCase();
            var imc = 0;
            var peso = Number(document.getElementById("txt-peso").value);
            var talla = Number(document.getElementById("txt-talla").value);
            pasarPesoTalla();
            if(peso > 0 && talla > 0){
                imc = peso / Math.pow((talla * 0.01), 2);
                imc = Number(imc.toFixed(3));
                calcularRangoIMC(imc);
                document.getElementById("txt-imc").value = imc;
                pasarPesoTallaValoracion(peso, talla, imc)
            }else{
                document.getElementById("txt-imc").value = '';
                limpiarPesoTallaValoracion();
            }
        }
        
        function pasarPesoTalla(){
            document.getElementById("txt-ca-peso").value = document.getElementById("txt-peso").value;
            document.getElementById("txt-ga-peso").value = document.getElementById("txt-peso").value;
            document.getElementById("txt-ga-talla").value = document.getElementById("txt-talla").value;
        }
        
        function pasarPesoTallaValoracion(peso, talla, imc){
            document.getElementById("txt-imc-imc").value = imc;
            document.getElementById("txt-imc-peso").value = peso;
            document.getElementById("txt-imc-talla").value = talla;
        }
        
        function limpiarPesoTallaValoracion(){
            document.getElementById("txt-imc-imc").value = '';
            document.getElementById("txt-imc-peso").value = '';
            document.getElementById("txt-imc-talla").value = '';
            document.getElementById("txt-imc-rango").value = 'Desconocido';
        }
        
        function calcularRangoIMC(imc){
            if(imc != 0){
                if(imc < 18.5){
                    document.getElementById("txt-imc-rango").value = 'Bajo';
                }else if(imc < 25){
                    document.getElementById("txt-imc-rango").value = 'Normal';
                }else if(imc < 30){
                    document.getElementById("txt-imc-rango").value = 'Sobrepeso';
                }else{
                    document.getElementById("txt-imc-rango").value = 'Obesidad';
                }
            }else{
                document.getElementById("txt-imc-rango").value = 'Desconocido';
            }
            
        }
    </script>
          
</html>

