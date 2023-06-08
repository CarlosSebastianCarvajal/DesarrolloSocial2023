<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/terapiaocupacional.css" rel="stylesheet" type="text/css"/>  
        <title>WebApp - Terapia Ocupacional</title>
    </head>
    <body>
        <header>
            <nav class="nav-tp">
                <a href="cerrar.jsp" style="color:white" >Cerrar sesión</a>
            </nav>
        </header>      

        <div class="div-head-tittle"><h2></h2></div>


        <form>
            <section class="sec-main">
                <div class="div-cont-main">
                    <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                        <thead >
                            <tr>
                                <th>Numero de identificacion</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-name"  ><input type="text" id="txt-ced" class="inp-ced" placeholder="Numero de identificacion"/></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Nombre"/></div></td>
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Apellido"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Genero</th>
                                <th>Edad</th>
                                <th>Patologia</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                            <option>Genero</option>
                                            <option>Masculino</option><option>Femenino</option></select></div></td>
                                <td><div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Edad"/></div></td>
                                <td><div class="div-cont-cod"><input type="text" id="txt-cod" class="inp-cod" placeholder="Patologia"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Frecuencia</th>
                                <th>Costo</th>
                                <th>Ayuda Social</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Frecuencia"/></div></td>
                                <td><div class="div-cont-cod"><input type="number" id="txt-cod" class="inp-cod" placeholder="Costo"/></div></td>
                                <td><div class="div-cont-cod"><input type="text" id="txt-cod" class="inp-cod" placeholder="Ayuda Social"/></div></td>             
                            </tr> 
                        </tbody>
                        <thead >
                            <tr>                                
                                <th>Logros Alcanzados</th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td><div class="div-observation"><textarea class="txt-ar-ob" placeholder="Logros Alcanzados"></textarea></div></td>
                                <td><div class="div-cont-edad"><input type="button" id="btn-action" class="btn-accept" value="Guardar"/></div></td>
                                <td><div class="div-cont-edad"><input type="button" id="btn-action" class="btn-accept" value="Cancelar"/></div></td>   
                            </tr>
                        </tbody> 
                    </table>  

                </div> 
            </section>
        </form>

    </body> 
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/AltoRestante.js" type="text/javascript"></script> 
</html>
