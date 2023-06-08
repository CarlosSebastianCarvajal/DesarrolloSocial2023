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
                $("#txt-cedulap").val(data.paciente_dni);
                $("#txt-numerop").val(data.paciente_telefono);
                $("#txt-escolaridad").val(data.paciente_escolaridad);
                $("#txt-ocupacion").val(data.paciente_ocupacion);
                $("#txt-estado").val(data.paciente_estado_civil);
                $("#txt-genero").val(data.paciente_genero);
                $("#txt-fechaNacimiento").val(data.paciente_fnacimiento);
                $("#txt-religion").val(data.paciente_religion);
                $("#txt-orientacion").val(data.paciente_orientacion_sexual);
                $("#txt-lugarResidencia").val(data.paciente_direccion);
                $("#txt-tipoDiscapacidad").val(data.paciente_tipo_discapacidad);
                $("#txt-Porcentaje").val(data.paciente_porcentaje_discapacidad);
                $("#txt-edadP").val(data.paciente_edad);
                $("#txt-apellidoc").val(data.primer_apellido);
                $("#txt-nombrec").val(data.primer_nombre);
                $("#txt-parentezco").val(data.parentezco);
                $("#txt-cedulac").val(data.cedula);
                $("#txt-celularc").val(data.telefono);
                $("#txt-historiap").val(data.historia_personal);
                $("#txt-antecedentef").val(data.antecedentes_familiares);
                $("#txt-mitos").val(data.desarrollo);
                $("#txt-interes").val(data.actividad_interes);
                $("#txt-atencion").val(data.atencion_psiquiatrica_psicologica);
                $("#txt-enfermedad").val(data.enfermedad_cronica);
                $("#txt-orientacionP").val(data.orientacion);
                $("#txt-apariencia").val(data.apariencia);
                $("#txt-pensamiento").val(data.pensamiento);
                $("#txt-comportamiento").val(data.compormatientos);
                $("#txt-lenguaje").val(data.lenguaje);
                $("#txt-otros").val(data.otros);
                $("#txt-memoria").val(data.memoria);
                $("#txt-atencionP").val(data.atencion);
                $("#txt-afectividad").val(data.afectividad);
                $("#txt-juicio").val(data.juicio);
                $("#txt-recomendacion").val(data.recomendacion);
                $("#txt-fecha").val(data.fecha);
                $("#txt-hora").val(data.hora);
                $("#txt-motivoP").val(data.motivo);
                $("#txt-nombreM").val(data.nombre);
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
                $("#txt-cedulap").val(data.paciente_dni);
                $("#txt-numerop").val(data.paciente_telefono);
                $("#txt-escolaridad").val(data.paciente_escolaridad);
                $("#txt-ocupacion").val(data.paciente_ocupacion);
                $("#txt-estado").val(data.paciente_estado_civil);
                $("#txt-genero").val(data.paciente_genero);
                $("#txt-fechaNacimiento").val(data.paciente_fnacimiento);
                $("#txt-religion").val(data.paciente_religion);
                $("#txt-orientacion").val(data.paciente_orientacion_sexual);
                $("#txt-lugarResidencia").val(data.paciente_direccion);
                $("#txt-tipoDiscapacidad").val(data.paciente_tipo_discapacidad);
                $("#txt-Porcentaje").val(data.paciente_porcentaje_discapacidad);
                $("#txt-edadP").val(data.paciente_edad);
                $("#txt-apellidoc").val(data.primer_apellido);
                $("#txt-nombrec").val(data.primer_nombre);
                $("#txt-parentezco").val(data.parentezco);
                $("#txt-cedulac").val(data.cedula);
                $("#txt-celularc").val(data.telefono);
                $("#txt-historiap").val(data.historia_personal);
                $("#txt-antecedentef").val(data.antecedentes_familiares);
                $("#txt-mitos").val(data.desarrollo);
                $("#txt-interes").val(data.actividad_interes);
                $("#txt-atencion").val(data.atencion_psiquiatrica_psicologica);
                $("#txt-enfermedad").val(data.enfermedad_cronica);
                $("#txt-orientacionP").val(data.orientacion);
                $("#txt-apariencia").val(data.apariencia);
                $("#txt-pensamiento").val(data.pensamiento);
                $("#txt-comportamiento").val(data.compormatientos);
                $("#txt-lenguaje").val(data.lenguaje);
                $("#txt-otros").val(data.otros);
                $("#txt-memoria").val(data.memoria);
                $("#txt-atencionP").val(data.atencion);
                $("#txt-afectividad").val(data.afectividad);
                $("#txt-juicio").val(data.juicio);
                $("#txt-recomendacion").val(data.recomendacion);
                $("#txt-fecha").val(data.fecha);
                $("#txt-hora").val(data.hora);
                $("#txt-motivoP").val(data.motivo);
                $("#txt-nombreM").val(data.nombre);
            }
        });
    };
});



