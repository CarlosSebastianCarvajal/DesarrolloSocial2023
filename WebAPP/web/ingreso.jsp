
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" > 
        <link href="css/Ingresos.css" rel="stylesheet" type="text/css"/>
        <title>WebApp - Ingresos</title>
    </head>
    <body onload="cargarProvincias()">
        <%
            HttpSession s = request.getSession();
            String usuario=(String)s.getAttribute("galeno_user11");
            if(usuario==null)
            {
                response.sendRedirect("index.jsp");
            }
            //variables de session
        %>
        <header id="header" style=" background: #007653 !important; margin-top:-40px">
            
                <a class="logo" href="Principal.jsp" id="ulUserData"> 
            </a>
             <nav class="nav-tp"></nav>
            
        </header>     
        <div class="div-head-tittle" style="margin-top:-18px"><h2></h2></div>


        <form class="form1" action="AddPaciente" autocomplete="off" style="margin-top:15px">
            <section class="sec-main">
                <div class="div-cont-main">
                    <input hidden type="text" id="txt-idx" class="inp-ced"  name="idx" value="<%=request.getParameter("idx")%>"/>
                    
                    <table style='width: 100%; text-align: center; margin-left: 20px; margin-top: 30px'>
                        <thead >
                            <tr>
                                <th>Tipo de identificacion</th>
                                <th>Numero de identificacion</th>
                                <th>Primer Nombre</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-sel-dep-to-transf" ><select class="sel-dep-to-transf" name="TipoIden">
                                            <option>Cedula</option>
                                            <option>Pasaporte</option></select></div></td>
                                <td><div style='margin-top: -40px !important;'class="div-cont-ced"><input type="text" id="txt-ced" minlength="10" maxlength="10" class="inp-ced" placeholder="Numero de identificacion" name="Identificacion" required="" onkeypress='return validaNumericos(event)'/></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Nombre" name="PrimerNombre" required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Segundo Nombre</th>
                                <th>Primer Apellido</th>
                                <th>Segundo Apellido</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Nombre" name="SegundoNombre"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-name"><input type="text" id="txt-name" class="inp-name" placeholder="Primer Apellido" name="PrimerApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Segundo Apellido" name="SegundoApellido"required=""  onkeypress="return soloLetras(event)" onkeyup="mayus(this);"/></div></td>
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Fecha de Nacimiento</th> 
                                <th>Telefono Convencional</th>
                                <th>Celular</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="div-cont-lname"><input type="date" id="txt-lname" class="inp-lname" placeholder="Fecha de nacimiento"required=""  name="Fechadenacimiento"/></div></td>
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Telefono Convencional" name="convencional" value=""  onkeypress='return validaNumericos(event)'/></div></td>
                                <td><div class="div-cont-edad"><input type="text" id="txt-edad" class="inp-edad" placeholder="Celular" name="celular" value="" onkeypress='return validaNumericos(event)'/></div> </td>
                            </tr> 
                        </tbody>
                        <thead >
                            <tr>                                
                                <th>Provincia</th>
                                <th>Canton</th>
                                <th>Parroquia</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td><div class="div-cont-sel-dep-to-transf" ><select class="sel-dep-to-transf"required="" id="Provincia" name="Provincia" onchange="cargarPueblos();">
                                            
                                        </select></div></td> 
                                <td><div class="div-cont-sel-dep-to-transf" ><select class="sel-dep-to-transf"required="" name="canton" id="canton">
                                           
                                        </select></div></td> 
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Parroquia" name="parroquia" onkeyup="mayus(this);"/></div></td> 
                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Direccion</th>                               
                                <th>Genero</th>
                                <th>Estado Civil</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Direccion"  name="Direccion" onkeyup="mayus(this);"/></div></td> 
                                <td><div class="div-cont-sel-dep-to-transf"  ><select class="sel-dep-to-transf" name="genero">   
                                            <option>Desconocido</option>
                                            <option>Masculino</option>
                                            <option>Femenino</option></select></div></td> 
                                <td><div class="div-cont-sel-dep-to-transf"  ><select class="sel-dep-to-transf"required=""  name="estadoCivil">
                                            <option>Desconocido</option>
                                            <option>Soltero</option>
                                            <option>Casado</option>
                                            <option>Union libre</option>
                                            <option>Viudo</option>
                                            <option>Divorciado</option>
                                        </select></div></td>            
                            </tr>
                        </tbody>
                        <thead >
                            <tr>                                
                                <th>Exonerado ?</th>
                                <th>Nacionalidad</th>
                                <th>Discapacidad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td><div class="div-cont-sel-dep-to-transf"  ><select class="sel-dep-to-transf"required=""  name="Ayuda">
                                            <option>No</option>
                                            <option>Si</option>
                                        </select></div></td> 
                                <td><div class="div-cont-lname"><input type="text" id="nacionalidad" class="inp-lname" placeholder="nacionalidad"required="" value="Ecuatoriana" name="nacionalidad" onkeyup="mayus(this);"/></div></td>
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Discapacidad" value="Ninguna"   name="discapacidad" onkeyup="mayus(this);"/></div></td>

                            </tr>
                        </tbody>
                        <thead >
                            <tr>                                
                                <th>Etnia</th>
                                <th>Nivel de estudios</th>
                                <th>Años en el nivel de estudio</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td>
                                    <div class="div-cont-sel-dep-to-transf"  >
                                        <select class="sel-dep-to-transf"required=""  name="paciente_etnia">
                                            <option>Mestiza</option>
                                            <option>Blanca</option>
                                            <option>Indigena</option>
                                            <option>Negra</option>
                                            <option>Otra</option>
                                        </select>
                                    </div>
                                </td> 
                                <td>
                                    <div class="div-cont-sel-dep-to-transf"  >
                                        <select class="sel-dep-to-transf"required=""  name="paciente_nivel_estudio">
                                            <option>Ninguno</option>
                                            <option>Basico</option>
                                            <option>Bachillerato</option>
                                            <option>Superior</option>
                                        </select>
                                    </div>
                                </td>
                                <td><div style='margin-top: -40px !important;'class="div-cont-ced"><input type="text" id="txt-ced" minlength="1" maxlength="2" class="inp-ced" placeholder="Años en el nivel de estudio" name="paciente_anios_nivel" value="0" onkeypress='return validaNumericos(event)'/></div></td>

                            </tr>
                        </tbody>
                        <thead >
                            <tr>
                                <th>Tipo de sangre</th>
                                <th>Correo Electronico</th> 
                            </tr>
                        </thead>
                        <tbody>
                            <tr> 
                                <td><div class="div-cont-lname"><input type="text" id="txt-lname" class="inp-lname" placeholder="Tipo de sangre" name="tipoSangre" onkeyup="mayus(this);"/> </div></td> 
                                <td><div class="div-cont-lname"><input type="email" id="txt-lname" class="inp-lname" placeholder="correo electronico" value=""  name="email"/> </div></td> 
                                <td><div style='margin-top: -20px !important;'class="div-cont-lname"><input type="submit" id="btn-action" class="btn-accept" value="Guardar"/> </div></td>
                            </tr>
                        </tbody>
                    </table> 
                </div>
            </section>
        </form> 
        <script src="js/pais.js"></script>
        <script>
                                    
                                    
                                    function cargarProvincias() {
                                        var array = ["Azuay", "Bolivar", "Cañar", "Carchi", "Chimborazo", "Cotopaxi", "El Oro", "Esmeraldas", "Galapagos", "Guayas", "Imbabura", "Loja", "Los Rios",
                                            "Manabi", "Morona Santiago", "Napo", "Orellana", "Pastaza", "Pichincha", "Santa Elena", "Santo Domingo", "Sucumbios", "Tungurahua", "Zamora Chinchipe"];
                                        array.sort();
                                        addOptions("Provincia", array);
                                        
                                        cargarPueblos();
                                        
                                    }

                                    function addOptions(domElement, array) {
                                        var selector = document.getElementsByName(domElement)[0];
                                        for (Provincia in array) {
                                            var opcion = document.createElement("option");
                                            opcion.text = array[Provincia];
                                            opcion.value = array[Provincia].toLowerCase()
                                            selector.add(opcion);
                                            selector.selectedIndex = 12;
                                        }
                                    }
                                    function cargarPueblos() {
                                        // Objeto de provincias con pueblos
                                        var listaPueblos = {
                                            azuay: ["Cuenca", "camilo ponce Enriquez", "Chordeleg", "El pan", "Giron", "Guachapala", "Gualaceo", "Nabon", "Oña", "Paute", "Pucará", "San Fernando", "Santa Isabel", "Sevilla de oro", "Sigsig"],
                                            bolivar: ["Guaranda", "Caluma", "Chillanes", "Chimbo", "Echeandía", "Las naves", "San Miguel"],
                                            cañar: ["Azogues", "Biblian", "Cañar", "Deleg", "El Tambo", "La Troncal", "Suscal"],
                                            carchi: ["Tulcan", " Bolivar", "Espejo", "Mira", "Montufar", "San Pedro de Huaca"],
                                            chimborazo: ["Riobamba", "Alausi", "Chambo", "Chunchi", "Colta", "Cumanda", "Guamote", "Guano", "Pallatanga", "Penipe"],
                                            cotopaxi: ["Latacunga", "La Mana", "Pangua", "Pujili", "Salcedo", "Saquisili", "Sigchos"],
                                            oro: ["Machala", "Arenillas", "Atahualpa", "Balsas", "Chilla", "El Guabo", "Huaquillas", "Las Lajas", "Marcabeli", "Pasaje", "Piñas", "Portovelo", "Santa Rosa", "Zaruma"],
                                            esmeraldas: ["Esmeraldas", "Atacames", "Eloy Alfaro", "Muisne", "Quininde", "Rioverde", "San Lorenzo"],
                                            galapagos: ["San Cristobal", "Isabela", "Santa Cruz"],
                                            guayas: ["Guayaquil", "Alfredo Baquerizo Moreno", "Balao", "Balzar", "Colimes", "Daule", "Duran", "El Empalme", "El Triunfo", "General Antonio Elizalde", "Isidro Ayora", "Lomas de Sargentillo", "Marcelino Maridueña", "Milagro", "Naranjal", "Naranjito", "Nobol", "Palestina", "Pedro Carbo", "Playas", "Salitre", "Samborondon", "Santa Lucia", "Simon Bolivar", "Yaguachi"],
                                            imbabura: ["Ibarra", " Antonio Ante", "Cotacachi", " Otavalo", "Pimampiro", "San Miguel de Urcuqui"],
                                            loja: ["Loja", "Calvas", "Catamayo", "Celica", "Chaguarpamba", "Espindola", "Gonzanama", "Macara", "Olmedo", "Paltas", "Pindal", "Puyango", "Quilanga", "Saraguro", "Sozoranga", "Zapotillo"],
                                            losrios: ["Babahoyo", "Baba", "Buena Fe", "Mocache", "Montalvo", "Palenque", "Puebloviejo", "Quevedo", " Quinsaloma", "Urdaneta", "Valencia", "Ventanas", "Vinces"],
                                            manabi: ["Portoviejo", "24 de Mayo", "Bolívar", "Chone", "El Carmen", " Flavio Alfaro", "Jama", "Jaramijó", "Jipijapa", "Junín", "Manta", "Montecristi", "Olmedo", "Paján", "Pedernales", "Pichincha", "Puerto López", " Rocafuerte", "San Vicente", "Santa Ana", "Sucre", " Tosagua"],
                                            moronasantiago: ["Morona", " Gualaquiza", "Huamboya", "Limón Indanza", "Logroño", "Pablo Sexto", "Palora", "San Juan Bosco", "Santiago de Méndez", "Sucúa", "Taisha", "Tiwintza"],
                                            napo: ["Tena", "Archidona", "Carlos Julio Arosemena Tola", "El Chaco", "Quijos"],
                                            orellana: ["Francisco de Orellana", "Aguarico", "La Joya de los Sachas", "Loreto"],
                                            pastaza: ["Pastaza", "Arajuno", "Mera", "Santa Clara"],
                                            pichincha: [" Quito", "Cayambe", "Mejía", "Pedro Moncayo", " Pedro Vicente Maldonado", "Puerto Quito", " Rumiñahui", "San Miguel de los Bancos"],
                                            santaelena: ["Santa Elena", "La Libertad", "Salinas"],
                                            santodomingo: ["Santo Domingo", "La Concordia"],
                                            sucumbios: ["Lago Agrio", "Cascales", "Cuyabeno", "Gonzalo Pizarro", "Putumayo", "Shushufindi", "Sucumbíos"],
                                            tungurahua: ["Ambato", " Baños", "Cevallos", "Mocha", "Patate", "Pelileo", "Quero", "Santiago de Píllaro", "Tisaleo"],
                                            zamorachinchipe: ["Zamora", "Centinela del Cóndor", "Chinchipe", "El Pangui", "Nangaritza", "Palanda", " Paquisha", "Yacuambi", "Yantzaza"]

                                        }

                                        var provincias = document.getElementById('Provincia');
                                        var pueblos = document.getElementById('canton');
                                        var provinciaSeleccionada = provincias.value;
                                        provinciaSeleccionada=provinciaSeleccionada.replace(' ','');

                                        // Se limpian los pueblos
                                        pueblos.innerHTML = '';

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
                                            if(provincias.selectedIndex === 12) {
                                                pueblos.selectedIndex = 8;
                                            }
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
                                    /*
                                    function mayus(e) {
                                        e.value = e.value.toUpperCase();
                                    }*/
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
        </script>
    </body>
    <script src="js/pais.js"></script>
    <script src="js/JQuery.js" type="text/javascript"></script>  
</html>
