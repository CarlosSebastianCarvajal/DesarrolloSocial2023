/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var divv = document.getElementById('divv');
var porc_div = 40;

$(document).ready(function () {
    
    $(".oculto").hide();              
    $(".inf").click(function(){
          var nodo = $(this).attr("href");  
          
          if ($(nodo).is(":visible")){
               $(nodo).hide();
               porc_div = 40;
               divv.style.marginTop= porc_div + "%";
               return false;
          }else{
            $(".oculto").hide("slow");                             
            $(nodo).fadeToggle("fast");
            porc_div = 60;
            divv.style.marginTop= porc_div + "%";
            return false;
          }
    });

    $("#btn-actionc").click(function () {
        window.location.href = "./MenuGinecologia.jsp";
        //window.location.href = "./RecetaMedica.jsp?user=" + getQueryVariableRe();
    });
    usermedico();
    
    
});

function getQueryVariableRe() {
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        console.log(pair[1].toString());
        return pair[1].toString();
    }

}

function isEmptyObject(obj) {
    for (var property in obj) {
        if (obj.hasOwnProperty(property)) {
            return false;
        }
    }
    return true;
}

$(function () {
    $('#btn-actionbusc').click(function (e) {
        buscador();
    });
    const buscador = () => {

        var dato = {
            apellido: document.getElementById("txt-lnamesega").value,
            nombre: document.getElementById("txt-namea").value
        };
        var nombres = ''; var apellidos = '';
        $.ajax({
            cache: false,
            type: "POST",
            url: "Controllerbuscarnew",
            data: dato,
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                nombres = data.paciente_primer_segundo_nombre; apellidos = data.paciente_primer_segundo_apellido;
                $("#txt-id").val(data.pacienteid);
                $("#txt-cedi").val(data.paciente_dni);
                $("#txt-namen").val( nombres + ' ' + apellidos);
                $("#txt-namef").val(data.paciente_grupo);
                $("#txt-cel").val(data.paciente_telefono);
                $("#txt-ayudaeconomica").val(data.paciente_ayudasocial);
                $("#txt-tiposangre").val(data.paciente_correoelectronico);
                signos(data.pacienteid);
            }
        });
    };
    const signos = (paciente_id) => {

        $.ajax({
            cache: false,
            type: "POST",
            url: "BuscadorSignos",
            data: {paciente_id: paciente_id},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                if(isEmptyObject(data)){
                    //alert('no hay nada');
                    $("#txt-idsv").val('no');
                    $("#signos-res").html('No se han tomado signos vitales del paciente');
                    
                    
                }else{
                    $("#signos-res").html('Signos vitales tomados hoy a las '+ data.hora);
                    $("#txt-idsv").val(data.signos_id);
                    $("#txt-pa-sistolica").val(data.pa_sistolica);
                    $("#txt-pa-diastolica").val(data.pa_diastolica);
                    $("#txt-Temperatura").val(data.temperatura);
                    $("#txt-FrecuenciaC").val(data.frecuencia_cardiaca);
                    $("#txt-saturacion").val(data.saturacion);
                    $("#txt-peso").val(data.peso);
                    $("#txt-talla").val(data.estatura);
                    $("#txt-imc").val(data.imc);
                }
            }
        });
    };
});

$(function () {
    $('#btn-actionb').click(function (e) {
        buscador();
        console.log('sss');
    });
    const buscador = () => {

        var cedula = document.getElementById("txt-cede").value;
        var nombres = ''; var apellidos = '';
        $.ajax({
            cache: false,
            type: "POST",
            url: "Controllerbuscarpaciente",
            data: {cedula: cedula},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                nombres = data.paciente_primer_segundo_nombre; apellidos = data.paciente_primer_segundo_apellido;
                $("#txt-id").val(data.pacienteid);
                $("#txt-cedi").val(data.paciente_dni);
                $("#txt-namen").val( nombres + ' ' + apellidos);
                $("#txt-namef").val(data.paciente_grupo);
                $("#txt-cel").val(data.paciente_telefono);
                $("#txt-ayudaeconomica").val(data.paciente_ayudasocial);
                $("#txt-tiposangre").val(data.paciente_correoelectronico);
                signos(data.pacienteid);
            }

        });
    };
    const signos = (paciente_id) => {

        $.ajax({
            cache: false,
            type: "POST",
            url: "BuscadorSignos",
            data: {paciente_id: paciente_id},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                if(isEmptyObject(data)){
                    //alert('no hay nada');
                    $("#txt-idsv").val('no');
                    $("#signos-res").html('No se han tomado signos vitales del paciente');
                }else{
                    $("#signos-res").html('Signos vitales tomados hoy a las '+ data.hora);
                    $("#txt-idsv").val(data.signos_id);
                    $("#txt-pa-sistolica").val(data.pa_sistolica);
                    $("#txt-pa-diastolica").val(data.pa_diastolica);
                    $("#txt-Temperatura").val(data.temperatura);
                    $("#txt-FrecuenciaC").val(data.frecuencia_cardiaca);
                    $("#txt-saturacion").val(data.saturacion);
                    $("#txt-peso").val(data.peso);
                    $("#txt-talla").val(data.estatura);
                    $("#txt-imc").val(data.imc);
                }
            }
        });
    };
});

