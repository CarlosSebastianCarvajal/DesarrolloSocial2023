$(function () {
    $('#btn-actionbu').click(function (e) {
        buscadoract();
    });
    const buscadoract = () => {

        var cedul = document.getElementById("txt-cedee").value;
        $.ajax({
            cache: false,
            type: "POST",
            url: "ActulizarFichaP",
            data: {cedul: cedul},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-primerNombre").val(data.paciente_primer_nombre);
                $("#txt-segundoNombre").val(data.paciente_segundo_nombre);
                $("#txt-primerApellido").val(data.paciente_apellido_paterno);
                $("#txt-segundoApellido").val(data.paciente_apellido_materno);
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
            url: "ActulizarFichaP1",
            data: dato,
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-primerNombre").val(data.paciente_primer_nombre);
                $("#txt-segundoNombre").val(data.paciente_segundo_nombre);
                $("#txt-primerApellido").val(data.paciente_apellido_paterno);
                $("#txt-segundoApellido").val(data.paciente_apellido_materno);
            }
        });
    };
});

