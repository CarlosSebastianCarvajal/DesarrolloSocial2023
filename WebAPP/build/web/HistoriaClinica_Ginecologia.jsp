<%-- 
    Document   : HistoriaClinica_Ginecologia
    Created on : 08-jun-2023, 15:31:32
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
        <div class="div-head-titl" style="margin-top:-18px"><h2></h2></div>


        <form class="form1" action="AddFichaPsicologica" method="GET" style="margin-top:-20px">
            <section class="sec-main">
                <div class="div-cont-main2">

                    <table align="center" style='width: 98%; margin-left: 10px; margin-top: 30px'>
                       <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">1.- ANAMNESIS</th>
                            </tr>
                       </thead>
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
                        <thead >
                            <tr>
                                <th>Cédula de ciudadania</th>
                                <th>Estado Civil</th>
                                <th>Edad</th>
                                <th>Fecha de Nacimiento</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"  minlength="10" maxlength="10" placeholder="Cédula de Identidad" name="CedulaIdentidad" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-sel-dep-to-transf"  ><select class="sel-dep-to-transf"required=""  name="estadoCivil">
                                            <option>Seleccione el estado civil</option>
                                            <option>Soltero</option>
                                            <option>Casado</option>
                                            <option>Union libre</option>
                                            <option>Viudo</option>
                                            <option>Divorciado</option>
                                        </select></div></td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  minlength="1" maxlength="2" placeholder="Edad" name="edadP" value="" required="" readonly="readonly" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-lname"><input type="date" id="txt-fechaNaci" class="inp-lname" placeholder="Fecha de nacimiento"required=""  name="Fechadenacimiento"/></div></td> 
                               </tr> 
                        </tbody>
                        <thead>
                            <tr>
                                <th>Teléfono</th>
                                <th>Domicilio</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"  minlength="10" maxlength="10" placeholder="Teléfono" name="Telefono" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lname" class="inp-lname" placeholder="Domicilio" name="Domicilio" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">2.- SIGNOS VITALES</th>
                            </tr>
                       </thead>
                        <thead >
                            <tr>                                
                                <th>Presión Arterial</th>
                                <th>Temperatura</th>
                                <th>Frecuencia Cardíaca</th>
                                <th>Saturación</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Presión Arterial" name="PresionArterial" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Temperatura" name="Temperatura" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Frecuencia Cardíaca" name="FrecuenciaCardiaca" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Saturación" name="Saturacion" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>                                
                                <th>Peso</th>
                                <th>Talla</th>
                                <th>IMC</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Peso" name="Peso" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Talla" name="Talla" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="IMC" name="IMC" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td><div class="div-cont-name"><input style="width: 1000px;" style='text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Personales" name="Personales" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Familiares:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Familiares" name="Familiares" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Quirúrgicos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Quirúrgicos" name="Quirurgicos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Alérgicos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Alérgicos" name="Alergicos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </thead>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Hábitos Nocivos:</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: left' type="text" id="txt-name" class="inp-name" placeholder="Hábitos Nocivos" name="HabitosNocivos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  minlength="1" maxlength="2" placeholder="Menarquia" name="Menarquia" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  minlength="1" maxlength="2" placeholder="Inicio Relaciones Sexuales" name="InicioRelaciones" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"  minlength="1" maxlength="2" placeholder="Parejas Sexuales" name="ParejasSexuales" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-lname"><input type="date" id="txt-fechaNaci" class="inp-lname" placeholder="Ultimo PAP"required=""  name="UltimoPAP"/></div></td> 
                            </tr>
                        </tbody>
                        </table>
                        <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Métodos Anticonceptivos</th>
                                <td><div class="div-cont-name"><input style="width: 1000px;" style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Métodos Anticonceptivos" name="MetodosAnticonceptivos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td><div class="div-cont-lname"><input type="date" id="txt-fechaNaci" class="inp-lname" placeholder="FUM"required=""  name="FUM"/></div></td> 
                                <td><div class="div-cont-lname"><input type="date" id="txt-fechaNaci" class="inp-lname" placeholder="FPP"required=""  name="FPP"/></div></td> 
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  minlength="1" maxlength="2" placeholder="Menopausia" name="Menopausia" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"  minlength="1" maxlength="2" placeholder="Gestas" name="Gestas" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
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
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  minlength="1" maxlength="2" placeholder="Partos" name="Partos" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"  minlength="1" maxlength="2" placeholder="Abortos" name="Abortos" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadA" class="inp-edad"  minlength="1" maxlength="2" placeholder="Cesárea" name="Cesarea" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edad" class="inp-edad"  minlength="1" maxlength="2" placeholder="Edad Gestacional" name="EdadGestacional" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                            </tr>
                        </tbody>
                         </table>
                         <table align="center" style='width: 98%; margin-left: 10px; margin-top: 10px'>
                        <thead >
                            <tr>                                
                                <th style="width: 300px;">Complicaciones</th>
                                <td><div class="div-cont-name"><input input style="width: 1000px;" style= 'text-align: center' type="text" id="txt-name" class="inp-name" placeholder="Complicaciones" name="Complicaciones" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Motivo de la Consulta" name="MotivoConsulta" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">6.- ENFERMEDAD ACTUAL</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Enfermedad Actual" name="EnfermedadActual" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">7.- DIAGNOSTICO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Diagnostico" name="Diagnostico" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">8.- TRATAMIENTO</th>
                            </tr>
                       </thead>
                       <tbody>
                            <tr style='height: 175px'>
                                <td colspan="4" align="left"><div class="div-cont-ln" style="height: 175px;"><textarea type="text" id="txt-informacionRO" class="inp-lname" required="" placeholder="Tratamiento" name="Tratamiento" onkeyup="mayus(this);"style='height: 120px;'/></textarea></td> 
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
                
                function validaNumericos(event) {
                        if (event.charCode >= 48 && event.charCode <= 57) {
                            return true;
                        }
                        return false;
                    }
            </script>
    <script src="js/JQuery.js" type="text/javascript"></script>  
</html>

