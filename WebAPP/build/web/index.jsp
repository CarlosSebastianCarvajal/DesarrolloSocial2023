<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>

<head>
    <title>DIRECCION DE DESARROLLO SOCIAL </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="icon" type="img/logoblancod.ico" href="img/logoblancod.ico"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <link href="css/colores.css" rel="stylesheet" type="text/css"/>
    <link href="css/materialize.css" rel="stylesheet" type="text/css"/>
    <script src="js/materialize.js" type="text/javascript"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
    <form id="form1" action="LoginController"  autocomplete="off">
        <!--Div del fondo colorido-->
        <div id="fondocolors" style="background-color:black">
            <!--Div para el logotipo-->
            <div id="divlogo">
                <div id="logotipo" style="display: inline-block">
                    <img src="img/logo_quevedo.png" alt="Alternate Text"style="height:65px; width: 65px; margin:auto; text-align:center; margin-top:5px">
                    <p><strong style="color:#F5F0EE; font-size:32px; font-size: 120%" class="textgrueso">DIRECCION DE DESARROLLO SOCIAL</strong></p>
                </div>
            </div>

            <!--Div para el título y subtítulo-->
            <div id="divtitulo">
                <div id="divsubt" style="opacity: 0">
                </div>
                <!--Div de inicio de sesión-->
                <div class="divforlog">
                    <!--Panel blanco inicio de sesión-->
                    <div id="divlogin" style="display: inline-block">
                        <!--Títulos-->
                        <p class="textgrueso" style="padding-top:30px; text-align:center; width:100%; font-size:20px; color:#707070">INICIO DE SESIÓN</p>
                        <img src="img/users.gif" alt="" style="height:150px; width: 180px; margin:auto; text-align:center; margin-top:5px"/>

                        <!--Nombre de usuario-->
                        <div class="input-field col s6" style="margin-left:0px; margin-right:10px; margin-top:-1px; height:30px;">
                            <img alt="" src="img/icons8_male_user_30px.png" style="position:absolute; margin-left: 0px; margin-top:15px"/>
                            <input id="usuario" name="usuario" class="validate" type="text" style="width:240px; margin-left:40px; margin-top:2px">
                            <label for="UserName" style="width:270px; margin-left:78px;">
                                Nombre de usuario</label>
                        </div>
                        <!--Contraseña-->
                        <div class="input-field col s6" style="margin-left:0px; margin-right:10px; margin-top:55px; height:30px; top: 0px; left: 0px;">
                            <img alt="" src="img/icons8_lock_30px.png" style="position:absolute; margin-left: 0px; margin-top:15px"/>
                            <input id="clave" class="validate" type="password"  name="clave" style="width:240px; margin-left:40px; margin-top:2px">
                            <label for="clave" style="width:270px; margin-left:78px;">
                                Contraseña</label>
                        </div>

                        <!--Boton de acceso-->
                        <button name="btn1"  class="btnnew first" style=" justify-content: center; align-items: center; margin-left:0px; margin-bottom: 20px; margin-top:20px; width:50% ">INICIAR SESION</button>
                        <!--boton googl-->


                        <div style="position: absolute; width: 370px; margin-top:-10px; margin-left:3px;">
                            <p style="color:black; background-color:white; font-family:sans-serif; font-size:11px; text-align:center">

                                <span>

                                </span>
                            </p>
                            <p style="color:black; background-color:white; font-family:sans-serif; font-size:11px; text-align:center; margin-top:3px">
                                <a id="LinkButton1" class="waves-effect waves-light btn modal-trigger" href="cambioclaveLogin.jsp">
                                    <strong style="color:#007653; font-size:16px; font-size: 85%" class="textgrueso">Recuperar Contraseña</strong>
                                </a>
                                <br>
                                <a id="LinkButton1" class="waves-effect waves-light btn modal-trigger" href="AgregarGaleno.jsp">
                                    <strong style="color:#007653; font-size:16px; font-size: 85%" class="textgrueso">Agregar nuevo galeno</strong>
                                </a>
                            </p>
                        </div>
                       
                        <!--Final panel blanco inicio de sesión-->
                    </div>
                    <!--Final div inicio de sesión-->
                </div>
            </div>

            <div id="diviconos">
                <!--Párrafo con centrado vertical-->                                
                <p>
                    <img src="img/estruc.png" alt="Alternate Text" style="height:18px; width:18px; margin-left:-20px" />
                <center><strong style="color:#007653; font-size:32px; font-size: 190%" class="textgrueso">&nbsp&nbsp MÓDULOS PARA CADA DEPARTAMENTO</strong></center>
                </p>

                <div>
                    <img src="img/icons8_permanent_job_96px.png" alt="" style="display:block; margin:auto; text-align:center"/>
                    <p style="color:#007653; font-size:16px" class="textgrueso">DEPARTAMENTOS</p>
                    <p>Se proporcionara información diferente por cada departamento</p>
                </div>

                <div>
                    <img src="img/icons8_account_96px.png" alt="" style="display:block; margin:auto; text-align:center"/>
                    <p style="color:#007653; font-size:16px" class="textgrueso">Reportes</p>
                    <p>Mostrar informe de las actividades de acuerdo a cada departamento</p>
                </div>


                <div>

                    <img src="img/icons8_accounting_96px.png" alt="" style="display:block; margin:auto; text-align:center"/>
                    <p style="color:#007653; font-size:16px" class="textgrueso">Historial</p>
                    <p>Mostrar la información de las actividades de acuerdo a cada departamento</p>
                </div>


            </div>
        </div>
    </div>
    <!--REGISTRAR MODAL-->   
    <div id="modal1" class="modal">
        <div class="modal-content">
            <h4>cvbnmk,l</h4>
            <p>cvbnm,./</p>
        </div>
        <div class="modal-footer">
            <a href="#!" class=" btn modal-close ">Cerrar</a>
        </div>
    </div>
</div>
</form>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var elems = document.querySelectorAll('.modal');
        var instances = M.Modal.init(elems);
    });
</script>

</body>
</form>





