$(function () {
    $('#btn-actionbu').click(function (e) {
        buscadoract();
    });
    const buscadoract = () => {

        var cedul = document.getElementById("txt-cedee").value;
        $.ajax({
            cache: false,
            type: "POST",
            url: "BuscarPacienteSeguimientoCed",
            data: {cedul: cedul},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-nameaz").val(data.nombres);
                $("#txt-lnamesegaz").val(data.apellidos);
            }
        });
    };
});

$(function () {
    $('#btn-actionbuSesion').click(function (e) {
        buscadoract();
    });
    const buscadoract = () => {

        var dato = {
            cedula: document.getElementById("txt-cedee").value,
            numero: document.getElementById("txt-sesion").value
        };
        $.ajax({
            cache: false,
            type: "POST",
            url: "ListarSesiones",
            data: dato,
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-fechaAc").val(data.fecha);
                $("#txt-analisisDemanda").val(data.analisis);
                $("#txt-objetivoSesion").val(data.objetivo);
                $("#txt-descripcionET").val(data.descripcion);
                $("#txt-informacionRO").val(data.informacion);
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
            url: "BuscarPacienteSeguimientoNom",
            data: dato,
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-cedee").val(data.cedula);
                $("#txt-nameaz").val(data.nombres);
                $("#txt-lnamesegaz").val(data.apellidos);
            }
        });
    };
});


