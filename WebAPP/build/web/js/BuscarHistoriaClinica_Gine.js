$(function () {
    $('#btn-actionb').click(function (e) {
        buscadoract();
    });
    const buscadoract = () => {
        var cedul = document.getElementById("txt-cede").value;
        $.ajax({
            cache: false,
            type: "POST",
            url: "BuscadorHC_Gineco",
            data: {cedul: cedul},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-cedula").val(data.paciente_dni);
                $("#txt-nombres").val(data.nombres);
                $("#txt-apellidos").val(data.apellidos);
                $("#txt-estadoc").val(data.paciente_estado_civil);
                $("#txt-fn").val(data.paciente_fnacimiento);
                $("#txt-edad").val(data.paciente_edad);
                $("#txt-telefono").val(data.paciente_telefono);
                $("#txt-domicilio").val(data.paciente_direccion);
                $("#txt-presionArterialS").val(data.pa_sistolica);
                $("#txt-presionArterialD").val(data.pa_diastolica);
                $("#txt-Temperatura").val(data.temperatura);
                $("#txt-FrecuenciaC").val(data.frecuencia_cardiaca);
                $("#txt-saturacion").val(data.saturacion);
                $("#txt-peso").val(data.peso);
                $("#txt-talla").val(data.estatura);
                $("#txt-imc").val(data.imc);
                $("#txt-personales").val(data.ap_personales);
                $("#txt-familiares").val(data.ap_familiares);
                $("#txt-quirurgicos").val(data.ap_quirurgicos);
                $("#txt-alergicos").val(data.ap_alergicos);
                $("#txt-habitos").val(data.ap_habitos);
                $("#txt-Menarquia").val(data.ago_menarquia);
                $("#txt-IRS").val(data.ago_irs);
                $("#txt-Parejas").val(data.ago_parejas);
                $("#txt-UltimoPAP").val(data.ago_ultimo_pap);
                $("#txt-MetodosAnt").val(data.ago_metodos_anti);
                $("#txt-FUM").val(data.ago_fum);
                $("#txt-FPP").val(data.ago_fpp);
                $("#txt-Menopausia").val(data.ago_menopausia);
                $("#txt-Gestas").val(data.ago_gestas);
                $("#txt-Partos").val(data.ago_partos);
                $("#txt-Abortos").val(data.ago_abortos);
                $("#txt-Cesarea").val(data.ago_cesareas);
                $("#txt-EdadGes").val(data.ago_edad_gestacional);
                $("#txt-Complicaciones").val(data.ago_complicaciones);
                $("#txt-MotivoCon").val(data.motivo_consulta);
                $("#txt-EnfermedadAc").val(data.enfermedad_acual);
                $("#txt-Diagnostico").val(data.diagnostico);
                $("#txt-Tratamiento").val(data.tratamiento);
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
            apellido: document.getElementById("txt-apellidoB").value,
            nombre: document.getElementById("txt-nombreB").value
        };
        $.ajax({
            cache: false,
            type: "POST",
            url: "BuscadorHC_Gi",
            data: dato,
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                $("#txt-cedula").val(data.paciente_dni);
                $("#txt-nombres").val(data.nombres);
                $("#txt-apellidos").val(data.apellidos);
                $("#txt-estadoc").val(data.paciente_estado_civil);
                $("#txt-fn").val(data.paciente_fnacimiento);
                $("#txt-edad").val(data.paciente_edad);
                $("#txt-telefono").val(data.paciente_telefono);
                $("#txt-domicilio").val(data.paciente_direccion);
                $("#txt-presionArterialS").val(data.pa_sistolica);
                $("#txt-presionArterialD").val(data.pa_diastolica);
                $("#txt-Temperatura").val(data.temperatura);
                $("#txt-FrecuenciaC").val(data.frecuencia_cardiaca);
                $("#txt-saturacion").val(data.saturacion);
                $("#txt-peso").val(data.peso);
                $("#txt-talla").val(data.estatura);
                $("#txt-imc").val(data.imc);
                $("#txt-personales").val(data.ap_personales);
                $("#txt-familiares").val(data.ap_familiares);
                $("#txt-quirurgicos").val(data.ap_quirurgicos);
                $("#txt-alergicos").val(data.ap_alergicos);
                $("#txt-habitos").val(data.ap_habitos);
                $("#txt-Menarquia").val(data.ago_menarquia);
                $("#txt-IRS").val(data.ago_irs);
                $("#txt-Parejas").val(data.ago_parejas);
                $("#txt-UltimoPAP").val(data.ago_ultimo_pap);
                $("#txt-MetodosAnt").val(data.ago_metodos_anti);
                $("#txt-FUM").val(data.ago_fum);
                $("#txt-FPP").val(data.ago_fpp);
                $("#txt-Menopausia").val(data.ago_menopausia);
                $("#txt-Gestas").val(data.ago_gestas);
                $("#txt-Partos").val(data.ago_partos);
                $("#txt-Abortos").val(data.ago_abortos);
                $("#txt-Cesarea").val(data.ago_cesareas);
                $("#txt-EdadGes").val(data.ago_edad_gestacional);
                $("#txt-Complicaciones").val(data.ago_complicaciones);
                $("#txt-MotivoCon").val(data.motivo_consulta);
                $("#txt-EnfermedadAc").val(data.enfermedad_acual);
                $("#txt-Diagnostico").val(data.diagnostico);
                $("#txt-Tratamiento").val(data.tratamiento);
            }
        });
    };
});

