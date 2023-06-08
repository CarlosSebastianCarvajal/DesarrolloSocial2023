<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/TransPaciente.css" rel="stylesheet" type="text/css"/>  
        <title>WebApp - Transferir Paciente</title>
    </head>
    <body> 
        <header>
            <nav class="nav-tp"></nav>
        </header>      

        <div class="div-head-tittle"><h2></h2></div>
        
            <form>
                <section class="sec-main">
                <div class="div-cont-main">
                    <div class="div-row-one">
                        <div class="div-cont-ced"><input type="text" id="txt-ced" class="inp-ced" placeholder="Numero de Identificacion"/></div>
                        <div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Nombre"/></div>
                        <div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Apellido"/></div>
                    </div>
                    <div class="div-row-two">
                        <div class="div-cont-edad"><input type="number" id="txt-edad" class="inp-edad" placeholder="Edad"/></div>
                        <div class="div-cont-cod"><input type="text" id="txt-cod" class="inp-cod" placeholder="Código"/></div>
                        <div class="div-cont-cod"></div>
                    </div>
                    <div class="div-row-three">
                        <div class="div-cont-sel-dep-transf"><select class="sel-dep-transf"><option>Seleccione departamento</option></select></div>
                        <div class="div-cont-sel-dep-to-transf"><select class="sel-dep-to-transf">
                                <option>Seleccione el departamento</option>
                                <option>D1</option><option>D2</option><option>D3</option>
                                <option>D4</option><option>D5</option><option>D6</option></select></div>
                        <div class="div-cont-sel-dep-to-transf"></div>
                    </div>
                    <div class="div-row-four">
                        <div class="div-observation"><textarea class="txt-ar-ob" placeholder="Observación"></textarea><input type="button" id="btn-action" class="btn-accept" value="Transferir"/></div>
                    </div>
                </div>
           
        </section>
 </form>
    </body> 
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/AltoRestante.js" type="text/javascript"></script> 
</html>
