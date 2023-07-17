/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var divv = document.getElementById('divv');
var porc_div = 2850;

$(document).ready(function () {
    
    $(".oculto").hide();              
    $(".inf").click(function(){
          var nodo = $(this).attr("href");  
          
          if ($(nodo).is(":visible")){
               $(nodo).hide();
               porc_div = 2850;
               divv.style.marginTop= porc_div + "px";
               return false;
          }else{
            $(".oculto").hide("slow");                             
            $(nodo).fadeToggle("fast");
            porc_div = 2980;
            divv.style.marginTop= porc_div + "px";
            return false;
          }
    });
    
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
                $("#txt-cedula").val(data.paciente_dni);
                $("#txt-nombres").val(nombres);
                $("#txt-apellidos").val(apellidos);
                $("#txt-estadoc").val(data.paciente_estadocivil);
                $("#txt-fn").val(data.paciente_fechanacimiento);
                $("#txt-edad").val(calcularEdad(data.paciente_fechanacimiento));
                $("#txt-telefono").val(data.paciente_telefono);
                $("#txt-domicilio").val(data.paciente_direccion);
               
                $("#txt-cedula1").val(data.paciente_dni);
                $("#txt-nombres1").val(nombres);
                $("#txt-apellidos1").val(apellidos);       
                $("#txt-estadoc1").val(data.paciente_estadocivil);
                $("#txt-domicilio1").val(data.paciente_direccion);
                $("#txt-localidad1").val(data.paciente_canton);
                $("#txt-telefono1").val(data.paciente_telefono);
                $("#txt-fn1").val(data.paciente_fechanacimiento);
                $("#txt-edad1").val(calcularEdad(data.paciente_fechanacimiento));
                
                $("#txt-etnia1").val(data.paciente_etnia);
                $("#txt-estudios1").val(data.paciente_nivel_estudio);
                $("#txt-años-nivel1").val(data.paciente_anios_nivel);
                
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
                    
                    $("#txt-pa-sistolica").val("");
                    $("#txt-pa-diastolica").val("");
                    $("#txt-Temperatura").val("");
                    $("#txt-FrecuenciaC").val("");
                    $("#txt-saturacion").val("");
                    $("#txt-peso").val("");
                    $("#txt-talla").val("");
                    $("#txt-imc").val("");
                    
                    $("#txt-ca-pa").val("");
                    $("#txt-ca-pad").val("");
                    $("#txt-ca-peso").val("");
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
                    
                    $("#txt-ca-pa").val(data.pa_sistolica);
                    $("#txt-ca-pad").val(data.pa_diastolica);
                    $("#txt-ca-peso").val(data.peso);
                }
            }
        });
    };
});

$(function () {
    $('#btn-actionb').click(function (e) {
        buscador();
        console.log('aaaa');
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
                $("#txt-fn").val(data.paciente_fechanacimiento);
                $("#txt-edad").val(calcularEdad(data.paciente_fechanacimiento));
                $("#txt-telefono").val(data.paciente_telefono);
                $("#txt-domicilio").val(data.paciente_direccion);
                
                $("#txt-cedula1").val(data.paciente_dni);
                $("#txt-nombres1").val(nombres);
                $("#txt-apellidos1").val(apellidos);     
                $("#txt-estadoc1").val(data.paciente_estadocivil);
                $("#txt-domicilio1").val(data.paciente_direccion);
                $("#txt-localidad1").val(data.paciente_canton);
                $("#txt-telefono1").val(data.paciente_telefono);
                $("#txt-fn1").val(data.paciente_fechanacimiento);
                $("#txt-edad1").val(calcularEdad(data.paciente_fechanacimiento));
                
                $("#txt-etnia1").val(data.paciente_etnia);
                $("#txt-estudios1").val(data.paciente_nivel_estudio);
                $("#txt-años-nivel1").val(data.paciente_anios_nivel);
                
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
                    
                    $("#txt-pa-sistolica").val("");
                    $("#txt-pa-diastolica").val("");
                    $("#txt-Temperatura").val("");
                    $("#txt-FrecuenciaC").val("");
                    $("#txt-saturacion").val("");
                    $("#txt-peso").val("");
                    $("#txt-talla").val("");
                    $("#txt-imc").val("");
                    
                    $("#txt-ca-pa").val("");
                    $("#txt-ca-pad").val("");
                    $("#txt-ca-peso").val("");
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
                    
                    $("#txt-ca-pa").val(data.pa_sistolica);
                    $("#txt-ca-pad").val(data.pa_diastolica);
                    $("#txt-ca-peso").val(data.peso);
                }
            }
        });
    };
});

function isEmptyObject(obj) {
    for (var property in obj) {
        if (obj.hasOwnProperty(property)) {
            return false;
        }
    }
    return true;
}

function calcularEdad(fecha) {
    var hoy = new Date();
    var cumpleanos = new Date(fecha);
    var edad = hoy.getFullYear() - cumpleanos.getFullYear();
    var m = hoy.getMonth() - cumpleanos.getMonth();

    if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate())) {
        edad--;
    }
    rangoEdad(edad);
    return edad;
}

function rangoEdad(edad){
    if(edad < 15 || edad > 35){
        $("#txt-edad-rango1").val('SI');
    }else{
        $("#txt-edad-rango1").val('NO');
    }
}

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

