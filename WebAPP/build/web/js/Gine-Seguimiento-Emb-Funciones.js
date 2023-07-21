var divv = document.getElementById('divv');
var porc_div = 9900;

$(document).ready(function () {
    
    $(".oculto").hide();              
    $(".inf").click(function(){
          var nodo = $(this).attr("href");  
          
          if ($(nodo).is(":visible")){
               $(nodo).hide();
               porc_div = 9900;
               divv.style.marginTop= porc_div + "px";
               return false;
          }else{
            $(".oculto").hide("slow");                             
            $(nodo).fadeToggle("fast");
            porc_div = 10100;
            divv.style.marginTop= porc_div + "px";
            return false;
          }
    });
});

function isEmptyObject(obj) {
    for (var property in obj) {
        if (obj.hasOwnProperty(property)) {
            return false;
        }
    }
    return true;
}

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
                $("#txt-id").val(data.paciente_id);
                $("#txt-cedula").val(data.paciente_dni);
                $("#txt-nombres").val(data.nombres);
                $("#txt-apellidos").val(data.apellidos);
                $("#txt-estadoc").val(data.paciente_estado_civil);
                $("#txt-fn").val(data.paciente_fnacimiento);
                $("#txt-edad").val(calcularEdad(data.paciente_fnacimiento));
                $("#txt-telefono").val(data.paciente_telefono);
                $("#txt-domicilio").val(data.paciente_direccion);
                
                $("#ghc_id").val(data.ghc_id);
                
                $("#txt-pa-sistolica").val(data.pa_sistolica);
                $("#txt-pa-diastolica").val(data.pa_diastolica);
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
                $("#txt-ago-menarquia").val(data.ago_menarquia);
                $("#txt-ago-irs").val(data.ago_irs);
                $("#txt-ago-parejas").val(data.ago_parejas);
                $("#txt-ago-ultimo-pap").val(data.ago_ultimo_pap);
                $("#txt-metodos-anti").val(data.ago_metodos_anti);
                $("#txt-FUM").val(data.ago_fum);
                $("#txt-FPP").val(data.ago_fpp);
                $("#txt-ago-menopausia").val(valorNulo(data.ago_menopausia));
                $("#txt-ago-gestas").val(data.ago_gestas);
                $("#txt-ago-partos").val(data.ago_partos);
                $("#txt-ago-abortos").val(data.ago_abortos);
                $("#txt-ago-cesareas").val(data.ago_cesareas);
                $("#txt-ago-edad-ges").val(data.ago_edad_gestacional);
                $("#txt-Complicaciones").val(data.ago_complicaciones);
                $("#txt-MotivoCon").val(data.motivo_consulta);
                $("#txt-EnfermedadAc").val(data.enfermedad_acual);
                $("#txt-Diagnostico").val(data.diagnostico);
                $("#txt-Tratamiento").val(data.tratamiento);
                
                $("#txt-cedula1").val(data.paciente_dni);
                $("#txt-nombres1").val(data.nombres);
                $("#txt-apellidos1").val(data.apellidos);
                $("#txt-estadoc1").val(data.paciente_estado_civil);
                $("#txt-fn1").val(data.paciente_fnacimiento);
                $("#txt-edad1").val(calcularEdad(data.paciente_fnacimiento));
                $("#txt-telefono1").val(data.paciente_telefono);
                $("#txt-domicilio1").val(data.paciente_direccion);
                $("#txt-localidad1").val(data.paciente_canton);
                $("#txt-etnia1").val(data.paciente_etnia);
                $("#txt-estudios1").val(data.paciente_nivel_estudio);
                $("#txt-anios-nivel1").val(data.paciente_anios_nivel);
                
                
                BuscadorPer(data.ghc_id, data.paciente_id);
                
                
            }
        });
    };
    
    const signos = (paciente_id, ga_peso) => {

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
                    //alert('Aún no se ha tomado signos vitales al paciente');
                    $("#txt-idsv").val('no');
                    $("#signos-res").html('No se han tomado signos vitales del paciente');
                    
                    $("#txt-pa-sistolica-seg").val("");
                    $("#txt-pa-diastolica-seg").val("");
                    $("#txt-Temperatura-seg").val("");
                    $("#txt-FrecuenciaC-seg").val("");
                    $("#txt-saturacion-seg").val("");
                    $("#txt-peso-seg").val("");
                    $("#txt-talla-seg").val("");
                    $("#txt-imc-seg").val("");
                    
                    $("#txt-imc-peso").val("");
                    $("#txt-imc-talla").val("");
                    $("#txt-imc-imc").val("");
                    $("#txt-imc-rango").val("");
                    
                    $("#txt-ca-pa").val("");
                    $("#txt-ca-pad").val("");
                    $("#txt-ca-peso").val("");
                    
                }else{
                    $("#signos-res").html('Signos vitales tomados hoy a las '+ data.hora);
                    $("#txt-idsv").val(data.signos_id);
                    
                    $("#txt-pa-sistolica-seg").val(data.pa_sistolica);
                    $("#txt-pa-diastolica-seg").val(data.pa_diastolica);
                    $("#txt-Temperatura-seg").val(data.temperatura);
                    $("#txt-FrecuenciaC-seg").val(data.frecuencia_cardiaca);
                    $("#txt-saturacion-seg").val(data.saturacion);
                    $("#txt-peso-seg").val(data.peso);
                    $("#txt-talla-seg").val(data.estatura);
                    $("#txt-imc-seg").val(data.imc);
                    
                    $("#txt-imc-peso").val(data.peso);
                    $("#txt-imc-talla").val(data.estatura);
                    $("#txt-imc-imc").val(data.imc);
                    var ganancia = (Number(data.peso) - Number(ga_peso))
                    $("#txt-imc-rango").val(ganancia.toFixed(3));
                    
                    $("#txt-ca-peso").val(data.peso);
                    $("#txt-ca-pa").val(data.pa_sistolica);
                    $("#txt-ca-pad").val(data.pa_diastolica);
                }
            }
        });
    };
    
    const BuscadorPer= (ghcid, paciente_id) => {
        //alert("aqui pasa a buscar:"+ghcid);
        $.ajax({
            cache: false,
            type: "POST",
            url: "BuscadorHcp",
            data: {ghc_id: ghcid},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                console.log(data);
                //alert(ghcid);
                //per-alfa-beta
                
                $("#ghcp_id").val(data.ghcp_id);
                if(data.per_alfa_beta!== "null")document.querySelector('#per_alfa_beta > [value="'+data.per_alfa_beta+'"]').checked = true;
                if(data.per_vive_sola!== "null")document.querySelector('#per_vive_sola > [value="'+data.per_vive_sola+'"]').checked = true;
                if(data.af_tbc!== "null")document.querySelector('#af_tbc > [value="'+data.af_tbc+'"]').checked = true;
                if(data.af_diabetes!== "null")document.querySelector('#af_diabetes > [value="'+data.af_diabetes+'"]').checked = true;
                if(data.af_hipertension!== "null")document.querySelector('#af_hipertension > [value="'+data.af_hipertension+'"]').checked = true;
                if(data.af_preeclampsia!== "null")document.querySelector('#af_preeclampsia > [value="'+data.af_preeclampsia+'"]').checked = true;
                if(data.af_eclampsia!== "null")document.querySelector('#af_eclampsia > [value="'+data.af_eclampsia+'"]').checked = true;
                if(data.af_ocmg!== "null")document.querySelector('#af_ocmg > [value="'+data.af_ocmg+'"]').checked = true;
                
                if(data.af_ocmg_desc!== "null")$("#af_ocmg_desc").val(data.af_ocmg_desc);
                
                if(data.ap_tbc!== "null")document.querySelector('#ap_tbc > [value="'+data.ap_tbc+'"]').checked = true;
                if(data.ap_diabetes!== "null")document.querySelector('#ap_diabetes > [value="'+data.ap_diabetes+'"]').checked = true;
                if(data.ap_hipertension!== "null")document.querySelector('#ap_hipertension > [value="'+data.ap_hipertension+'"]').checked = true;
                if(data.ap_preeclampsia!== "null")document.querySelector('#ap_preeclampsia > [value="'+data.ap_preeclampsia+'"]').checked = true;
                if(data.ap_eclampsia!== "null")document.querySelector('#ap_eclampsia > [value="'+data.ap_eclampsia+'"]').checked = true;
                if(data.ap_ocmg!== "null")document.querySelector('#ap_ocmg > [value="'+data.ap_ocmg+'"]').checked = true;
                
                if(data.ap_ocmg_desc!== "null")$("#ap_ocmg_desc").val(data.ap_ocmg_desc);
                
                if(data.ap_cirugia_gu!== "null")document.querySelector('#ap_cirugia_gu > [value="'+data.ap_cirugia_gu+'"]').checked = true;
                if(data.ap_infertilidad!== "null")document.querySelector('#ap_infertilidad > [value="'+data.ap_infertilidad+'"]').checked = true;
                if(data.ap_cardiopat!== "null")document.querySelector('#ap_cardiopat > [value="'+data.ap_cardiopat+'"]').checked = true;
                if(data.ap_nefropatia!== "null")document.querySelector('#ap_nefropatia > [value="'+data.ap_nefropatia+'"]').checked = true;
                if(data.ap_violencia!== "null")document.querySelector('#ap_violencia > [value="'+data.ap_violencia+'"]').checked = true;
                if(data.ao_up_nc!== "null")document.querySelector('#ao_up_nc > [value="'+data.ao_up_nc+'"]').checked = true;
                //if(data.ao_up_normal!== "null")document.querySelector('#ao_up_normal > [value="'+data.ao_up_normal+'"]').checked = true;
                if(data.ao_ant_gem!== "null")document.querySelector('#ao_ant_gem > [value="'+data.ao_ant_gem+'"]').checked = true;
                
                if(data.ao_gestas_previas!== "null")$("#ao_gestas_previas").val(data.ao_gestas_previas);
                if(data.ao_emb_ectopico!== "null")$("#ao_emb_ectopico").val(data.ao_emb_ectopico);
                if(data.ao_abortos!== "null")$("#ao_abortos").val(data.ao_abortos);
                
                if(data.ao_abortos_cons!== "null")document.querySelector('#ao_abortos_cons > [value="'+data.ao_abortos_cons+'"]').checked = true;
                
                if(data.ao_partos!== "null")$("#ao_partos").val(data.ao_partos);
                if(data.ao_partos_vag!== "null")$("#ao_partos_vag").val(data.ao_partos_vag);
                if(data.ao_partos_ces!== "null")$("#ao_partos_ces").val(data.ao_partos_ces);
                if(data.ao_nac_vivos!== "null")$("#ao_nac_vivos").val(data.ao_nac_vivos);
                if(data.ao_nac_muertos!== "null")$("#ao_nac_muertos").val(data.ao_nac_muertos);
                if(data.ao_viven!== "null")$("#ao_viven").val(data.ao_viven);
                if(data.ao_nac_muer_ant!== "null")$("#ao_nac_muer_ant").val(data.ao_nac_muer_ant);
                if(data.ao_nac_muer_des!== "null")$("#ao_nac_muer_des").val(data.ao_nac_muer_des);
                if(data.ao_fin_emb_ant!== "null")$("#ao_fin_emb_ant").val(data.ao_fin_emb_ant);
                
                if(data.ao_emb_planeado!== "null")document.querySelector('#ao_emb_planeado > [value="'+data.ao_emb_planeado+'"]').checked = true;
                if(data.ao_fma!== "null")document.querySelector('#ao_fma > [value="'+data.ao_fma+'"]').checked = true;
                
                if(data.ga_peso!== "null")$("#txt-ga-peso").val(data.ga_peso);
                if(data.ga_talla!== "null")$("#txt-ga-talla").val(data.ga_talla);
                if(data.ga_fum!== "null")$("#txt-ga-fum").val(data.ga_fum);
                if(data.ga_fpp!== "null")$("#txt-ga-fpp").val(data.ga_fpp);
                
                if(data.ga_egconf_fum!== "null")document.querySelector('#ga_egconf_fum > [value="'+data.ga_egconf_fum+'"]').checked = true;
                if(data.ga_egconf_eco!== "null")document.querySelector('#ga_egconf_eco > [value="'+data.ga_egconf_eco+'"]').checked = true;
                if(data.ga_fuma_act_uno!== "null")document.querySelector('#ga_fuma_act_uno > [value="'+data.ga_fuma_act_uno+'"]').checked = true;
                if(data.ga_fuma_pas_uno!== "null")document.querySelector('#ga_fuma_pas_uno > [value="'+data.ga_fuma_pas_uno+'"]').checked = true;
                if(data.ga_drogas_uno!== "null")document.querySelector('#ga_drogas_uno > [value="'+data.ga_drogas_uno+'"]').checked = true;
                if(data.ga_alcohol_uno!== "null")document.querySelector('#ga_alcohol_uno > [value="'+data.ga_alcohol_uno+'"]').checked = true;
                if(data.ga_violencia_uno!== "null")document.querySelector('#ga_violencia_uno > [value="'+data.ga_violencia_uno+'"]').checked = true;
                if(data.ga_fuma_act_dos!== "null")document.querySelector('#ga_fuma_act_dos > [value="'+data.ga_fuma_act_dos+'"]').checked = true;
                if(data.ga_fuma_pas_dos!== "null")document.querySelector('#ga_fuma_pas_dos > [value="'+data.ga_fuma_pas_dos+'"]').checked = true;
                if(data.ga_drogas_dos!== "null")document.querySelector('#ga_drogas_dos > [value="'+data.ga_drogas_dos+'"]').checked = true;
                if(data.ga_alcohol_dos!== "null")document.querySelector('#ga_alcohol_dos > [value="'+data.ga_alcohol_dos+'"]').checked = true;
                if(data.ga_violencia_dos!== "null")document.querySelector('#ga_violencia_dos > [value="'+data.ga_violencia_dos+'"]').checked = true;
                if(data.ga_fuma_act_tres!== "null")document.querySelector('#ga_fuma_act_tres > [value="'+data.ga_fuma_act_tres+'"]').checked = true;
                if(data.ga_fuma_pas_tres!== "null")document.querySelector('#ga_fuma_pas_tres > [value="'+data.ga_fuma_pas_tres+'"]').checked = true;
                if(data.ga_drogas_tres!== "null")document.querySelector('#ga_drogas_tres > [value="'+data.ga_drogas_tres+'"]').checked = true;
                if(data.ga_alcohol_tres!== "null")document.querySelector('#ga_alcohol_tres > [value="'+data.ga_alcohol_tres+'"]').checked = true;
                if(data.ga_violencia_tres!== "null")document.querySelector('#ga_violencia_tres > [value="'+data.ga_violencia_tres+'"]').checked = true;
                if(data.ga_antitet!== "null")document.querySelector('#ga_antitet > [value="'+data.ga_antitet+'"]').checked = true;
                
                if(data.ga_antitet_dosis_uno!== "null")$("#ga_antitet_dosis_uno").val(data.ga_antitet_dosis_uno);
                if(data.ga_antitet_dosis_dos!== "null")$("#ga_antitet_dosis_dos").val(data.ga_antitet_dosis_dos);
                
                if(data.ga_antirubeola!== "null")document.querySelector('#ga_antirubeola > [value="'+data.ga_antirubeola+'"]').checked = true;
                if(data.ga_exnormal_odont!== "null")document.querySelector('#ga_exnormal_odont > [value="'+data.ga_exnormal_odont+'"]').checked = true;
                if(data.ga_exnormal_mamas!== "null")document.querySelector('#ga_exnormal_mamas > [value="'+data.ga_exnormal_mamas+'"]').checked = true;
                if(data.ga_cervix_insp!== "null")document.querySelector('#ga_cervix_insp > [value="'+data.ga_cervix_insp+'"]').checked = true;
                if(data.ga_cervix_pap!== "null")document.querySelector('#ga_cervix_pap > [value="'+data.ga_cervix_pap+'"]').checked = true;
                if(data.ga_cervix_colp!== "null")document.querySelector('#ga_cervix_colp > [value="'+data.ga_cervix_colp+'"]').checked = true;
                if(data.ga_san_grupo!== "null")document.querySelector('#ga_san_grupo > [value="'+data.ga_san_grupo+'"]').checked = true;
                if(data.ga_san_rh!== "null")document.querySelector('#ga_san_rh > [value="'+data.ga_san_rh+'"]').checked = true;
                if(data.ga_san_inmuniz!== "null")document.querySelector('#ga_san_inmuniz > [value="'+data.ga_san_inmuniz+'"]').checked = true;
                if(data.ga_san_globulina!== "null")document.querySelector('#ga_san_globulina > [value="'+data.ga_san_globulina+'"]').checked = true;
                if(data.ga_toxo_menor!== "null")document.querySelector('#ga_toxo_menor > [value="'+data.ga_toxo_menor+'"]').checked = true;
                if(data.ga_toxo_mayor!== "null")document.querySelector('#ga_toxo_mayor > [value="'+data.ga_toxo_mayor+'"]').checked = true;
                if(data.ga_toxo_prim_cons!== "null")document.querySelector('#ga_toxo_prim_cons > [value="'+data.ga_toxo_prim_cons+'"]').checked = true;
                if(data.ga_chagas!== "null")document.querySelector('#ga_chagas > [value="'+data.ga_chagas+'"]').checked = true;
                if(data.ga_pal_mal!== "null")document.querySelector('#ga_pal_mal > [value="'+data.ga_pal_mal+'"]').checked = true;
                if(data.ga_bac_menor!== "null")document.querySelector('#ga_bac_menor > [value="'+data.ga_bac_menor+'"]').checked = true;
                if(data.ga_bac_mayor!== "null")document.querySelector('#ga_bac_mayor > [value="'+data.ga_bac_mayor+'"]').checked = true;
                
                if(data.ga_glu_menor20!== "null")$("#ga_glu_menor20").val(data.ga_glu_menor20);
                
                if(data.ga_glu_menor20_105!== "null")document.querySelector('#ga_glu_menor20_105 > [value="'+data.ga_glu_menor20_105+'"]').checked = true;
                
                if(data.ga_glu_mayor30!== "null")$("#ga_glu_mayor30").val(data.ga_glu_mayor30);
                
                if(data.ga_glu_mayor30_105!== "null")document.querySelector('#ga_glu_mayor30_105 > [value="'+data.ga_glu_mayor30_105+'"]').checked = true;
                if(data.ga_vih_sol_menor20!== "null")document.querySelector('#ga_vih_sol_menor20 > [value="'+data.ga_vih_sol_menor20+'"]').checked = true;
                if(data.ga_vih_rea_menor20!== "null")document.querySelector('#ga_vih_rea_menor20 > [value="'+data.ga_vih_rea_menor20+'"]').checked = true;
                if(data.ga_vih_sol_mayor20!== "null")document.querySelector('#ga_vih_sol_mayor20 > [value="'+data.ga_vih_sol_mayor20+'"]').checked = true;
                if(data.ga_vih_rea_mayor20!== "null")document.querySelector('#ga_vih_rea_mayor20 > [value="'+data.ga_vih_rea_mayor20+'"]').checked = true;
                
                if(data.ga_hb_menor_20!== "null")$("#ga_hb_menor_20").val(data.ga_hb_menor_20);
                
                if(data.ga_hb_menor_bajo!== "null")document.querySelector('#ga_hb_menor_bajo > [value="'+data.ga_hb_menor_bajo+'"]').checked = true;
                if(data.ga_fe!== "null")document.querySelector('#ga_fe > [value="'+data.ga_fe+'"]').checked = true;
                if(data.ga_folatos!== "null")document.querySelector('#ga_folatos > [value="'+data.ga_folatos+'"]').checked = true;
                
                if(data.ga_hb_mayor_20!== "null")$("#ga_hb_mayor_20").val(data.ga_hb_mayor_20);
                
                if(data.ga_hb_mayor_bajo!== "null")document.querySelector('#ga_hb_mayor_bajo > [value="'+data.ga_hb_mayor_bajo+'"]').checked = true;
                if(data.ga_estreptococo!== "null")document.querySelector('#ga_estreptococo > [value="'+data.ga_estreptococo+'"]').checked = true;
                if(data.ga_prepa_parto!== "null")document.querySelector('#ga_prepa_parto > [value="'+data.ga_prepa_parto+'"]').checked = true;
                if(data.ga_consej_lactancia!== "null")document.querySelector('#ga_consej_lactancia > [value="'+data.ga_consej_lactancia+'"]').checked = true;
                
                //Sif
                if(data.ga_sif_prue_notre_res_men!== "null")document.querySelector('#ga_sif_prue_notre_res_men > [value="'+data.ga_sif_prue_notre_res_men+'"]').checked = true;
                if(data.ga_sif_prue_notre_sem_men!== "null")$("#ga_sif_prue_notre_sem_men").val(data.ga_sif_prue_notre_sem_men);
                if(data.ga_sif_prue_notre_res_may!== "null")document.querySelector('#ga_sif_prue_notre_res_may > [value="'+data.ga_sif_prue_notre_res_may+'"]').checked = true;
                if(data.ga_sif_prue_notre_sem_may!== "null")$("#ga_sif_prue_notre_sem_may").val(data.ga_sif_prue_notre_sem_may);
                if(data.ga_sif_prue_tre_res_men!== "null")document.querySelector('#ga_sif_prue_tre_res_men > [value="'+data.ga_sif_prue_tre_res_men+'"]').checked = true;
                if(data.ga_sif_prue_tre_sem_men!== "null")$("#ga_sif_prue_tre_sem_men").val(data.ga_sif_prue_tre_sem_men);
                if(data.ga_sif_prue_tre_res_may!== "null")document.querySelector('#ga_sif_prue_tre_res_may > [value="'+data.ga_sif_prue_tre_res_may+'"]').checked = true;
                if(data.ga_sif_prue_tre_sem_may!== "null")$("#ga_sif_prue_tre_sem_may").val(data.ga_sif_prue_tre_sem_may);
                if(data.ga_sif_trat_menor!== "null")document.querySelector('#ga_sif_trat_menor > [value="'+data.ga_sif_trat_menor+'"]').checked = true;
                if(data.ga_sif_trat_menor_sem!== "null")$("#ga_sif_trat_menor_sem").val(data.ga_sif_trat_menor_sem);
                if(data.ga_sif_trat_mayor!== "null")document.querySelector('#ga_sif_trat_mayor > [value="'+data.ga_sif_trat_mayor+'"]').checked = true;
                if(data.ga_sif_trat_mayor_sem!== "null")$("#ga_sif_trat_mayor_sem").val(data.ga_sif_trat_mayor_sem);
                if(data.ga_sif_trat_par_menor!== "null")document.querySelector('#ga_sif_trat_par_menor > [value="'+data.ga_sif_trat_par_menor+'"]').checked = true;
                if(data.ga_sif_trat_par_mayor!== "null")document.querySelector('#ga_sif_trat_par_mayor > [value="'+data.ga_sif_trat_par_mayor+'"]').checked = true;
                
                /*
                if(data.imc_valor_inicial!== "null")document.querySelector('#imc_valor_inicial > [value="'+data.imc_valor_inicial+'"]').checked = true;
                if(data.imc_rango!== "null")document.querySelector('#imc_rango > [value="'+data.imc_rango+'"]').checked = true;
                */
                signos(paciente_id, data.ga_peso);
                renderConsultasAntenatales(data.ghcp_id);
                renderIMC(data.ghcp_id);
            }
        });
    };
    
    const renderConsultasAntenatales= (ghcp_id) => {
        $.ajax({
            cache: false,
            type: "POST",
            url: "BuscadorHcp_Antenatales",
            data: {ghcp_id: ghcp_id},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                //13148117
                console.log(data);
                $("#ant-consulta-1").val(data[0].ca_edad_ges);
                
                
                $("#body_antenatales").html("");
                var output = ``;
                for(var i = 0; i < data.length; i++) {
                    output += `
                        <tr>
                            <td style="border: solid #d5ddda;">${data[i].ca_fecha}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_edad_ges}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_peso}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_pa} / ${data[i].ca_pad}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_altura_uterina}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_presentacion}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_FCP}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_proteinuria}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_proteinuria}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_signos_notas}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_iniciales_tecnico}</th>
                            <td style="border: solid #d5ddda;">${data[i].ca_prox_cita}</th>
                        </tr>
                        `;
                }
                $("#body_antenatales").append(output);
            }
        });
    };
    
    const renderIMC= (ghcp_id) => {
        $.ajax({
            cache: false,
            type: "POST",
            url: "BuscadorHcp_IMC",
            data: {ghcp_id: ghcp_id},
            dataType: 'json',
            error: function (request, status, error)
            {
                alert(request, status, error);
            },
            success: function (data)
            {
                //13148117
                console.log(data);
                $("#body_imc").html("");
                var output = ``;
                for(var i = 0; i < data.length; i++) {
                    output += `
                        <tr>
                            <td style="border: solid #d5ddda;">${data[i].imc_semana}</th>
                            <td style="border: solid #d5ddda;">${data[i].imc_imc}</th>
                            <td style="border: solid #d5ddda;">${data[i].imc_ganancia}</th>
                        </tr>
                        `;
                }
                $("#body_imc").append(output);
            }
        });
    };
});

function valorNulo(a){
    if(a !== "null"){
        return a;
    }else{
        return '';
    }
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

