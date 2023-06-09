<%-- 
    Document   : Seguimiento_Ginecologia
    Created on : 08-jun-2023, 22:54:23
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
        <link href="css/gin_seguimiento.css" rel="stylesheet" type="text/css"/>
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
                            <th>Paciente</th>
                            <th>Discapacidad</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <div class="div-cont-ced" style='margin-top: -40px !important;'><input type="text" id="txt-cedi" class="inp-ced" placeholder="Numero de identificacion" name="cedula" onkeypress='return validaNumericos(event)' readonly="true"/></div> </td>
                            <td> <div class="div-cont-name"  ><input type="text" id="txt-namen" class="inp-name" placeholder="Nombres" name="Nombres" onkeypress="return soloLetras(event)"disabled="true" onkeyup="mayus(this);"/></div> </td>
                            <td> <div class="div-cont-name"><input type="text" id="txt-namef" class="inp-name" placeholder="Discapacidad" name="Discapacidad"disabled="true" disabled="true" onkeyup="mayus(this);"/></div> </td>
                            <input hidden type="text" id="txt-id" class="inp-lname" placeholder="txt-id" name="txtid"/>
                        </tr>
                    </tbody>
                    <thead>
                        <tr>
                            <td>Ayuda Social</td>
                            <td>Correo Electronico</td>
                            <td>Celular</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-ayudaeconomica" class="inp-lname" placeholder="Ayuda economica" name="Ayuda economica" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-tiposangre" class="inp-lname" placeholder="Correo Electronico" name="Correo Electronico" onkeypress="return soloLetras(event)"disabled="true"/></div></td>
                            <td> <div class="div-cont-edad"><input type="text" id="txt-cel" class="inp-edad" placeholder="Celular" name="Celular" onkeypress='return validaNumericos(event)'disabled="true"/></div>  </td>
                        </tr>
                    </tbody>
                    

                </table>
                <hr />
                
                <!-- Seccion de signos vitales -->
                <hr />
                <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                    <thead>
                        <tr>
                            <th>Presión arterial</th>
                            <th>Temperatura</th>
                            <th>Frecuencia Cardiaca</th>
                            <th>Saturación</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <div class="div-cont-ced" style='margin-top: -40px !important;'><input type="text" id="txt-pa" class="inp-ced" placeholder="Presion arterial" name="cedula" onkeypress='return validaNumericos(event)'/></div> </td>
                            <td> <div class="div-cont-name"  ><input type="text" id="txt-temp" class="inp-name" placeholder="Temperatura" name="Temperatura" onkeypress="return validaNumericos(event)" /></div> </td>
                            <td> <div class="div-cont-name"><input type="text" id="txt-fc" class="inp-name" placeholder="Frecuencia Cardiaca" name="Frecuencia cardiaca" onkeypress="return validaNumericos(event)"/></div> </td>
                            <td> <div class="div-cont-name"><input type="text" id="txt-sat" class="inp-name" placeholder="Saturación" name="Saturación" onkeypress="return validaNumericos(event)"/></div> </td>
                            <input hidden type="text" id="txt-id" class="inp-lname" placeholder="txt-id" name="txtid"/>
                        </tr>
                    </tbody>
                    <thead>
                        <tr>
                            <td>Peso</td>
                            <td>Estatura</td>
                            <td>IMC</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div class="div-cont-lname"><input type="text" id="txt-peso" class="inp-lname" placeholder="Peso" name="Ayuda economica" onkeypress="return validaNumericos(event)"/></div></td>
                            <td><div class="div-cont-lname"><input type="text" id="txt-estatura" class="inp-lname" placeholder="Estatura" name="Correo Electronico" onkeypress="return validaNumericos(event)"/></div></td>
                            <td> <div class="div-cont-edad"><input type="text" id="txt-imc" class="inp-edad" placeholder="Indice de masa corporal" name="Celular" onkeypress='return validaNumericos(event)'/></div>  </td>
                        </tr>
                    </tbody>
                    

                </table>
                <hr />

                <table style='width: 100%; text-align: center; margin-top: 30px;'>
                    <thead>
                        <tr>
                            <th>NOTAS DE EVOLUCIÓN</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><div ><textarea type="text" id="txt-ne" class="inp-lname" required=""placeholder="Notas de evolución" name="notasE" style='height: 85px;'/></textarea> </div></td> 
                        </tr>
                    </tbody>
                </table > 
                <br>
                
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
    <script src="js/GinecologiaFunciones.js" type="text/javascript"></script>
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