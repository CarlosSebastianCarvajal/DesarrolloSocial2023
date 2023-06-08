<%-- 
    Document   : Actualizar_Ficha_Psicologica
    Created on : 19-dic-2022, 11:34:26
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
        <a href="../src/java/DAO/BuscadorPsicologica.java"></a>
        <link href="css/Ingresos_2.css" rel="stylesheet" type="text/css"/>
        <title> Actualizar Ficha Psicológica</title>
    </head>
    <body onload="cargarProvincias()">

        <header id="header" style=" background: #007653 !important; margin-top:-40px">
            
                <a class="logo" href="Principal.jsp" id="ulUserData"> 
            </a>
             <nav class="nav-tp"></nav>
            
        </header>     
        <div class="div-head-ti" style="margin-top:-18px"><h2></h2></div>


        <form class="form1" action="ActualizarFichaPsicologica" method="GET" style="margin-top:-20px">
            <section class="sec-main">
                <div class="div-cont-main">
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
                                <th style='background: #007653; text-align: left' colspan="4">A. DATOS DE IDENTIFICACIÓN</th>
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
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-primerNombre" class="inp-name" placeholder="Primer Nombre" name="nombrePrimero"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-segundoNombre" class="inp-lname" placeholder="Segundo Nombre" name="nombreSegundo"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-primerApellido" class="inp-name" placeholder="Primer Apellido" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-segundoApellido" class="inp-lname" placeholder="Segundo Apellido" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Cédula de Identidad</th>
                                <th>Número Telefónico</th>
                                <th>Escolaridad</th>
                                <th>Ocupación</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-cedulap" class="inp-edad"  minlength="10" maxlength="10" placeholder="Cédula de Identidad" name="CedulaIdentidad" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-numerop" class="inp-edad"  minlength="10" maxlength="10" placeholder="Número Telefónico" name="NumeroTelefonico" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-escolaridad" class="inp-lname" placeholder="Escolaridad" name="escolaridad"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-ocupacion" class="inp-lname" placeholder="Ocupación" name="ocupacion"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Estado Civil</th>
                                <th>Sexo</th> 
                                <th>Edad</th>
                                <th>Fecha de Nacimiento</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-sel-dep-to-transf"  ><select class="sel-dep-to-transf"required=""  name="estadoCivil" id="txt-estado">
                                            <option>Seleccione el estado civil</option>
                                            <option>Soltero</option>
                                            <option>Casado</option>
                                            <option>Union libre</option>
                                            <option>Viudo</option>
                                            <option>Divorciado</option>
                                        </select></div></td>
                                <td><div class="div-cont-sel-dep-to-transf"  ><select class="sel-dep-to-transf" name="genero" id="txt-genero">   
                                            <option>Seleccione genero</option>
                                            <option>Masculino</option>
                                            <option>Femenino</option></select></div></td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-edadP" class="inp-edad"  minlength="1" readonly="readonly" maxlength="2" placeholder="Edad" name="edadP" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                                <td><div class="div-cont-lname"><input type="date" id="txt-fechaNacimiento" class="inp-lname" placeholder="Fecha de nacimiento"required=""  name="Fechadenacimiento"/></div></td> 
                               </tr> 
                        </tbody>
                        <thead >
                            <tr>                                
                                <th>Religión</th>
                                <th>Orientación Sexual</th>
                                <th>Lugar de Residencia</th>
                                <th>Tipo de discapacidad</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                    <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-religion" class="inp-lname" placeholder="Religión" name="religion" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                    <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-orientacion" class="inp-lname" placeholder="Orientación Sexual" name="OrientacionSexual" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                    <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-lugarResidencia" class="inp-lname" placeholder="Lugar de Residencia" name="LugarResidencia" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                    <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-tipoDiscapacidad" class="inp-lname" placeholder="Tipo de discapacidad" name="TipoDiscapacidad" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Porcentaje %</th>                               
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-Porcentaje" class="inp-edad"  minlength="1" maxlength="2" placeholder="Porcentaje %" name="porcentaje" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>            
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">B. CONTACTO DE REFERENCIA</th>
                            </tr>
                       </thead>
                        <thead >
                            <tr>                                
                                <th>Primer Apellido</th>
                                <th>Primer Nombre</th>
                                <th>Parentezco</th>
                                <th>Cédula de Identidad</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-apellidoc" class="inp-name" placeholder="Primer Apellido" name="PrimerApellidoC" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-nombrec" class="inp-lname" placeholder="Primer Nombre" name="PrimerNombreC"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-parentezco" class="inp-name" placeholder="Parentezco" name="parentezco"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-cedulac" class="inp-edad"  minlength="10" maxlength="10" placeholder="Cédula de Identidad" name="CedulaIdentidadC" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Número Telefónico</th> 
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                <td><div class="div-cont-edad"><input style= 'text-align: center' type="text" id="txt-celularc" class="inp-edad"  minlength="10" maxlength="10" placeholder="Número Telefónico" name="NumeroTelefonicoC" value="" required="" onkeypress='return validaNumericos(event)'/></div> </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">C. MOTIVO DE CONSULTA</th>
                            </tr>
                       </thead>
                         <tbody align="center">
                            <tr> 
                                <td colspan="4" align="left"><div class="div-cont-name"><input style= 'text-align: left' type="text" id="txt-motivoP" class="inp-namee" placeholder="Motivo de Consulta" name="MotivoConsulta" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">D. ANTECEDENTES PERSONALES</th>
                            </tr>
                       </thead>
                        <thead >
                            <tr>                                
                                <th style='text-align: left'>Historia Personal</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                <td colspan="4" align="left"><div class="div-cont-name"><input style= 'text-align: left' type="text" id="txt-historiap" class="inp-namee" placeholder="Historia Personal" name="HistoriaPersonal" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>                                
                                <th style='text-align: left'>Antecedentes Familiares</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr> 
                                <td colspan="4" align="left"><div class="div-cont-name"><input style= 'text-align: left' type="text" id="txt-antecedentef" class="inp-namee" placeholder="Antecedentes Familiares" name="AntecedentesFamiliares" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                         <thead>
                            <tr>                                
                                <th colspan="2" style='text-align: left'>ANTECEDENTES PATOLÓGICOS</th>
                                <th style='text-align: left'>ACTIVIDADES DE INTERÉS</th>
                            </tr>
                        </thead>
                        <thead>
                            <tbody>
                                <tr>                                
                                    <th style='text-align: left'>Hitos de desarrollo:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-mitos" class="inp-name" placeholder="Mitos de desarrollo" name="MitosDesarrollo" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                    <td  colspan="2"><div class="div-cont-name"><input style= 'text-align: left; width: 150%' type="text" id="txt-interes" class="inp-name" placeholder="Actividad de Interés" name="ActividadInteres" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                                <tr>                                
                                    <th style='text-align: left'>Atención psiquiatrica/psicológica:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-atencion" class="inp-name" placeholder="Atención psiquiatrica/psicológica" name="AtencionPP" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                                 <tr>                                
                                    <th style='text-align: left'>Enfermedad Crónica:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-enfermedad" class="inp-name" placeholder="Enfermedad Crónica" name="EnfermedadCronica" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                            </tbody>
                        <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">E. OBSERVACIÓN DE LA CONDUCTA</th>
                            </tr>
                            </thead>
                            <thead>
                            <tr>                                
                                <th colspan="2" style='text-align: left'>FUNCIONES PSIQUICAS</th>
                                <th style='text-align: left'>OBSERVACIÓN GENERAL</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>                                
                                    <th style='text-align: left'>Orientación:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-orientacionP" class="inp-name" placeholder="Orientación" name="orientacion" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                    <th style='text-align: left'>Apariencia:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-apariencia" class="inp-name" placeholder="Apariencia" name="apariencia" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                                <tr>                                
                                    <th style='text-align: left'>Pensamiento:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-pensamiento" class="inp-name" placeholder="Pensamiento" name="pensamiento" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                    <th style='text-align: left'>Comportamientos:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-comportamiento" class="inp-name" placeholder="Comportamientos" name="comportamientos" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                                 <tr>                                
                                    <th style='text-align: left'>Lenguaje:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-lenguaje" class="inp-name" placeholder="Lenguaje" name="lenguaje" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                    <th style='text-align: left'>Otros:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-otros" class="inp-name" placeholder="Otros" name="otros" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                                <tr>                                
                                    <th style='text-align: left'>Memoria:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-memoria" class="inp-name" placeholder="Memoria" name="memoria" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                                <tr>                                
                                    <th style='text-align: left'>Atención:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-atencionP" class="inp-name" placeholder="Atención" name="atencion" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                                <tr>                                
                                    <th style='text-align: left'>Afectividad:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-afectividad" class="inp-name" placeholder="Afectividad" name="afectividad" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                                <tr>                                
                                    <th style='text-align: left'>Juicio:</th>
                                    <td><div class="div-cont-name"><input style= 'text-align: left; width: 140%' type="text" id="txt-juicio" class="inp-name" placeholder="Juicio" name="juicio" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                </tr>
                            </tbody>
                             <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">F. RECOMENDACIONES Y/O TRATAMIENTO</th>
                            </tr>
                       </thead>
                       <tbody align="center">
                            <tr> 
                                <td colspan="4" align="left"><div class="div-cont-name"><input style= 'text-align: left' type="text" id="txt-recomendacion" class="inp-namee" placeholder="Recomendaciones y/o tratamiento" name="recomendacion" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                         <thead>
                            <tr>
                                <th style='background: #007653; text-align: left' colspan="4">G. DATOS DEL PROFESIONAL</th>
                            </tr>
                       </thead>
                        <thead>
                            <tr>
                                <th>Fecha</th>
                                <th>Hora</th>
                                <th colspan="2">Nombres y Apellidos</th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td><div class="div-cont-name"><input style= 'text-align: center' type="text" id="txt-fecha" class="inp-name" readonly="readonly" placeholder="Fecha" name="fecha" required=""  readonly="readonly"  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                    <td><div class="div-cont-lname"><input style= 'text-align: center' type="text" id="txt-hora" class="inp-lname" readonly="readonly" placeholder="Hora" name="hora"required="" readonly="readonly"  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td align="left" colspan="2"><div class="div-cont-name"><input style= 'text-align: center; width: 150%' type="text"  readonly="readonly" id="txt-nombreM" class="inp-name"  placeholder="Nombres y Apellidos" name="NombresApellidos"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
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
        <script src="js/pais.js"></script>
        <script>
                                    function cancel(){
                                        window.location.href = "./MenuPsicologia.jsp";
                                    }
                                    
                                    function cargarProvincias() {
                                        var array = ["Azuay", "Bolívar", "Cañar", "Carchi", "Chimborazo", "Cotopaxi", "Oro", "Esmeraldas", "Galápagos", "Guayas", "Imbabura", "Loja", "LosRíos",
                                            "Manabí", "MoronaSantiago", "Napo", "Orellana", "Pastaza", "Pichincha", "SantaElena", "SantoDomingo", "Sucumbíos", "Tungurahua", "ZamoraChinchipe"];
                                        array.sort();
                                        addOptions("Provincia", array);
                                    }

                                    function addOptions(domElement, array) {
                                        var selector = document.getElementsByName(domElement)[0];
                                        for (Provincia in array) {
                                            var opcion = document.createElement("option");
                                            opcion.text = array[Provincia];
                                            opcion.value = array[Provincia].toLowerCase()
                                            selector.add(opcion);
                                        }
                                    }
                                    function cargarPueblos() {
                                        // Objeto de provincias con pueblos
                                        var listaPueblos = {
                                            azuay: ["Cuenca", "camilo ponce Enriquez", "Chordeleg", "El pan", "Girón", "Guachapala", "Gualaceo", "Nabón", "Oña", "Paute", "Pucará", "San Fernando", "Santa Isabel", "Sevilla de oro", "Sígsig"],
                                            bolívar: ["Guaranda", "Caluma", "Chillanes", "Chimbo", "Echeandía", "Las naves", "San Miguel"],
                                            cañar: ["Azogues", "Biblián", "Cañar", "Déleg", "El Tambo", "La Troncal", "Suscal"],
                                            carchi: ["Tulcán", " Bolívar", "Espejo", "Mira", "Montúfar", "San Pedro de Huaca"],
                                            chimborazo: ["Riobamba", "Alausí", "Chambo", "Chunchi", "Colta", "Cumandá", "Guamote", "Guano", "Pallatanga", "Penipe"],
                                            cotopaxi: ["Latacunga", "La Maná", "Pangua", "Pujilí", "Salcedo", "Saquisilí", "Sigchos"],
                                            oro: ["Machala", "Arenillas", "Atahualpa", "Balsas", "Chilla", "El Guabo", "Huaquillas", "Las Lajas", "Marcabelí", "Pasaje", "Piñas", "Portovelo", "Santa Rosa", "Zaruma"],
                                            esmeraldas: ["Esmeraldas", "Atacames", "Eloy Alfaro", "Muisne", "Quinindé", "Rioverde", "San Lorenzo"],
                                            galápagos: ["San Cristóbal", "Isabela", "Santa Cruz"],
                                            guayas: ["Guayaquil", "Alfredo Baquerizo Moreno", "Balao", "Balzar", "Colimes", "Daule", "Durán", "El Empalme", "El Triunfo", "General Antonio Elizalde", "Isidro Ayora", "Lomas de Sargentillo", "Marcelino Maridueña", "Milagro", "Naranjal", "Naranjito", "Nobol", "Palestina", "Pedro Carbo", "Playas", "Salitre", "Samborondón", "Santa Lucía", "Simón Bolívar", "Yaguachi"],
                                            imbabura: ["Ibarra", " Antonio Ante", "Cotacachi", " Otavalo", "Pimampiro", "San Miguel de Urcuquí"],
                                            loja: ["Loja", "Calvas", "Catamayo", "Celica", "Chaguarpamba", "Espíndola", "Gonzanamá", "Macará", "Olmedo", "Paltas", "Pindal", "Puyango", "Quilanga", "Saraguro", "Sozoranga", "Zapotillo"],
                                            losríos: ["Babahoyo", "Baba", "Buena Fe", "Mocache", "Montalvo", "Palenque", "Puebloviejo", "Quevedo", " Quinsaloma", "Urdaneta", "Valencia", "Ventanas", "Vinces"],
                                            manabí: ["Portoviejo", "24 de Mayo", "Bolívar", "Chone", "El Carmen", " Flavio Alfaro", "Jama", "Jaramijó", "Jipijapa", "Junín", "Manta", "Montecristi", "Olmedo", "Paján", "Pedernales", "Pichincha", "Puerto López", " Rocafuerte", "San Vicente", "Santa Ana", "Sucre", " Tosagua"],
                                            moronasantiago: ["Morona", " Gualaquiza", "Huamboya", "Limón Indanza", "Logroño", "Pablo Sexto", "Palora", "San Juan Bosco", "Santiago de Méndez", "Sucúa", "Taisha", "Tiwintza"],
                                            napo: ["Tena", "Archidona", "Carlos Julio Arosemena Tola", "El Chaco", "Quijos"],
                                            orellana: ["Francisco de Orellana", "Aguarico", "La Joya de los Sachas", "Loreto"],
                                            pastaza: ["Pastaza", "Arajuno", "Mera", "Santa Clara"],
                                            pichincha: [" Quito", "Cayambe", "Mejía", "Pedro Moncayo", " Pedro Vicente Maldonado", "Puerto Quito", " Rumiñahui", "San Miguel de los Bancos"],
                                            santaElena: ["Santa Elena", "La Libertad", "Salinas"],
                                            santodomingo: ["Santo Domingo", "La Concordia"],
                                            sucumbíos: ["Lago Agrio", "Cascales", "Cuyabeno", "Gonzalo Pizarro", "Putumayo", "Shushufindi", "Sucumbíos"],
                                            tungurahua: ["Ambato", " Baños", "Cevallos", "Mocha", "Patate", "Pelileo", "Quero", "Santiago de Píllaro", "Tisaleo"],
                                            zamorachinchipe: ["Zamora", "Centinela del Cóndor", "Chinchipe", "El Pangui", "Nangaritza", "Palanda", " Paquisha", "Yacuambi", "Yantzaza"]

                                        }

                                        var provincias = document.getElementById('Provincia');
                                        var pueblos = document.getElementById('canton');
                                        var provinciaSeleccionada = provincias.value;

                                        // Se limpian los pueblos
                                        pueblos.innerHTML = '<option value="">Seleccione un canton...</option>'

                                        if (provinciaSeleccionada !== '') {
                                            // Se seleccionan los pueblos y se ordenan
                                            provinciaSeleccionada = listaPueblos[provinciaSeleccionada]
                                            provinciaSeleccionada.sort()

                                            // Insertamos los pueblos
                                            provinciaSeleccionada.forEach(function (pueblo) {
                                                let opcion = document.createElement('option');
                                                opcion.value = pueblo;
                                                opcion.text = pueblo;
                                                pueblos.add(opcion);
                                            });
                                        }

                                    }

                                    function validaNumericos(event) {
                                        if (event.charCode >= 48 && event.charCode <= 57) {
                                            return true;
                                        }
                                        return false;
                                    }
                                    function soloLetras(e) {
                                        key = e.keyCode || e.which;
                                        tecla = String.fromCharCode(key).toLowerCase();
                                        letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                                        especiales = [8, 37, 39, 46];

                                        tecla_especial = false;
                                        for (var i in especiales) {
                                            if (key === especiales[i]) {
                                                tecla_especial = true;
                                                break;
                                            }
                                        }

                                        if (letras.indexOf(tecla) === -1 && !tecla_especial)
                                            return false;
                                    }
                                    
                                                                      
                                    function validar() {
                                        var cad = document.getElementById("txt-ced").value.trim();
                                        var total = 0;
                                        var longitud = cad.length;
                                        var longcheck = longitud - 1;

                                        if (cad !== "" && longitud === 10) {
                                            for (i = 0; i < longcheck; i++) {
                                                if (i % 2 === 0) {
                                                    var aux = cad.charAt(i) * 2;
                                                    if (aux > 9)
                                                        aux -= 9;
                                                    total += aux;
                                                } else {
                                                    total += parseInt(cad.charAt(i)); // parseInt o concatenará en lugar de sumar
                                                }
                                            }

                                            total = total % 10 ? 10 - total % 10 : 0;

                                            if (cad.charAt(longitud - 1) === total) {
                                            } else {
                                                alert("LA CEDULA NO EXISTE O ES INCORRECTA");
                                                document.getElementById("txt-ced").value = "";
                                            }
                                        }
                                    }
                                    
                                    function verificarCedula(cedula) {
                                        if (typeof (cedula) === 'string' && cedula.length === 10 && /^\d+$/.test(cedula)) {
                                            var digitos = cedula.split('').map(Number);
                                            var codigo_provincia = digitos[0] * 10 + digitos[1];

                                            //if (codigo_provincia >= 1 && (codigo_provincia <= 24 || codigo_provincia == 30) && digitos[2] < 6) {

                                            if (codigo_provincia >= 1 && (codigo_provincia <= 24 || codigo_provincia === 30)) {
                                                var digito_verificador = digitos.pop();

                                                var digito_calculado = digitos.reduce(
                                                        function (valorPrevio, valorActual, indice) {
                                                            return valorPrevio - (valorActual * (2 - indice % 2)) % 9 - (valorActual === 9) * 9;
                                                        }, 1000) % 10;
                                                return digito_calculado === digito_verificador;
                                            }
                                        }
                                        return false;
                                    }
                                    const fechaNacimiento= document.getElementById("txt-fechaNacimiento");
                                 
                                 const calcularEdad=(fechaNacimiento) => {
                                     const fechaActual=new Date();
                                     const anoActual=parseInt(fechaActual.getFullYear());
                                     const mesActual=parseInt(fechaActual.getMonth())+1;
                                     const diaActual=parseInt(fechaActual.getDate());
                                     
                                     const anoNacimiento=parseInt(String(fechaNacimiento).substring(0,4));
                                     const mesNacimiento=parseInt(String(fechaNacimiento).substring(5,7));
                                     const diaNacimiento=parseInt(String(fechaNacimiento).substring(8,10));
                                     
                                     let edad=anoActual-anoNacimiento;
                                     if(mesActual<mesNacimiento){
                                         edad--;
                                     }else if(mesActual===mesNacimiento){
                                         if(diaActual<diaNacimiento){
                                             edad--;
                                         }
                                     }
                                     return edad;
                                 };
                                 
                                 window.addEventListener('load', function() {
                                     fechaNacimiento.addEventListener('change',function() {
                                         if(this.value){
                                             $("#txt-edadP").val(calcularEdad(this.value));
                                         }
                                     });
                                 });
        </script>
    </body>
    <script src="js/pais.js"></script>
    <script src="js/JQuery.js" type="text/javascript"></script> 
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/Actualizarficha.js" type="text/javascript"></script>
</html>

