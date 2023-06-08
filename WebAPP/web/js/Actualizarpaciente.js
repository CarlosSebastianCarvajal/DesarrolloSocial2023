$(function () {
    $('#btn-actionbu').click(function (e) {
        buscadoract();
    });
    const buscadoract = () => {

        var cedul = document.getElementById("txt-cedee").value;
        $.ajax({
            cache: false,
            type: "POST",
            url: "Buscadorpacienteactualizar",
            data: {cedul: cedul},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-tipoca").val(data.paciente_tipo_dni);
                $("#txt-cedee").val(data.paciente_dni);
                $("#txt-namea").val(data.paciente_primernombre);
                $("#txt-lnamesega").val(data.paciente_segundonombre);
                $("#txt-nameapa").val(data.paciente_primerapellido);
                $("#txt-lnamesp2").val(data.paciente_segundoapellido);
                $("#txt-lnamefa").val(data.paciente_fechanacimiento);
                $("#txt-lnametca").val(data.paciente_convencional);
                $("#txt-celua").val(data.paciente_telefono);
                $("#txt-provinciaa").val(data.paciente_provincia);
                $("#txt-cantonn").val(data.paciente_canton);
                $("#txt-lnamepara").val(data.paciente_parroquia);
                $("#txt-lnamedi").val(data.paciente_direccion);
                $("#txt-lnamege").val(data.paciente_genero);
                $("#txt-lnamediec").val(data.paciente_estadocivil);
                $("#txt-lnameayu").val(data.paciente_ayudasocial);
                $("#nacionalidad").val(data.paciente_nacionalidad);
                $("#txt-lnamedis").val(data.paciente_grupo);
                $("#txt-lnametiposangre").val(data.paciente_tiposangre);
                $("#txt-lnamecorreo").val(data.paciente_correoelectronico);
            }
        });
    };
});

$(function () {
    $('#btn-actionbusc').click(function (e) {
        buscador();
    });
    const buscador = () => {

        var dato = {
            apellido: document.getElementById("txt-lnamesegaz").value,
            nombre: document.getElementById("txt-nameaz").value
        };
        $.ajax({
            cache: false,
            type: "POST",
            url: "Buscadorpacienteactualizarnew",
            data: dato,
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-tipoca").val(data.paciente_tipo_dni);
                $("#txt-cedee").val(data.paciente_dni);
                $("#txt-namea").val(data.paciente_primernombre);
                $("#txt-lnamesega").val(data.paciente_segundonombre);
                $("#txt-nameapa").val(data.paciente_primerapellido);
                $("#txt-lnamesp2").val(data.paciente_segundoapellido);
                $("#txt-lnamefa").val(data.paciente_fechanacimiento);
                $("#txt-lnametca").val(data.paciente_convencional);
                $("#txt-celua").val(data.paciente_telefono);
                $("#txt-provinciaa").val(data.paciente_provincia);
                $("#txt-cantonn").val(data.paciente_canton);
                $("#txt-lnamepara").val(data.paciente_parroquia);
                $("#txt-lnamedi").val(data.paciente_direccion);
                $("#txt-lnamege").val(data.paciente_genero);
                $("#txt-lnamediec").val(data.paciente_estadocivil);
                $("#txt-lnameayu").val(data.paciente_ayudasocial);
                $("#nacionalidad").val(data.paciente_nacionalidad);
                $("#txt-lnamedis").val(data.paciente_grupo);
                $("#txt-lnametiposangre").val(data.paciente_tiposangre);
                $("#txt-lnamecorreo").val(data.paciente_correoelectronico);
            }
        });
    };
});
