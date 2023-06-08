<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Recaudacion.css" rel="stylesheet" type="text/css"/>  
        <title>WebApp - Recaudacion</title>
    </head>
    <body>
        <header>
            <nav class="nav-tp"></nav>
        </header>      

        <div class="div-head-tittle"><h2></h2></div>
        <section class="sec-main">
            <form>
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="text" id="txt-ced" class="inp-ced" placeholder="Cédula"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Nombre"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Apellido"/></div>
                    </div>
                    <div class="div-row-two">
                        <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Edad"/></div>
                        <div class="div-cont-cod"><input type="text" id="txt-cod" class="inp-cod" placeholder="Direccion de residencia"/></div>
                        <div class="div-cont-cod"></div>
                    </div>
                    <div class="div-row-three">
                         <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Numero de comprobante"/></div>
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                <option>Estado</option>
                                <option>No cancelado</option><option>Cancelado</option><option>Ayuda social</option>
                                </select></div>
                        <div class="div-cont-sel-dep-to-transf"></div>
                    </div>
                    <div class="div-row-four">
                        <div class="div-observation"><textarea class="txt-ar-ob" placeholder="Observación"></textarea><input type="button" id="btn-action" class="btn-accept" value="Guardar"/></div>
                    </div>
                </div>
            </form>
        </section>


    </body> 
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/AltoRestante.js" type="text/javascript"></script>    
    <script src="js/Opciones.js" type="text/javascript"></script> 
</html>
