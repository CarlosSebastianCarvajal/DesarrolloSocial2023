/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BD.conexion;
import com.itextpdf.text.Section;
import static java.awt.SystemColor.window;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;
import org.json.*;


/**
 *
 * @author Sebastian Carvajal
 */
@WebServlet(name = "AddGineHistoriaEvolucionEmb", urlPatterns = {"/AddGineHistoriaEvolucionEmb"})
public class AddGineHistoriaEvolucionEmb extends HttpServlet {

    PrintWriter out = null;
    PreparedStatement ps = null;
    HttpSession session = null;
    conexion c = new conexion();
    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        
        try {
            out = response.getWriter();
            session = request.getSession(true);
            String checkcito_examen = request.getParameter("checkcito_examen");
            if(checkcito_examen == null){ checkcito_examen = "off"; }
            String galenoid = "";
            String pacienteid,
                //Datos de los signos vitales  (Crear Variable)   
                presion_arterial_s,
                presion_arterial_d,
                temperatura,
                frecuencia_cardiaca,
                saturacion,
                peso,
                estatura,
                imc,
                    
                //Datos de la historia clinica (Crear Variable)
                ghc_id,
                ap_personales,
                ap_familiares,
                ap_quirurgicos,
                ap_alergicos,
                ap_habitos,
                ago_menarquia,
                ago_irs,
                ago_parejas,
                ago_ultimo_pap,
                ago_metodos_anti,
                ago_fum,
                ago_fpp,
                ago_menopausia,
                ago_gestas,
                ago_partos,
                ago_abortos,
                ago_cesareas,
                ago_edad_gestacional,
                ago_complicaciones,
                motivo_consulta,
                enfermedad_acual,
                diagnostico,
                tratamiento,
            
                //Datos de la historia clinica PERINATAL(Crear Variable)
                ghcp_id,
                per_alfa_beta, 
                per_vive_sola,
                af_tbc,
                af_diabetes,
                af_hipertension,
                af_preeclampsia,
                af_eclampsia,
                af_ocmg,
                af_ocmg_desc,
                ap_tbc,
                ap_diabetes,
                ap_hipertension,
                ap_preeclampsia,
                ap_eclampsia,
                ap_ocmg,    
                ap_ocmg_desc,
                ap_cirugia_gu,
                ap_infertilidad,
                ap_cardiopat,
                ap_nefropatia,
                ap_violencia,
                ao_up_nc,
                ao_up_normal,
                ao_ant_gem,
                ao_gestas_previas,
                ao_emb_ectopico,
                ao_abortos,
                ao_abortos_cons,
                ao_partos,
                ao_partos_vag,
                ao_partos_ces,
                ao_nac_vivos,
                ao_nac_muertos,
                ao_viven,
                ao_nac_muer_ant,
                ao_nac_muer_des,
                ao_fin_emb_ant,
                ao_emb_planeado,
                ao_fma,
                ga_peso,
                ga_talla,
                ga_fum,
                ga_fpp,
                ga_egconf_fum,
                ga_egconf_eco,
                ga_fuma_act_uno,
                ga_fuma_pas_uno,
                ga_drogas_uno,
                ga_alcohol_uno,
                ga_violencia_uno,
                ga_fuma_act_dos,
                ga_fuma_pas_dos,
                ga_drogas_dos,
                ga_alcohol_dos,
                ga_violencia_dos,
                ga_fuma_act_tres,
                ga_fuma_pas_tres,
                ga_drogas_tres,
                ga_alcohol_tres,
                ga_violencia_tres,
                ga_antitet,
                ga_antitet_dosis_uno,
                ga_antitet_dosis_dos,
                ga_antirubeola,
                ga_exnormal_odont,
                ga_exnormal_mamas,
                ga_cervix_insp,
                ga_cervix_pap,
                ga_cervix_colp,
                ga_san_grupo,
                ga_san_rh,
                ga_san_inmuniz,
                ga_san_globulina,
                ga_toxo_menor,
                ga_toxo_mayor,
                ga_toxo_prim_cons,
                ga_chagas,
                ga_pal_mal,
                ga_bac_menor,
                ga_bac_mayor,
                ga_glu_menor20,
                ga_glu_mayor30,
                ga_glu_menor20_105,
                ga_glu_mayor30_105,
                ga_vih_sol_menor20,
                ga_vih_rea_menor20,
                ga_vih_sol_mayor20,
                ga_vih_rea_mayor20,
                ga_hb_menor_20,
                ga_hb_menor_bajo,
                ga_fe,
                ga_folatos,
                ga_hb_mayor_20,
                ga_hb_mayor_bajo,
                ga_estreptococo,
                ga_prepa_parto,
                ga_consej_lactancia,
                ga_sif_prue_notre_res_men,
                ga_sif_prue_notre_sem_men,
                ga_sif_prue_notre_res_may,
                ga_sif_prue_notre_sem_may,
                ga_sif_prue_tre_res_men,
                ga_sif_prue_tre_sem_men,
                ga_sif_prue_tre_res_may,
                ga_sif_prue_tre_sem_may,
                ga_sif_trat_menor,
                ga_sif_trat_menor_sem,
                ga_sif_trat_mayor,
                ga_sif_trat_mayor_sem,
                ga_sif_trat_par_menor,
                ga_sif_trat_par_mayor,
                imc_valor_inicial,
                imc_rango,
                    
                //PARA CONSULTA ANTENATAL
                ca_edad_ges,
                ca_peso,
                ca_pa,
                ca_altura_uterina,
                ca_presentacion,
                ca_FCP,
                ca_mov_fetales,
                ca_proteinuria,
                ca_signos_notas,
                ca_iniciales_tecnico,
                ca_prox_cita,
            
                //Para los valores de valoracion IMC
                imc_semana,
                imc_imc,
                imc_peso,
                
                //Datos de los signos vitales  (Crear Variable)   
                presion_arterial_s_seg,
                presion_arterial_d_seg,
                temperatura_seg,
                frecuencia_cardiaca_seg,
                saturacion_seg,
                peso_seg,
                estatura_seg,
                imc_seg,
            
                //para las notas de evolucion
                notas,
            
                //para la receta
                receta,
            
                //para la sem de la primer consulta
                ant_consulta_1;
            
            ant_consulta_1 = request.getParameter("ant_consulta_1");
            
            pacienteid = request.getParameter("txtid");
            // Capturar valores de signos vitales
            presion_arterial_s = request.getParameter("presion_arterial_s");
            presion_arterial_d = request.getParameter("presion_arterial_d");
            temperatura = request.getParameter("temperatura");
            frecuencia_cardiaca = request.getParameter("frecuencia_cardiaca");
            saturacion = request.getParameter("saturacion");
            peso = request.getParameter("peso");
            estatura = request.getParameter("estatura");
            imc = request.getParameter("imc");
            
            // Capturar valores de Historia clinica
            ghc_id = request.getParameter("ghc_id");
            ap_personales = request.getParameter("ap_personales");
            ap_familiares = request.getParameter("ap_familiares");
            ap_quirurgicos = request.getParameter("ap_quirurgicos");
            ap_alergicos = request.getParameter("ap_alergicos");
            ap_habitos = request.getParameter("ap_habitos");
            ago_menarquia = request.getParameter("ago_menarquia");
            ago_irs = request.getParameter("ago_irs");
            ago_parejas = request.getParameter("ago_parejas");
            ago_ultimo_pap = request.getParameter("ago_ultimo_pap");
            ago_metodos_anti = request.getParameter("ago_metodos_anti");
            ago_fum = request.getParameter("ago_fum");
            ago_fpp = request.getParameter("ago_fpp");
            ago_menopausia = request.getParameter("ago_menopausia");
            ago_gestas = request.getParameter("ago_gestas");
            ago_partos = request.getParameter("ago_partos");
            ago_abortos = request.getParameter("ago_abortos");
            ago_cesareas = request.getParameter("ago_cesareas");
            ago_edad_gestacional = request.getParameter("ago_edad_gestacional");
            ago_complicaciones = request.getParameter("ago_complicaciones");
            motivo_consulta = request.getParameter("motivo_consulta");
            enfermedad_acual = request.getParameter("enfermedad_acual");
            diagnostico = request.getParameter("diagnostico");
            tratamiento = request.getParameter("tratamiento");
            
            //Capturar valores de Historia clinica perinatal
            ghcp_id = request.getParameter("ghcp_id");
            per_alfa_beta = request.getParameter("per_alfa_beta");
            per_vive_sola= request.getParameter("per_vive_sola");
            af_tbc= request.getParameter("af_tbc");
            af_diabetes= request.getParameter("af_diabetes");
            af_hipertension= request.getParameter("af_hipertension");
            af_preeclampsia= request.getParameter("af_preeclampsia");
            af_eclampsia= request.getParameter("af_eclampsia");
            af_ocmg= request.getParameter("af_ocmg");
            af_ocmg_desc= request.getParameter("af_ocmg_desc");
            ap_tbc= request.getParameter("ap_tbc");
            ap_diabetes= request.getParameter("ap_diabetes");
            ap_hipertension= request.getParameter("ap_hipertension");
            ap_preeclampsia= request.getParameter("ap_preeclampsia");
            ap_eclampsia= request.getParameter("ap_eclampsia");
            ap_ocmg= request.getParameter("ap_ocmg");
            ap_ocmg_desc= request.getParameter("ap_ocmg_desc");
            ap_cirugia_gu= request.getParameter("ap_cirugia_gu");
            ap_infertilidad= request.getParameter("ap_infertilidad");
            ap_cardiopat= request.getParameter("ap_cardiopat");
            ap_nefropatia= request.getParameter("ap_nefropatia");
            ap_violencia= request.getParameter("ap_violencia");
            ao_up_nc= request.getParameter("ao_up_nc");
            ao_up_normal= request.getParameter("ao_up_normal");
            ao_ant_gem= request.getParameter("ao_ant_gem");
            ao_gestas_previas= request.getParameter("ao_gestas_previas");
            ao_emb_ectopico= request.getParameter("ao_emb_ectopico");
            ao_abortos= request.getParameter("ao_abortos");
            ao_abortos_cons= request.getParameter("ao_abortos_cons");
            ao_partos= request.getParameter("ao_partos");
            ao_partos_vag= request.getParameter("ao_partos_vag");
            ao_partos_ces= request.getParameter("ao_partos_ces");
            ao_nac_vivos= request.getParameter("ao_nac_vivos");
            ao_nac_muertos= request.getParameter("ao_nac_muertos");
            ao_viven= request.getParameter("ao_viven");
            ao_nac_muer_ant= request.getParameter("ao_nac_muer_ant");
            ao_nac_muer_des= request.getParameter("ao_nac_muer_des");
            ao_fin_emb_ant= request.getParameter("ao_fin_emb_ant");
            ao_emb_planeado= request.getParameter("ao_emb_planeado");
            ao_fma= request.getParameter("ao_fma");
            ga_peso= request.getParameter("ga_peso");
            ga_talla= request.getParameter("ga_talla");
            ga_fum= request.getParameter("ga_fum");
            ga_fpp= request.getParameter("ga_fpp");
            ga_egconf_fum= request.getParameter("ga_egconf_fum");
            ga_egconf_eco= request.getParameter("ga_egconf_eco");
            ga_fuma_act_uno= request.getParameter("ga_fuma_act_uno");
            ga_fuma_pas_uno= request.getParameter("ga_fuma_pas_uno");
            ga_drogas_uno= request.getParameter("ga_drogas_uno");
            ga_alcohol_uno= request.getParameter("ga_alcohol_uno");
            ga_violencia_uno= request.getParameter("ga_violencia_uno");
            ga_fuma_act_dos= request.getParameter("ga_fuma_act_dos");
            ga_fuma_pas_dos= request.getParameter("ga_fuma_pas_dos");
            ga_drogas_dos= request.getParameter("ga_drogas_dos");
            ga_alcohol_dos= request.getParameter("ga_alcohol_dos");
            ga_violencia_dos= request.getParameter("ga_violencia_dos");
            ga_fuma_act_tres= request.getParameter("ga_fuma_act_tres");
            ga_fuma_pas_tres= request.getParameter("ga_fuma_pas_tres");
            ga_drogas_tres= request.getParameter("ga_drogas_tres");
            ga_alcohol_tres= request.getParameter("ga_alcohol_tres");
            ga_violencia_tres= request.getParameter("ga_violencia_tres");
            ga_antitet= request.getParameter("ga_antitet");
            ga_antitet_dosis_uno= request.getParameter("ga_antitet_dosis_uno");
            ga_antitet_dosis_dos= request.getParameter("ga_antitet_dosis_dos");
            ga_antirubeola= request.getParameter("ga_antirubeola");
            ga_exnormal_odont= request.getParameter("ga_exnormal_odont");
            ga_exnormal_mamas= request.getParameter("ga_exnormal_mamas");
            ga_cervix_insp= request.getParameter("ga_cervix_insp");
            ga_cervix_pap= request.getParameter("ga_cervix_pap");
            ga_cervix_colp= request.getParameter("ga_cervix_colp");
            ga_san_grupo= request.getParameter("ga_san_grupo");
            ga_san_rh= request.getParameter("ga_san_rh");
            ga_san_inmuniz= request.getParameter("ga_san_inmuniz");
            ga_san_globulina= request.getParameter("ga_san_globulina");
            ga_toxo_menor= request.getParameter("ga_toxo_menor");
            ga_toxo_mayor= request.getParameter("ga_toxo_mayor");
            ga_toxo_prim_cons= request.getParameter("ga_toxo_prim_cons");
            ga_chagas= request.getParameter("ga_chagas");
            ga_pal_mal= request.getParameter("ga_pal_mal");
            ga_bac_menor= request.getParameter("ga_bac_menor");
            ga_bac_mayor= request.getParameter("ga_bac_mayor");
            ga_glu_menor20= request.getParameter("ga_glu_menor20");
            ga_glu_mayor30= request.getParameter("ga_glu_mayor30");
            ga_glu_menor20_105= request.getParameter("ga_glu_menor20_105");
            ga_glu_mayor30_105= request.getParameter("ga_glu_mayor30_105");
            ga_vih_sol_menor20= request.getParameter("ga_vih_sol_menor20");
            ga_vih_rea_menor20= request.getParameter("ga_vih_rea_menor20");
            ga_vih_sol_mayor20= request.getParameter("ga_vih_sol_mayor20");
            ga_vih_rea_mayor20= request.getParameter("ga_vih_rea_mayor20");
            ga_hb_menor_20= request.getParameter("ga_hb_menor_20");
            ga_hb_menor_bajo= request.getParameter("ga_hb_menor_bajo");
            ga_fe= request.getParameter("ga_fe");
            ga_folatos= request.getParameter("ga_folatos");
            ga_hb_mayor_20= request.getParameter("ga_hb_mayor_20");
            ga_hb_mayor_bajo= request.getParameter("ga_hb_mayor_bajo");
            ga_estreptococo= request.getParameter("ga_estreptococo");
            ga_prepa_parto= request.getParameter("ga_prepa_parto");
            ga_consej_lactancia= request.getParameter("ga_consej_lactancia");
            ga_sif_prue_notre_res_men= request.getParameter("ga_sif_prue_notre_res_men");
            ga_sif_prue_notre_sem_men= request.getParameter("ga_sif_prue_notre_sem_men");
            ga_sif_prue_notre_res_may= request.getParameter("ga_sif_prue_notre_res_may");
            ga_sif_prue_notre_sem_may= request.getParameter("ga_sif_prue_notre_sem_may");
            ga_sif_prue_tre_res_men= request.getParameter("ga_sif_prue_tre_res_men");
            ga_sif_prue_tre_sem_men= request.getParameter("ga_sif_prue_tre_sem_men");
            ga_sif_prue_tre_res_may= request.getParameter("ga_sif_prue_tre_res_may");
            ga_sif_prue_tre_sem_may= request.getParameter("ga_sif_prue_tre_sem_may");
            ga_sif_trat_menor= request.getParameter("ga_sif_trat_menor");
            ga_sif_trat_menor_sem= request.getParameter("ga_sif_trat_menor_sem");
            ga_sif_trat_mayor= request.getParameter("ga_sif_trat_mayor");
            ga_sif_trat_mayor_sem= request.getParameter("ga_sif_trat_mayor_sem");
            ga_sif_trat_par_menor= request.getParameter("ga_sif_trat_par_menor");
            ga_sif_trat_par_mayor= request.getParameter("ga_sif_trat_par_mayor");
            imc_valor_inicial= request.getParameter("imc_valor_inicial");
            imc_rango= request.getParameter("imc_rango");

            //Capturar consultas antenatales
            ca_edad_ges = request.getParameter("ca_edad_ges");
            ca_peso = request.getParameter("ca_peso");
            ca_pa = request.getParameter("ca_pa");
            ca_altura_uterina = request.getParameter("ca_altura_uterina");
            ca_presentacion = request.getParameter("ca_presentacion");
            ca_FCP = request.getParameter("ca_FCP");
            ca_mov_fetales = request.getParameter("ca_mov_fetales");
            ca_proteinuria = request.getParameter("ca_proteinuria");
            ca_signos_notas = request.getParameter("ca_signos_notas");
            ca_iniciales_tecnico = request.getParameter("ca_iniciales_tecnico");
            ca_prox_cita = request.getParameter("ca_prox_cita");
            
            //Capturar para Valoracion IMC Inicial  imc_peso
            imc_semana = request.getParameter("imc_semana");
            imc_imc= request.getParameter("imc_valor_inicial");
            imc_peso= request.getParameter("imc_peso");
            
            //capturar valores de signos vitales de la nueva consulta
            presion_arterial_s_seg = request.getParameter("presion_arterial_s_seg");
            presion_arterial_d_seg = request.getParameter("presion_arterial_d_seg");
            temperatura_seg = request.getParameter("temperatura_seg");
            frecuencia_cardiaca_seg = request.getParameter("frecuencia_cardiaca_seg");
            saturacion_seg = request.getParameter("saturacion_seg");
            peso_seg = request.getParameter("peso_seg");
            estatura_seg = request.getParameter("estatura_seg");
            imc_seg = request.getParameter("imc_seg");
            
            //Capturar la notas de evolucion
            notas = request.getParameter("notas");
            
            //Capturar datos de la receta
            receta = request.getParameter("txt-tabla-datos-medicamentos");
            
            //Capturar usuario de la sesion
            String galenoUser = (String) session.getAttribute("galeno_user11");
            int a = 0;
            
            try {
                System.out.println("connection done");
                // Sección para consultar si se ha registrado signos vitales previamente
                // en caso de ser asi solo se extrae su ID
                
                //Obtener el id del Usuario
                String sqlidUser = "select *  from galeno where galeno_user = '"+galenoUser+"'";
                ps = c.getConecction().prepareStatement(sqlidUser);
                ResultSet resultId = ps.executeQuery();
                while (resultId.next()) {
                    galenoid = String.valueOf(resultId.getString("galeno_id"));
                }
                
                //Modificar los signos vitales
                /*
                String sqlSignos = "INSERT INTO public.signos_vitales(\n" +
                                "	paciente_id, galeno_id, pa_sistolica, pa_diastolica, temperatura, frecuencia_cardiaca, saturacion, peso, estatura, imc, fecha, hora)\n" +
                                "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now(), now());";

                ps = c.getConecction().prepareStatement(sqlSignos, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, Integer.parseInt(pacienteid));
                ps.setInt(2, Integer.parseInt(galenoid));
                ps.setInt(3, Integer.parseInt(presion_arterial_s));
                ps.setInt(4, Integer.parseInt(presion_arterial_d));
                ps.setFloat(5, Float.parseFloat(temperatura));
                ps.setInt(6, Integer.parseInt(frecuencia_cardiaca));
                ps.setInt(7, Integer.parseInt(saturacion));
                ps.setFloat(8, Float.parseFloat(peso));
                ps.setInt(9, Integer.parseInt(estatura));
                ps.setFloat(10, Float.parseFloat(imc));
                int resSignos = 0;
                resSignos = ps.executeUpdate();
                */
                
                //Modificar Historia clinica
                /*
                String sqlHistorial = "INSERT INTO public.ginecologia_historia_clinica(\n" +
                                "	paciente_id, galeno_id, signos_id, \n" +
                                "	ap_personales, ap_familiares, ap_quirurgicos, ap_alergicos, ap_habitos,\n" +
                                "	ago_menarquia, ago_irs, ago_parejas, ago_ultimo_pap, ago_metodos_anti,\n" +
                                "	ago_fum, ago_fpp, ago_menopausia, ago_gestas, ago_partos, ago_abortos,\n" +
                                "	ago_cesareas, ago_edad_gestacional, ago_complicaciones,\n" +
                                "	motivo_consulta, enfermedad_acual, diagnostico, tratamiento, fecha)\n" +
                                "	VALUES (?, ?, ?,\n" +
                                "			?, ?, ?, ?, ?,\n" +
                                "			?, ?, ?, ?, ?,\n" +
                                "			?, ?, ?, ?, ?, ?,\n" +
                                "			?, ?, ?,\n" +
                                "			?, ?, ?, ?, now());";
                ps = c.getConecction().prepareStatement(sqlHistorial, Statement.RETURN_GENERATED_KEYS);
                ps.setInt(1, Integer.parseInt(pacienteid));
                ps.setInt(2, Integer.parseInt(galenoid));
                //este Id ya no va a ser necesario modificar
                ps.setInt(3, 1);

                ps.setString(4, ap_personales);
                ps.setString(5, ap_familiares);
                ps.setString(6, ap_quirurgicos);
                ps.setString(7, ap_alergicos);
                ps.setString(8, ap_habitos);

                if(ago_menarquia != null && ago_menarquia.length() > 0){ ps.setInt(9, Integer.parseInt(ago_menarquia)); }else{ ps.setNull(9, Types.INTEGER); }
                ps.setInt(10, Integer.parseInt(ago_irs));
                ps.setInt(11, Integer.parseInt(ago_parejas));
                if(ago_ultimo_pap != null && ago_ultimo_pap.length() > 0){ ps.setDate(12, Date.valueOf(ago_ultimo_pap)); }else{ ps.setNull(12, Types.DATE); }

                ps.setString(13, ago_metodos_anti);

                if(ago_fum != null && ago_fum.length() > 0){ ps.setDate(14, Date.valueOf(ago_fum)); }else{ ps.setNull(14, Types.DATE); }
                ps.setDate(15, Date.valueOf(ago_fpp));
                if(ago_menopausia != null && ago_menopausia.length() > 0){ ps.setInt(16, Integer.parseInt(ago_menopausia)); }else{ ps.setNull(16, Types.INTEGER); }
                ps.setInt(17, Integer.parseInt(ago_gestas));
                ps.setInt(18, Integer.parseInt(ago_partos));
                ps.setInt(19, Integer.parseInt(ago_abortos));

                ps.setInt(20, Integer.parseInt(ago_cesareas));
                ps.setInt(21, Integer.parseInt(ago_edad_gestacional));
                ps.setString(22, ago_complicaciones);

                ps.setString(23, motivo_consulta);
                ps.setString(24, enfermedad_acual);
                ps.setString(25, diagnostico);
                ps.setString(26, tratamiento);
                int resSe = 0;
                resSe = ps.executeUpdate();
                */
                
                
                // MODIFICAR DATOS DE LA HISTORIA CLINICA PERINATAL
                //ghcp_id
                String sqlHCP = "UPDATE public.ginecologia_historia_clinica_per\n" +
                "	SET ghc_id=?, per_alfa_beta=?, per_vive_sola=?, af_tbc=?, af_diabetes=?, af_hipertension=?, af_preeclampsia=?, af_eclampsia=?, af_ocmg=?, af_ocmg_desc=?, ap_tbc=?, ap_diabetes=?, ap_hipertension=?, ap_preeclampsia=?, ap_eclampsia=?, ap_ocmg=?, ap_ocmg_desc=?, ap_cirugia_gu=?, ap_infertilidad=?, ap_cardiopat=?, ap_nefropatia=?, ap_violencia=?, ao_up_nc=?, ao_up_normal=?, ao_ant_gem=?, ao_gestas_previas=?, ao_emb_ectopico=?, ao_abortos=?, ao_abortos_cons=?, ao_partos=?, ao_partos_vag=?, ao_partos_ces=?, ao_nac_vivos=?, ao_nac_muertos=?, ao_viven=?, ao_nac_muer_ant=?, ao_nac_muer_des=?, ao_fin_emb_ant=?, ao_emb_planeado=?, ao_fma=?, ga_peso=?, ga_talla=?, ga_fum=?, ga_fpp=?, ga_egconf_fum=?, ga_egconf_eco=?, ga_fuma_act_uno=?, ga_fuma_pas_uno=?, ga_drogas_uno=?, ga_alcohol_uno=?, ga_violencia_uno=?, ga_fuma_act_dos=?, ga_fuma_pas_dos=?, ga_drogas_dos=?, ga_alcohol_dos=?, ga_violencia_dos=?, ga_fuma_act_tres=?, ga_fuma_pas_tres=?, ga_drogas_tres=?, ga_alcohol_tres=?, ga_violencia_tres=?, ga_antitet=?, ga_antitet_dosis_uno=?, ga_antitet_dosis_dos=?, ga_antirubeola=?, ga_exnormal_odont=?, ga_exnormal_mamas=?, ga_cervix_insp=?, ga_cervix_pap=?, ga_cervix_colp=?, ga_san_grupo=?, ga_san_rh=?, ga_san_inmuniz=?, ga_san_globulina=?, ga_toxo_menor=?, ga_toxo_mayor=?, ga_toxo_prim_cons=?, ga_chagas=?, ga_pal_mal=?, ga_bac_menor=?, ga_bac_mayor=?, ga_glu_menor20=?, ga_glu_menor20_105=?, ga_glu_mayor30=?, ga_glu_mayor30_105=?, ga_vih_sol_menor20=?, ga_vih_rea_menor20=?, ga_vih_sol_mayor20=?, ga_vih_rea_mayor20=?, ga_hb_menor_20=?, ga_hb_menor_bajo=?, ga_fe=?, ga_folatos=?, ga_hb_mayor_20=?, ga_hb_mayor_bajo=?, ga_estreptococo=?, ga_prepa_parto=?, ga_consej_lactancia=?, ga_sif_prue_notre_res_men=?, ga_sif_prue_notre_sem_men=?, ga_sif_prue_notre_res_may=?, ga_sif_prue_notre_sem_may=?, ga_sif_prue_tre_res_men=?, ga_sif_prue_tre_sem_men=?, ga_sif_prue_tre_res_may=?, ga_sif_prue_tre_sem_may=?, ga_sif_trat_menor=?, ga_sif_trat_menor_sem=?, ga_sif_trat_mayor=?, ga_sif_trat_mayor_sem=?, ga_sif_trat_par_menor=?, ga_sif_trat_par_mayor=?\n" +
                "	WHERE ghcp_id="+ghcp_id+";";
                ps = c.getConecction().prepareStatement(sqlHCP);
                ps.setInt(1, Integer.parseInt(ghc_id));
                if(per_alfa_beta != null && per_alfa_beta .length() > 0){ps.setString(2,per_alfa_beta);}else{ ps.setNull(2, Types.VARCHAR); }
                if(per_vive_sola!= null && per_vive_sola.length() > 0){ps.setString(3,per_vive_sola);}else{ ps.setNull(3, Types.VARCHAR); }
                if(af_tbc!= null && af_tbc.length() > 0){ps.setString(4,af_tbc);}else{ ps.setNull(4, Types.VARCHAR); }
                if(af_diabetes!= null && af_diabetes.length() > 0){ps.setString(5,af_diabetes);}else{ ps.setNull(5, Types.VARCHAR); }
                if(af_hipertension!= null && af_hipertension.length() > 0){ps.setString(6,af_hipertension);}else{ ps.setNull(6, Types.VARCHAR); }
                if(af_preeclampsia!= null && af_preeclampsia.length() > 0){ps.setString(7,af_preeclampsia);}else{ ps.setNull(7, Types.VARCHAR); }
                if(af_eclampsia!= null && af_eclampsia.length() > 0){ps.setString(8,af_eclampsia);}else{ ps.setNull(8, Types.VARCHAR); }
                if(af_ocmg!= null && af_ocmg.length() > 0){ps.setString(9,af_ocmg);}else{ ps.setNull(9, Types.VARCHAR); }
                if(af_ocmg_desc!= null && af_ocmg_desc.length() > 0){ps.setString(10,af_ocmg_desc);}else{ ps.setNull(10, Types.VARCHAR); }
                if(ap_tbc!= null && ap_tbc.length() > 0){ps.setString(11,ap_tbc);}else{ ps.setNull(11, Types.VARCHAR); }
                if(ap_diabetes!= null && ap_diabetes.length() > 0){ps.setString(12,ap_diabetes);}else{ ps.setNull(12, Types.VARCHAR); }
                if(ap_hipertension!= null && ap_hipertension.length() > 0){ps.setString(13,ap_hipertension);}else{ ps.setNull(13, Types.VARCHAR); }
                if(ap_preeclampsia!= null && ap_preeclampsia.length() > 0){ps.setString(14,ap_preeclampsia);}else{ ps.setNull(14, Types.VARCHAR); }
                if(ap_eclampsia!= null && ap_eclampsia.length() > 0){ps.setString(15,ap_eclampsia);}else{ ps.setNull(15, Types.VARCHAR); }
                if(ap_ocmg!= null && ap_ocmg.length() > 0){ps.setString(16,ap_ocmg);}else{ ps.setNull(16, Types.VARCHAR); }
                if(ap_ocmg_desc!= null && ap_ocmg_desc.length() > 0){ps.setString(17,ap_ocmg_desc);}else{ ps.setNull(17, Types.VARCHAR); }
                if(ap_cirugia_gu!= null && ap_cirugia_gu.length() > 0){ps.setString(18,ap_cirugia_gu);}else{ ps.setNull(18, Types.VARCHAR); }
                if(ap_infertilidad!= null && ap_infertilidad.length() > 0){ps.setString(19,ap_infertilidad);}else{ ps.setNull(19, Types.VARCHAR); }
                if(ap_cardiopat!= null && ap_cardiopat.length() > 0){ps.setString(20,ap_cardiopat);}else{ ps.setNull(20, Types.VARCHAR); }
                if(ap_nefropatia!= null && ap_nefropatia.length() > 0){ps.setString(21,ap_nefropatia);}else{ ps.setNull(21, Types.VARCHAR); }
                if(ap_violencia!= null && ap_violencia.length() > 0){ps.setString(22,ap_violencia);}else{ ps.setNull(22, Types.VARCHAR); }
                if(ao_up_nc!= null && ao_up_nc.length() > 0){ps.setString(23,ao_up_nc);}else{ ps.setNull(23, Types.VARCHAR); }
                if(ao_up_normal!= null && ao_up_normal.length() > 0){ps.setString(24,ao_up_normal);}else{ ps.setNull(24, Types.VARCHAR); }
                if(ao_ant_gem!= null && ao_ant_gem.length() > 0){ps.setString(25,ao_ant_gem);}else{ ps.setNull(25, Types.VARCHAR); }
                if(ao_gestas_previas!= null && ao_gestas_previas.length() > 0){ps.setInt(26,Integer.parseInt(ao_gestas_previas));}else{ ps.setNull(26, Types.INTEGER); }
                if(ao_emb_ectopico!= null && ao_emb_ectopico.length() > 0){ps.setInt(27,Integer.parseInt(ao_emb_ectopico));}else{ ps.setNull(27, Types.INTEGER); }
                if(ao_abortos!= null && ao_abortos.length() > 0){ps.setInt(28,Integer.parseInt(ao_abortos));}else{ ps.setNull(28, Types.INTEGER); }
                if(ao_abortos_cons!= null && ao_abortos_cons.length() > 0){ps.setString(29,ao_abortos_cons);}else{ ps.setNull(29, Types.VARCHAR); }
                if(ao_partos!= null && ao_partos.length() > 0){ps.setInt(30,Integer.parseInt(ao_partos));}else{ ps.setNull(30, Types.INTEGER); }
                if(ao_partos_vag!= null && ao_partos_vag.length() > 0){ps.setInt(31,Integer.parseInt(ao_partos_vag));}else{ ps.setNull(31, Types.INTEGER); }
                if(ao_partos_ces!= null && ao_partos_ces.length() > 0){ps.setInt(32,Integer.parseInt(ao_partos_ces));}else{ ps.setNull(32, Types.INTEGER); }
                if(ao_nac_vivos!= null && ao_nac_vivos.length() > 0){ps.setInt(33,Integer.parseInt(ao_nac_vivos));}else{ ps.setNull(33, Types.INTEGER); }
                if(ao_nac_muertos!= null && ao_nac_muertos.length() > 0){ps.setInt(34,Integer.parseInt(ao_nac_muertos));}else{ ps.setNull(34, Types.INTEGER); }
                if(ao_viven!= null && ao_viven.length() > 0){ps.setInt(35,Integer.parseInt(ao_viven));}else{ ps.setNull(35, Types.INTEGER); }
                if(ao_nac_muer_ant!= null && ao_nac_muer_ant.length() > 0){ps.setInt(36,Integer.parseInt(ao_nac_muer_ant));}else{ ps.setNull(36, Types.INTEGER); }
                if(ao_nac_muer_des!= null && ao_nac_muer_des.length() > 0){ps.setInt(37,Integer.parseInt(ao_nac_muer_des));}else{ ps.setNull(37, Types.INTEGER); }
                if(ao_fin_emb_ant!= null && ao_fin_emb_ant.length() > 0){ps.setDate(38,Date.valueOf(ao_fin_emb_ant));}else{ ps.setNull(38, Types.DATE); }
                if(ao_emb_planeado!= null && ao_emb_planeado.length() > 0){ps.setString(39,ao_emb_planeado);}else{ ps.setNull(39, Types.VARCHAR); }
                if(ao_fma!= null && ao_fma.length() > 0){ps.setString(40,ao_fma);}else{ ps.setNull(40, Types.VARCHAR); }
                if(ga_peso!= null && ga_peso.length() > 0){ps.setFloat(41,Float.parseFloat(ga_peso));}else{ ps.setNull(41, Types.DECIMAL); }
                if(ga_talla!= null && ga_talla.length() > 0){ps.setInt(42,Integer.parseInt(ga_talla));}else{ ps.setNull(42, Types.INTEGER); }
                if(ga_fum!= null && ga_fum.length() > 0){ps.setDate(43,Date.valueOf(ga_fum));}else{ ps.setNull(43, Types.DATE); }
                if(ga_fpp!= null && ga_fpp.length() > 0){ps.setDate(44,Date.valueOf(ga_fpp));}else{ ps.setNull(44, Types.DATE); }
                if(ga_egconf_fum!= null && ga_egconf_fum.length() > 0){ps.setString(45,ga_egconf_fum);}else{ ps.setNull(45, Types.VARCHAR); }
                if(ga_egconf_eco!= null && ga_egconf_eco.length() > 0){ps.setString(46,ga_egconf_eco);}else{ ps.setNull(46, Types.VARCHAR); }
                if(ga_fuma_act_uno!= null && ga_fuma_act_uno.length() > 0){ps.setString(47,ga_fuma_act_uno);}else{ ps.setNull(47, Types.VARCHAR); }
                if(ga_fuma_pas_uno!= null && ga_fuma_pas_uno.length() > 0){ps.setString(48,ga_fuma_pas_uno);}else{ ps.setNull(48, Types.VARCHAR); }
                if(ga_drogas_uno!= null && ga_drogas_uno.length() > 0){ps.setString(49,ga_drogas_uno);}else{ ps.setNull(49, Types.VARCHAR); }
                if(ga_alcohol_uno!= null && ga_alcohol_uno.length() > 0){ps.setString(50,ga_alcohol_uno);}else{ ps.setNull(50, Types.VARCHAR); }
                if(ga_violencia_uno!= null && ga_violencia_uno.length() > 0){ps.setString(51,ga_violencia_uno);}else{ ps.setNull(51, Types.VARCHAR); }
                if(ga_fuma_act_dos!= null && ga_fuma_act_dos.length() > 0){ps.setString(52,ga_fuma_act_dos);}else{ ps.setNull(52, Types.VARCHAR); }
                if(ga_fuma_pas_dos!= null && ga_fuma_pas_dos.length() > 0){ps.setString(53,ga_fuma_pas_dos);}else{ ps.setNull(53, Types.VARCHAR); }
                if(ga_drogas_dos!= null && ga_drogas_dos.length() > 0){ps.setString(54,ga_drogas_dos);}else{ ps.setNull(54, Types.VARCHAR); }
                if(ga_alcohol_dos!= null && ga_alcohol_dos.length() > 0){ps.setString(55,ga_alcohol_dos);}else{ ps.setNull(55, Types.VARCHAR); }
                if(ga_violencia_dos!= null && ga_violencia_dos.length() > 0){ps.setString(56,ga_violencia_dos);}else{ ps.setNull(56, Types.VARCHAR); }
                if(ga_fuma_act_tres!= null && ga_fuma_act_tres.length() > 0){ps.setString(57,ga_fuma_act_tres);}else{ ps.setNull(57, Types.VARCHAR); }
                if(ga_fuma_pas_tres!= null && ga_fuma_pas_tres.length() > 0){ps.setString(58,ga_fuma_pas_tres);}else{ ps.setNull(58, Types.VARCHAR); }
                if(ga_drogas_tres!= null && ga_drogas_tres.length() > 0){ps.setString(59,ga_drogas_tres);}else{ ps.setNull(59, Types.VARCHAR); }
                if(ga_alcohol_tres!= null && ga_alcohol_tres.length() > 0){ps.setString(60,ga_alcohol_tres);}else{ ps.setNull(60, Types.VARCHAR); }
                if(ga_violencia_tres!= null && ga_violencia_tres.length() > 0){ps.setString(61,ga_violencia_tres);}else{ ps.setNull(61, Types.VARCHAR); }
                if(ga_antitet!= null && ga_antitet.length() > 0){ps.setString(62,ga_antitet);}else{ ps.setNull(62, Types.VARCHAR); }
                if(ga_antitet_dosis_uno!= null && ga_antitet_dosis_uno.length() > 0){ps.setInt(63,Integer.parseInt(ga_antitet_dosis_uno));}else{ ps.setNull(63, Types.INTEGER); }
                if(ga_antitet_dosis_dos!= null && ga_antitet_dosis_dos.length() > 0){ps.setInt(64,Integer.parseInt(ga_antitet_dosis_dos));}else{ ps.setNull(64, Types.INTEGER); }
                if(ga_antirubeola!= null && ga_antirubeola.length() > 0){ps.setString(65,ga_antirubeola);}else{ ps.setNull(65, Types.VARCHAR); }
                if(ga_exnormal_odont!= null && ga_exnormal_odont.length() > 0){ps.setString(66,ga_exnormal_odont);}else{ ps.setNull(66, Types.VARCHAR); }
                if(ga_exnormal_mamas!= null && ga_exnormal_mamas.length() > 0){ps.setString(67,ga_exnormal_mamas);}else{ ps.setNull(67, Types.VARCHAR); }
                if(ga_cervix_insp!= null && ga_cervix_insp.length() > 0){ps.setString(68,ga_cervix_insp);}else{ ps.setNull(68, Types.VARCHAR); }
                if(ga_cervix_pap!= null && ga_cervix_pap.length() > 0){ps.setString(69,ga_cervix_pap);}else{ ps.setNull(69, Types.VARCHAR); }
                if(ga_cervix_colp!= null && ga_cervix_colp.length() > 0){ps.setString(70,ga_cervix_colp);}else{ ps.setNull(70, Types.VARCHAR); }
                if(ga_san_grupo!= null && ga_san_grupo.length() > 0){ps.setString(71,ga_san_grupo);}else{ ps.setNull(71, Types.VARCHAR); }
                if(ga_san_rh!= null && ga_san_rh.length() > 0){ps.setString(72,ga_san_rh);}else{ ps.setNull(72, Types.VARCHAR); }
                if(ga_san_inmuniz!= null && ga_san_inmuniz.length() > 0){ps.setString(73,ga_san_inmuniz);}else{ ps.setNull(73, Types.VARCHAR); }
                if(ga_san_globulina!= null && ga_san_globulina.length() > 0){ps.setString(74,ga_san_globulina);}else{ ps.setNull(74, Types.VARCHAR); }
                if(ga_toxo_menor!= null && ga_toxo_menor.length() > 0){ps.setString(75,ga_toxo_menor);}else{ ps.setNull(75, Types.VARCHAR); }
                if(ga_toxo_mayor!= null && ga_toxo_mayor.length() > 0){ps.setString(76,ga_toxo_mayor);}else{ ps.setNull(76, Types.VARCHAR); }
                if(ga_toxo_prim_cons!= null && ga_toxo_prim_cons.length() > 0){ps.setString(77,ga_toxo_prim_cons);}else{ ps.setNull(77, Types.VARCHAR); }
                if(ga_chagas!= null && ga_chagas.length() > 0){ps.setString(78,ga_chagas);}else{ ps.setNull(78, Types.VARCHAR); }
                if(ga_pal_mal!= null && ga_pal_mal.length() > 0){ps.setString(79,ga_pal_mal);}else{ ps.setNull(79, Types.VARCHAR); }
                if(ga_bac_menor!= null && ga_bac_menor.length() > 0){ps.setString(80,ga_bac_menor);}else{ ps.setNull(80, Types.VARCHAR); }
                if(ga_bac_mayor!= null && ga_bac_mayor.length() > 0){ps.setString(81,ga_bac_mayor);}else{ ps.setNull(81, Types.VARCHAR); }
                if(ga_glu_menor20!= null && ga_glu_menor20.length() > 0){ps.setInt(82,Integer.parseInt(ga_glu_menor20));}else{ ps.setNull(82, Types.INTEGER); }
                if(ga_glu_menor20_105!= null && ga_glu_menor20_105.length() > 0){ps.setString(83,ga_glu_menor20_105);}else{ ps.setNull(83, Types.VARCHAR); }
                if(ga_glu_mayor30!= null && ga_glu_mayor30.length() > 0){ps.setInt(84,Integer.parseInt(ga_glu_mayor30));}else{ ps.setNull(84, Types.INTEGER); }
                if(ga_glu_mayor30_105!= null && ga_glu_mayor30_105.length() > 0){ps.setString(85,ga_glu_mayor30_105);}else{ ps.setNull(85, Types.VARCHAR); }
                if(ga_vih_sol_menor20!= null && ga_vih_sol_menor20.length() > 0){ps.setString(86,ga_vih_sol_menor20);}else{ ps.setNull(86, Types.VARCHAR); }
                if(ga_vih_rea_menor20!= null && ga_vih_rea_menor20.length() > 0){ps.setString(87,ga_vih_rea_menor20);}else{ ps.setNull(87, Types.VARCHAR); }
                if(ga_vih_sol_mayor20!= null && ga_vih_sol_mayor20.length() > 0){ps.setString(88,ga_vih_sol_mayor20);}else{ ps.setNull(88, Types.VARCHAR); }
                if(ga_vih_rea_mayor20!= null && ga_vih_rea_mayor20.length() > 0){ps.setString(89,ga_vih_rea_mayor20);}else{ ps.setNull(89, Types.VARCHAR); }
                if(ga_hb_menor_20!= null && ga_hb_menor_20.length() > 0){ps.setFloat(90,Float.parseFloat(ga_hb_menor_20));}else{ ps.setNull(90, Types.DECIMAL); }
                if(ga_hb_menor_bajo!= null && ga_hb_menor_bajo.length() > 0){ps.setString(91,ga_hb_menor_bajo);}else{ ps.setNull(91, Types.VARCHAR); }
                if(ga_fe!= null && ga_fe.length() > 0){ps.setString(92,ga_fe);}else{ ps.setNull(92, Types.VARCHAR); }
                if(ga_folatos!= null && ga_folatos.length() > 0){ps.setString(93,ga_folatos);}else{ ps.setNull(93, Types.VARCHAR); }
                if(ga_hb_mayor_20!= null && ga_hb_mayor_20.length() > 0){ps.setFloat(94,Float.parseFloat(ga_hb_mayor_20));}else{ ps.setNull(94, Types.DECIMAL); }
                if(ga_hb_mayor_bajo!= null && ga_hb_mayor_bajo.length() > 0){ps.setString(95,ga_hb_mayor_bajo);}else{ ps.setNull(95, Types.VARCHAR); }
                if(ga_estreptococo!= null && ga_estreptococo.length() > 0){ps.setString(96,ga_estreptococo);}else{ ps.setNull(96, Types.VARCHAR); }
                if(ga_prepa_parto!= null && ga_prepa_parto.length() > 0){ps.setString(97,ga_prepa_parto);}else{ ps.setNull(97, Types.VARCHAR); }
                if(ga_consej_lactancia!= null && ga_consej_lactancia.length() > 0){ps.setString(98,ga_consej_lactancia);}else{ ps.setNull(98, Types.VARCHAR); }
                if(ga_sif_prue_notre_res_men!= null && ga_sif_prue_notre_res_men.length() > 0){ps.setString(99,ga_sif_prue_notre_res_men);}else{ ps.setNull(99, Types.VARCHAR); }
                if(ga_sif_prue_notre_sem_men!= null && ga_sif_prue_notre_sem_men.length() > 0){ps.setInt(100,Integer.parseInt(ga_sif_prue_notre_sem_men));}else{ ps.setNull(100, Types.INTEGER); }
                if(ga_sif_prue_notre_res_may!= null && ga_sif_prue_notre_res_may.length() > 0){ps.setString(101,ga_sif_prue_notre_res_may);}else{ ps.setNull(101, Types.VARCHAR); }
                if(ga_sif_prue_notre_sem_may!= null && ga_sif_prue_notre_sem_may.length() > 0){ps.setInt(102,Integer.parseInt(ga_sif_prue_notre_sem_may));}else{ ps.setNull(102, Types.INTEGER); }
                if(ga_sif_prue_tre_res_men!= null && ga_sif_prue_tre_res_men.length() > 0){ps.setString(103,ga_sif_prue_tre_res_men);}else{ ps.setNull(103, Types.VARCHAR); }
                if(ga_sif_prue_tre_sem_men!= null && ga_sif_prue_tre_sem_men.length() > 0){ps.setInt(104,Integer.parseInt(ga_sif_prue_tre_sem_men));}else{ ps.setNull(104, Types.INTEGER); }
                if(ga_sif_prue_tre_res_may!= null && ga_sif_prue_tre_res_may.length() > 0){ps.setString(105,ga_sif_prue_tre_res_may);}else{ ps.setNull(105, Types.VARCHAR); }
                if(ga_sif_prue_tre_sem_may!= null && ga_sif_prue_tre_sem_may.length() > 0){ps.setInt(106,Integer.parseInt(ga_sif_prue_tre_sem_may));}else{ ps.setNull(106, Types.INTEGER); }
                if(ga_sif_trat_menor!= null && ga_sif_trat_menor.length() > 0){ps.setString(107,ga_sif_trat_menor);}else{ ps.setNull(107, Types.VARCHAR); }
                if(ga_sif_trat_menor_sem!= null && ga_sif_trat_menor_sem.length() > 0){ps.setInt(108,Integer.parseInt(ga_sif_trat_menor_sem));}else{ ps.setNull(108, Types.INTEGER); }
                if(ga_sif_trat_mayor!= null && ga_sif_trat_mayor.length() > 0){ps.setString(109,ga_sif_trat_mayor);}else{ ps.setNull(109, Types.VARCHAR); }
                if(ga_sif_trat_mayor_sem!= null && ga_sif_trat_mayor_sem.length() > 0){ps.setInt(110,Integer.parseInt(ga_sif_trat_mayor_sem));}else{ ps.setNull(110, Types.INTEGER); }
                if(ga_sif_trat_par_menor!= null && ga_sif_trat_par_menor.length() > 0){ps.setString(111,ga_sif_trat_par_menor);}else{ ps.setNull(111, Types.VARCHAR); }
                if(ga_sif_trat_par_mayor!= null && ga_sif_trat_par_mayor.length() > 0){ps.setString(112,ga_sif_trat_par_mayor);}else{ ps.setNull(112, Types.VARCHAR); }
                int resHcp = 0;
                resHcp = ps.executeUpdate();
                 
                if(resHcp!= 0){
                    //Ingresamos el nuevo registro de consultas antenatales
                    String sqlCA = "INSERT INTO public.consultas_antenatales(\n" +
                                    "	ghcp_id, ca_fecha, ca_edad_ges, ca_peso, ca_pa, ca_altura_uterina, ca_presentacion, ca_fcp, ca_mov_fetales, ca_proteinuria, ca_signos_notas, ca_iniciales_tecnico, ca_prox_cita)\n" +
                                    "	VALUES (?, now(), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
                    ps = c.getConecction().prepareStatement(sqlCA);
                    ps.setInt(1, Integer.parseInt(ghcp_id));
                    ps.setInt(2, Integer.parseInt(ca_edad_ges));
                    ps.setFloat(3, Float.parseFloat(ca_peso));
                    ps.setInt(4, Integer.parseInt(ca_pa));
                    ps.setString(5, ca_altura_uterina);
                    ps.setString(6, ca_presentacion);
                    ps.setString(7, ca_FCP);
                    ps.setString(8, ca_mov_fetales);
                    ps.setString(9, ca_proteinuria);
                    ps.setString(10, ca_signos_notas);
                    ps.setString(11, ca_iniciales_tecnico);
                    ps.setDate(12, Date.valueOf(ca_prox_cita));
                    int resCA = 0;
                    resCA = ps.executeUpdate();
                    
                    
                    
                    //Ingresamos registro de valoracion //verificamos si se esta haciendo el registro de aquello
                    if(Integer.parseInt(ant_consulta_1) <= 26){
                        String sqlImc = "INSERT INTO public.imc_seguimiento(\n" +
                                        "   ghcp_id, imc_semana, imc_imc, imc_ganancia)\n" +
                                        "	VALUES (?, ?, ?, ?);";
                        ps = c.getConecction().prepareStatement(sqlImc);
                        ps.setInt(1, Integer.parseInt(ghcp_id));
                        ps.setInt(2, Integer.parseInt(imc_semana));
                        ps.setFloat(3, Float.parseFloat(imc_peso));
                        ps.setFloat(4, Float.parseFloat(imc_rango));
                        int resIMC = 0;
                        resIMC = ps.executeUpdate();
                    }
                    
                    
                    //Ingresamos los signos vitales
                    String sqlSignos = "INSERT INTO public.signos_vitales(\n" +
                                    "	paciente_id, galeno_id, pa_sistolica, pa_diastolica, temperatura, frecuencia_cardiaca, saturacion, peso, estatura, imc, fecha, hora)\n" +
                                    "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now(), now());";

                    ps = c.getConecction().prepareStatement(sqlSignos, Statement.RETURN_GENERATED_KEYS);
                    ps.setInt(1, Integer.parseInt(pacienteid));
                    ps.setInt(2, Integer.parseInt(galenoid));
                    ps.setInt(3, Integer.parseInt(presion_arterial_s_seg));
                    ps.setInt(4, Integer.parseInt(presion_arterial_d_seg));
                    ps.setFloat(5, Float.parseFloat(temperatura_seg));
                    ps.setInt(6, Integer.parseInt(frecuencia_cardiaca_seg));
                    ps.setInt(7, Integer.parseInt(saturacion_seg));
                    ps.setFloat(8, Float.parseFloat(peso_seg));
                    ps.setInt(9, Integer.parseInt(estatura_seg));
                    ps.setFloat(10, Float.parseFloat(imc_seg));
                    int resSignos = 0;
                    resSignos = ps.executeUpdate();
                    
                    if(resSignos != 0){
                        int id_signos = 0;
                        ResultSet resultSet = ps.getGeneratedKeys();
                        if (resultSet.next()) {
                            id_signos = resultSet.getInt(1);

                            //Verificar datos de receta medica y guardar
                            if(receta.length() > 2){
                                int idR = -1;
                                String Sqlreceta = "INSERT INTO recetamedica(galeno_id, paciente_id, fecha)\n" +
                                            "	VALUES (?, ?, now())";
                                ps = c.getConecction().prepareStatement(Sqlreceta, Statement.RETURN_GENERATED_KEYS);
                                ps.setInt(1, Integer.parseInt(galenoid));
                                ps.setInt(2, Integer.parseInt(pacienteid));
                                int resRec = 0;
                                resRec = ps.executeUpdate();
                                if (resRec != 0) {
                                    ResultSet resultSetRec = ps.getGeneratedKeys();
                                    if (resultSetRec.next()) {
                                        idR = resultSetRec.getInt(1);

                                        String jsonR  = prepararjson(receta);
                                        JSONArray array = new JSONArray(jsonR);
                                        for(int i = 0; i < array.length(); i++){
                                            JSONObject object = array.getJSONObject(i);
                                            String medicamento = object.getString("medicamento");
                                            String indicacion_ = object.getString("indicacion");

                                            //Guardado de Receta medica
                                            String sqlDetReceta = "INSERT INTO detalle_recetamedica(id_recetamedica, medicamento, indicaciones)\n" +
                                                            "	VALUES (?, ?, ?)";
                                            ps = c.getConecction().prepareStatement(sqlDetReceta);
                                            ps.setInt(1, idR);
                                            ps.setString(2, medicamento);
                                            ps.setString(3, indicacion_);
                                            int resRe = 0;

                                            resRe = ps.executeUpdate();
                                        }
                                    }
                                }
                                // Guardar Notas de evolucion con receta
                                int aaaa = idR;
                                String sqlNotas = "INSERT INTO public.ginecologia_seguimiento(\n" +
                                                "	ghc_id, signos_id, id_recetamedica, notas, fecha, hora, examen)\n" +
                                                "	VALUES (?, ?, ?, ?, now(), now(), ?);";
                                ps = c.getConecction().prepareStatement(sqlNotas);
                                ps.setInt(1, Integer.parseInt(ghc_id));
                                ps.setInt(2, id_signos);
                                ps.setInt(3, idR);
                                ps.setString(4, notas);
                                if(checkcito_examen.equals("on")) { ps.setBoolean(5, true); }else { ps.setBoolean(5, false);}
                                int resSe = 0;
                                resSe = ps.executeUpdate();
                                if(resSe!= 0){
                                    response.sendRedirect("MenuGinecologia.jsp");
                                }
                            }else{
                                // Guardar Notas de evolucion sin receta
                                String sqlNotas = "INSERT INTO public.ginecologia_seguimiento(\n" +
                                                    "	ghc_id, signos_id, notas, fecha, hora, examen)\n" +
                                                    "	VALUES (?, ?, ?, now(), now(), ?);";
                                    ps = c.getConecction().prepareStatement(sqlNotas);
                                    ps.setInt(1, Integer.parseInt(ghc_id));
                                    ps.setInt(2, id_signos);
                                    ps.setString(3, notas);
                                    if(checkcito_examen.equals("on")) { ps.setBoolean(4, true); }else { ps.setBoolean(4, false);}
                                int resSe = 0;
                                resSe = ps.executeUpdate();
                                if(resSe!= 0){
                                    response.sendRedirect("MenuGinecologia.jsp");
                                }
                            }
                        }
                    }
                    /*
                    
                    response.sendRedirect("MenuGinecologia.jsp");
                    */
                    
                    
                }


            //response.sendRedirect(request.getContextPath() + "/Principal.jsp");

            } catch (SQLException e) {
                out.println("Exception01: " + e);
                System.out.println("Exception1: " + e);
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                } catch (SQLException e) {
                    out.println(e);
                }
            }
            
            
            

        } catch (IOException e) {
            out.println("Exception: " + e);
            System.out.println("Exception2: " + e);
        }
    }
    protected String prepararjson(String s){
        s = s.replaceAll("<", "[");
        s = s.replaceAll(">", "]");
        s = s.replaceAll("\\(", "{");
        s = s.replaceAll("\\)", "}");
        return s;
    }

}
