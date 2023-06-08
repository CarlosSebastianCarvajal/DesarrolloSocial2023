<%-- 
    Document   : Terapiafisica
    Created on : 26-nov-2022, 21:29:53
    Author     : Sebastian Carvajal
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="BD.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <a href="../src/java/DAO/Buscador.java"></a>
        <link href="css/TerapiaFisica.css" rel="stylesheet" type="text/css"/>
        <title>Terapia Física</title>
    </head>
    <body>
        <header id="header" style=" background: #007653 !important;">
        <a class="logo" href="Principal.jsp"></a>
        <nav class="nav-tp"></nav>
        </header>     
        <div class="div-head-tittle"><h2></h2></div>
        
        <form id="form1" action="AddTerapiaFisica" method="GET" enctype="multipart/form-data">
        <section class="sec-main">
            
            <div id="divv" class="div-cont-main">
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
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                    <thead>
                        <tr>
                            <th>Numero de identificacion</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <div class="div-cont-ced" style='margin-top: -40px !important;'><input type="text" id="txt-cedi" class="inp-ced" placeholder="Numero de identificacion" name="cedula" onkeypress='return validaNumericos(event)' readonly="true"/></div> </td>
                            <td> <div class="div-cont-name"  ><input type="text" id="txt-namen" class="inp-name" placeholder="Nombres" name="Nombres" onkeypress="return soloLetras(event)"disabled="true" onkeyup="mayus(this);"/></div> </td>
                            <td> <div class="div-cont-lname"  ><input type="text" id="txt-lnamea" class="inp-lname" placeholder="Apellidos" name="Apellidos" onkeypress="return soloLetras(event)"disabled="true" onkeyup="mayus(this);"/></div> </td>
                            <input hidden type="text" id="txt-id" class="inp-lname" placeholder="Apellidos" name="txtid"/>
                        </tr>
                    </tbody>
                    <thead>
                        <tr>
                            <td>Discapacidad</td>
                            <td>Telefono convencional</td>
                            <td>Celular</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>

                            <td> <div class="div-cont-name"><input type="text" id="txt-namef" class="inp-name" placeholder="Discapacidad" name="Discapacidad"disabled="true" disabled="true" onkeyup="mayus(this);"/></div> </td>
                            <td> <div class="div-cont-lname"><input type="text" id="txt-lnamet" class="inp-lname" placeholder="Telefono Convencional" name="convencional" onkeypress='return validaNumericos(event)'disabled="true"/></div> </td>
                            <td> <div class="div-cont-edad"><input type="text" id="txt-cel" class="inp-edad" placeholder="Celular" name="Celular" onkeypress='return validaNumericos(event)'disabled="true"/></div>  </td>
                        </tr>
                    </tbody>
                    <thead>
                        <tr>
                            <td>Provincia</td>
                            <td>Direccion</td>
                            <td>Genero</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>  <div class="div-cont-lname"><input type="text" id="txt-provin" class="inp-lname" placeholder="Provincia" name="Provincia" onkeypress="return soloLetras(event)"disabled="true"/></div>  </td>
                            <td> <div class="div-cont-lname"><input type="text" id="txt-direccion" class="inp-lname" placeholder="Direccion" name="Direccion"disabled="true"/></div> </td>
                            <td> <div class="div-cont-lname"><input type="text" id="txt-genero" class="inp-lname" placeholder="Genero" name="Genero" onkeypress="return soloLetras(event)"disabled="true"/></div> </td>
                        </tr> 
                    </tbody>

                    <thead>
                        <tr>
                            <th>Ayuda economica</th>
                            <th>Nacionalidad</th>
                            <th>Correo Electronico</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr> 
                            <td><div class="div-cont-lname"><input type="text" id="txt-ayudaeconomica" class="inp-lname" placeholder="Ayuda economica" name="Ayuda economica" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-nacionalidad" class="inp-lname" placeholder="Nacionalidad" name="Nacionalidad" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-tiposangre" class="inp-lname" placeholder="Correo Electronico" name="Correo Electronico" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                        </tr>
                    </tbody>
                </table>
                <hr />

                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                    <thead>
                        <tr>
                            <th>Código Factura</th> 
                            <th>Motivo de Terapia</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-motivocon" class="inp-lname" placeholder="Código Factura" name="codigof"/></div></td> 
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-motivocon" class="inp-lname" required=""placeholder="Motivo de Terapia" name="motivot" onkeyup="mayus(this);"style='height: 85px;'/></textarea> </td> 
                        </tr>
                    </tbody>
                    <thead>
                        <tr>
                            <td>Diagnostico</td> 
                            <td>Procedimiento Realizado</td> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-diagnostico" class="inp-lname"required="" placeholder="Diagnostico" name="diagnosticot" onkeyup="mayus(this);"style='height: 85px;'/></textarea></td>
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-procedimiento" class="inp-lname" required="" placeholder="Procedimeinto Realizado" name="procedimientot" onkeyup="mayus(this);"style='height: 85px;'/></textarea></td> 
                        </tr>
                    </tbody>
                    
                    
                    <thead>
                        <tr>
                            <td>Evaluación al paciente</td> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><textarea type="text" id="txt-evaluacion" class="inp-lname"required="" placeholder="Evaluación al paciente" name="evaluaciont" onkeyup="mayus(this);"style='height: 85px;'/></textarea></td>
                        </tr>
                    </tbody>
                    
                    
                    
                    
                </table > 
                <hr />
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px; margin-bottom: 30px'> 
                    <tbody>
                        <tr>
                            <td>
                                <div class="col-sm-4 col-xs well">
                                    <a href="#info1" class="inf"><h3>Agregar recomendaciones de terapia en casa</h3></a>
                                </div>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <div id="info1" class="oculto">
                                    <section>
                                        <div>
                                            <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                                                <thead >
                                                    <tr>                          
                                                        <th>Actividad</th>
                                                        <th>Indicación Médica</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <input  hidden type="text" id="txt-tabla-datos-recomendacion" name="txt-tabla-datos-recomendacion" class="inp-lname"/>
                                                        <td><div class="div-cont-lname"><input type="text" onkeyup="mayus(this);" id="txt-recomendacion" class="inp-lname" placeholder="Actividad a realizar" name="medicamento"/></div></td>
                                                        <td><div class="div-cont-name"><input type="text"onkeyup="mayus(this);" id="txt-rec-indicacion" class="inp-name" placeholder="Indicación Médica" name="indicaciones"/></div></td>
                                                        <td><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="button" id="btn-action-recomendacion" class="btn-accept" value="+"> 
                                                    </tr>
                                                </tbody>                        
                                            </table> 

                                            <div style="width: 80%; height: auto; margin-left: auto; margin-right: auto" >
                                                <div >
                                                    <table id="tablaRecomendacion" style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                                                        <thead>
                                                            <tr> 

                                                                <td>Nª</td>
                                                                <td>Actividades</td>
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
                <hr />
                
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px; margin-bottom: 30px'> 
                    <tbody>
                        <tr>
                            <td>
                                <div class="col-sm-4 col-xs well">
                                    <a href="#info2" class="inf"><h3>Agregar Receta Médica</h3></a>
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
                                                        <td><div class="div-cont-lname"><input type="text" onkeyup="mayus(this);" id="txt-medicamento" class="inp-lname" placeholder="Medicamento" name="medicamento"/></div></td>
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
                <hr />
               <br /> 
               <br /> 
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'> 
                    <tbody>              
                        <tr>
                            <td>
                                <input type="button" id="btn-actionc" class="btn-accept" value="Cancelar"/>
                            </td>       
                            <td>
                                <input type="submit" id="btn-actiong" class="btn-accept" value="Guardar"/>
                            </td>
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
    <script src="js/TerapiaFisicaFunciones.js" type="text/javascript"></script> 
    <script src="js/TF-AddRecomendaciones.js" type="text/javascript"></script>
    <script src="js/TF-AddReceta.js" type="text/javascript"></script>
    <script type="text/javascript">
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

            tecla_especial = false
            for (var i in especiales) {
                if (key == especiales[i]) {
                    tecla_especial = true;
                    break;
                }
            }

            if (letras.indexOf(tecla) == -1 && !tecla_especial)
                return false;
        }

        $(function () {

            $(":input[name = 'search' ]").keyup(function () {

                / * Cada vez que el usuario suelta la tecla, se borrará el último contenido del mensaje * /
                $("#list li").remove();
                var $val = $(this).val();
                var url = "${pageContext.request.contextPath}/searchservlet?content=" + $val;
                var args = {"time": new Date()};
                $.get(url, args, function (data) {

                    / * La respuesta es una matriz de objetos json * /
                    for (var i = 0; i < data.length; i++)
                        $("#list").append("<li><a>" + data[i].content + "</a></li>");
                }, "json");
            });
            $(":input[name = 'search' ]").keyup(function () {

                / * Cada vez que el usuario suelta la tecla, se borrará el último contenido del mensaje * /
                $("#list li").remove();
                var $val = $(this).val();
                var url = "${pageContext.request.contextPath}/searchservlet?content=" + $val;
                var args = {"time": new Date()};
                $.get(url, args, function (data) {

                    / * La respuesta es una matriz de objetos json * /
                    for (var i = 0; i < data.length; i++)
                        $("#list").append("<li><a>" + data[i].content + "</a></li>");
                }, "json");
            });
        })
        /*
        function mayus(e) {
            e.value = e.value.toUpperCase();
        }*/
        function verificarCedula(cedula) {
            if (typeof (cedula) == 'string' && cedula.length == 10 && /^\d+$/.test(cedula)) {
                var digitos = cedula.split('').map(Number);
                var codigo_provincia = digitos[0] * 10 + digitos[1];

                //if (codigo_provincia >= 1 && (codigo_provincia <= 24 || codigo_provincia == 30) && digitos[2] < 6) {

                if (codigo_provincia >= 1 && (codigo_provincia <= 24 || codigo_provincia == 30)) {
                    var digito_verificador = digitos.pop();

                    var digito_calculado = digitos.reduce(
                            function (valorPrevio, valorActual, indice) {
                                return valorPrevio - (valorActual * (2 - indice % 2)) % 9 - (valorActual == 9) * 9;
                            }, 1000) % 10;
                    return digito_calculado === digito_verificador;
                }
            }
            return false;
        }
    </script>
</html>