//Busquedas para la pagina HistoriaClinica.jsp
/*
$(function () {
    $('#btn-action-busc-nom-hcg').click(function (e) {
        buscador();
    });
    const buscador = () => {

        var dato = {
            apellido: document.getElementById("txt-lnamesega").value,
            nombre: document.getElementById("txt-namea").value
        };
        var nombres = ''; var apellidos = '';
        $.ajax({
            cache: false,
            type: "POST",
            url: "Controllerbuscarnew",
            data: dato,
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                nombres = data.paciente_primer_segundo_nombre; apellidos = data.paciente_primer_segundo_apellido;
                $("#txt-id").val(data.pacienteid);
                $("#txt-cedula").val(data.paciente_dni);
                $("#txt-nombres").val(nombres);
                $("#txt-apellidos").val(apellidos);
                $("#txt-estadoc").val(data.paciente_estadocivil);
                $("#txt-fn").val(data.paciente_grupo);
                $("#txt-edad").val('aqui va la edad');
                $("#txt-telefono").val(data.paciente_telefono);
                $("#txt-domicilio").val(data.paciente_telefono);
            }
        });
    };
});

$(function () {
    $('#btn-action-busc-ced-hcg').click(function (e) {
        buscador();
    });
    const buscador = () => {

        var cedula = document.getElementById("txt-cede").value;
        var nombres = ''; var apellidos = '';
        $.ajax({
            cache: false,
            type: "POST",
            url: "Controllerbuscarpaciente",
            data: {cedula: cedula},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                nombres = data.paciente_primer_segundo_nombre; apellidos = data.paciente_primer_segundo_apellido;
                $("#txt-id").val(data.pacienteid);
                $("#txt-cedula").val(data.paciente_dni);
                $("#txt-nombres").val(nombres);
                $("#txt-apellidos").val(apellidos);
                $("#txt-estadoc").val(data.paciente_estadocivil);
                $("#txt-fn").val(data.paciente_grupo);
                $("#txt-edad").val('aqui va la edad');
                $("#txt-telefono").val(data.paciente_telefono);
                $("#txt-domicilio").val(data.paciente_telefono);
            }

        });
    };
});
*/

//Datos del paciente
var ideusuario;
var idemedico;
function buscador1() {

    var cedu = document.getElementById("txt-ced").value;

    $.ajax({
        cache: false,
        type: "POST",
        url: "./NewServle",
        data: {cedula: cedu, op: "1"},
        dataType: 'json',
        error: function (request, status, error)
        {
            console.log(request, status, error);
        },
        success: function (data)
        {
            console.log(data.nombrescompleto.toString());
            var cadena = data.nombrescompleto.split("-");
            document.getElementById("txt-namep").value = cadena[0];
            ideusuario = cadena[1];
        }

    });


}
function validaNumericosA(event)
{
    if (event.charCode >= 48 && event.charCode <= 57)
    {
        return true;
    }
    if (event.charCode === 13)
    {

        buscador1();
    }
    return false;
}
//datos medico
function usermedico() {

    var user = getQueryVariableRe();
    $.ajax({
        cache: false,
        type: "POST",
        url: "./NewServle",
        data: {user: user, op: "2"},
        dataType: 'json',
        error: function (request, status, error)
        {
            console.log(request, status, error);
        },
        success: function (data)
        {
            console.log(data.nombresmedico.toString());
            // $("#txt-namep").val(data.nombrescompletos);
            var cadena = data.nombresmedico.split("-");
            document.getElementById("txt-nameme").value = cadena[0];
            idemedico = cadena[1];

        }

    });
}
$("#btn-addReceta").click(function (e) {
    e.preventDefault();
    var table = document.getElementById('tabla');
    var rowLength = table.rows.length;
    var jsonAll = [];
    for (var i = 1; i < rowLength; i += 1) {
        var row = table.rows[i];
        var jsoncell = {
            medicamento: row.cells[1].innerHTML,
            indicaciones: row.cells[2].innerHTML
        };
        jsonAll[i - 1] = jsoncell;
    }
    $.ajax({
        cache: false,
        url: "./NewServle",
        data: {galenoid: idemedico, pacienteid: ideusuario, dt: JSON.stringify(jsonAll).toString(), op: "3"},
        type: "POST",
        error: function (request, status, error)
        {
            alert(request, status, error);
        },
        success: function (data)
        {
            console.log(data);
            limpiar1();
        }
    });
});


function limpiar1()
{
    document.getElementById("tabla").innerHTML = "";
}


