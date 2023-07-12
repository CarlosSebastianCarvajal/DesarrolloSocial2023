/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



var divv = document.getElementById('divv');
var porc_div = 140;

$(document).ready(function () {
    
    $(".oculto").hide();              
    $(".inf").click(function(){
          var nodo = $(this).attr("href");  
          
          if ($(nodo).is(":visible")){
               $(nodo).hide();
               porc_div = 140;
               divv.style.marginTop= porc_div + "px";
               return false;
          }else{
            $(".oculto").hide("slow");                             
            $(nodo).fadeToggle("fast");
            porc_div = 270;
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
                $("#txt-edad").val('aqui va la edad');
                $("#txt-telefono").val(data.paciente_telefono);
                $("#txt-domicilio").val(data.paciente_direccion);
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
                
            }

        });
    };
});

function calcularEdad(fecha) {
    var hoy = new Date();
    var cumpleanos = new Date(fecha);
    var edad = hoy.getFullYear() - cumpleanos.getFullYear();
    var m = hoy.getMonth() - cumpleanos.getMonth();

    if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate())) {
        edad--;
    }

    return edad;
}
