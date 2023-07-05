/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Sebastian Carvajal
 */
public class HcPerinatal {
    private String ghcp_id, ghc_id,
                per_alfa_beta ,
                per_vive_sola,
                af_tbc,
                af_diabetes,
                af_diabetes_grado,
                af_hipertension,
                af_preeclampsia,
                af_eclampsia,
                af_ocmg,
                af_ocmg_desc,
                ap_tbc,
                ap_diabetes,
                ap_diabetes_grado,
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
                ga_glu_menor20_105,
                ga_glu_mayor30,
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
                imc_rango;

    public HcPerinatal() {
    }

    public HcPerinatal(String ghcp_id, String ghc_id, String per_alfa_beta, String per_vive_sola, String af_tbc, String af_diabetes, String af_diabetes_grado, String af_hipertension, String af_preeclampsia, String af_eclampsia, String af_ocmg, String af_ocmg_desc, String ap_tbc, String ap_diabetes, String ap_diabetes_grado, String ap_hipertension, String ap_preeclampsia, String ap_eclampsia, String ap_ocmg, String ap_ocmg_desc, String ap_cirugia_gu, String ap_infertilidad, String ap_cardiopat, String ap_nefropatia, String ap_violencia, String ao_up_nc, String ao_up_normal, String ao_ant_gem, String ao_gestas_previas, String ao_emb_ectopico, String ao_abortos, String ao_abortos_cons, String ao_partos, String ao_partos_vag, String ao_partos_ces, String ao_nac_vivos, String ao_nac_muertos, String ao_viven, String ao_nac_muer_ant, String ao_nac_muer_des, String ao_fin_emb_ant, String ao_emb_planeado, String ao_fma, String ga_peso, String ga_talla, String ga_fum, String ga_fpp, String ga_egconf_fum, String ga_egconf_eco, String ga_fuma_act_uno, String ga_fuma_pas_uno, String ga_drogas_uno, String ga_alcohol_uno, String ga_violencia_uno, String ga_fuma_act_dos, String ga_fuma_pas_dos, String ga_drogas_dos, String ga_alcohol_dos, String ga_violencia_dos, String ga_fuma_act_tres, String ga_fuma_pas_tres, String ga_drogas_tres, String ga_alcohol_tres, String ga_violencia_tres, String ga_antitet, String ga_antitet_dosis_uno, String ga_antitet_dosis_dos, String ga_antirubeola, String ga_exnormal_odont, String ga_exnormal_mamas, String ga_cervix_insp, String ga_cervix_pap, String ga_cervix_colp, String ga_san_grupo, String ga_san_rh, String ga_san_inmuniz, String ga_san_globulina, String ga_toxo_menor, String ga_toxo_mayor, String ga_toxo_prim_cons, String ga_chagas, String ga_pal_mal, String ga_bac_menor, String ga_bac_mayor, String ga_glu_menor20, String ga_glu_menor20_105, String ga_glu_mayor30, String ga_glu_mayor30_105, String ga_vih_sol_menor20, String ga_vih_rea_menor20, String ga_vih_sol_mayor20, String ga_vih_rea_mayor20, String ga_hb_menor_20, String ga_hb_menor_bajo, String ga_fe, String ga_folatos, String ga_hb_mayor_20, String ga_hb_mayor_bajo, String ga_estreptococo, String ga_prepa_parto, String ga_consej_lactancia, String ga_sif_prue_notre_res_men, String ga_sif_prue_notre_sem_men, String ga_sif_prue_notre_res_may, String ga_sif_prue_notre_sem_may, String ga_sif_prue_tre_res_men, String ga_sif_prue_tre_sem_men, String ga_sif_prue_tre_res_may, String ga_sif_prue_tre_sem_may, String ga_sif_trat_menor, String ga_sif_trat_menor_sem, String ga_sif_trat_mayor, String ga_sif_trat_mayor_sem, String ga_sif_trat_par_menor, String ga_sif_trat_par_mayor, String imc_valor_inicial, String imc_rango) {
        this.ghcp_id = ghcp_id;
        this.ghc_id = ghc_id;
        this.per_alfa_beta = per_alfa_beta;
        this.per_vive_sola = per_vive_sola;
        this.af_tbc = af_tbc;
        this.af_diabetes = af_diabetes;
        this.af_diabetes_grado = af_diabetes_grado;
        this.af_hipertension = af_hipertension;
        this.af_preeclampsia = af_preeclampsia;
        this.af_eclampsia = af_eclampsia;
        this.af_ocmg = af_ocmg;
        this.af_ocmg_desc = af_ocmg_desc;
        this.ap_tbc = ap_tbc;
        this.ap_diabetes = ap_diabetes;
        this.ap_diabetes_grado = ap_diabetes_grado;
        this.ap_hipertension = ap_hipertension;
        this.ap_preeclampsia = ap_preeclampsia;
        this.ap_eclampsia = ap_eclampsia;
        this.ap_ocmg = ap_ocmg;
        this.ap_ocmg_desc = ap_ocmg_desc;
        this.ap_cirugia_gu = ap_cirugia_gu;
        this.ap_infertilidad = ap_infertilidad;
        this.ap_cardiopat = ap_cardiopat;
        this.ap_nefropatia = ap_nefropatia;
        this.ap_violencia = ap_violencia;
        this.ao_up_nc = ao_up_nc;
        this.ao_up_normal = ao_up_normal;
        this.ao_ant_gem = ao_ant_gem;
        this.ao_gestas_previas = ao_gestas_previas;
        this.ao_emb_ectopico = ao_emb_ectopico;
        this.ao_abortos = ao_abortos;
        this.ao_abortos_cons = ao_abortos_cons;
        this.ao_partos = ao_partos;
        this.ao_partos_vag = ao_partos_vag;
        this.ao_partos_ces = ao_partos_ces;
        this.ao_nac_vivos = ao_nac_vivos;
        this.ao_nac_muertos = ao_nac_muertos;
        this.ao_viven = ao_viven;
        this.ao_nac_muer_ant = ao_nac_muer_ant;
        this.ao_nac_muer_des = ao_nac_muer_des;
        this.ao_fin_emb_ant = ao_fin_emb_ant;
        this.ao_emb_planeado = ao_emb_planeado;
        this.ao_fma = ao_fma;
        this.ga_peso = ga_peso;
        this.ga_talla = ga_talla;
        this.ga_fum = ga_fum;
        this.ga_fpp = ga_fpp;
        this.ga_egconf_fum = ga_egconf_fum;
        this.ga_egconf_eco = ga_egconf_eco;
        this.ga_fuma_act_uno = ga_fuma_act_uno;
        this.ga_fuma_pas_uno = ga_fuma_pas_uno;
        this.ga_drogas_uno = ga_drogas_uno;
        this.ga_alcohol_uno = ga_alcohol_uno;
        this.ga_violencia_uno = ga_violencia_uno;
        this.ga_fuma_act_dos = ga_fuma_act_dos;
        this.ga_fuma_pas_dos = ga_fuma_pas_dos;
        this.ga_drogas_dos = ga_drogas_dos;
        this.ga_alcohol_dos = ga_alcohol_dos;
        this.ga_violencia_dos = ga_violencia_dos;
        this.ga_fuma_act_tres = ga_fuma_act_tres;
        this.ga_fuma_pas_tres = ga_fuma_pas_tres;
        this.ga_drogas_tres = ga_drogas_tres;
        this.ga_alcohol_tres = ga_alcohol_tres;
        this.ga_violencia_tres = ga_violencia_tres;
        this.ga_antitet = ga_antitet;
        this.ga_antitet_dosis_uno = ga_antitet_dosis_uno;
        this.ga_antitet_dosis_dos = ga_antitet_dosis_dos;
        this.ga_antirubeola = ga_antirubeola;
        this.ga_exnormal_odont = ga_exnormal_odont;
        this.ga_exnormal_mamas = ga_exnormal_mamas;
        this.ga_cervix_insp = ga_cervix_insp;
        this.ga_cervix_pap = ga_cervix_pap;
        this.ga_cervix_colp = ga_cervix_colp;
        this.ga_san_grupo = ga_san_grupo;
        this.ga_san_rh = ga_san_rh;
        this.ga_san_inmuniz = ga_san_inmuniz;
        this.ga_san_globulina = ga_san_globulina;
        this.ga_toxo_menor = ga_toxo_menor;
        this.ga_toxo_mayor = ga_toxo_mayor;
        this.ga_toxo_prim_cons = ga_toxo_prim_cons;
        this.ga_chagas = ga_chagas;
        this.ga_pal_mal = ga_pal_mal;
        this.ga_bac_menor = ga_bac_menor;
        this.ga_bac_mayor = ga_bac_mayor;
        this.ga_glu_menor20 = ga_glu_menor20;
        this.ga_glu_menor20_105 = ga_glu_menor20_105;
        this.ga_glu_mayor30 = ga_glu_mayor30;
        this.ga_glu_mayor30_105 = ga_glu_mayor30_105;
        this.ga_vih_sol_menor20 = ga_vih_sol_menor20;
        this.ga_vih_rea_menor20 = ga_vih_rea_menor20;
        this.ga_vih_sol_mayor20 = ga_vih_sol_mayor20;
        this.ga_vih_rea_mayor20 = ga_vih_rea_mayor20;
        this.ga_hb_menor_20 = ga_hb_menor_20;
        this.ga_hb_menor_bajo = ga_hb_menor_bajo;
        this.ga_fe = ga_fe;
        this.ga_folatos = ga_folatos;
        this.ga_hb_mayor_20 = ga_hb_mayor_20;
        this.ga_hb_mayor_bajo = ga_hb_mayor_bajo;
        this.ga_estreptococo = ga_estreptococo;
        this.ga_prepa_parto = ga_prepa_parto;
        this.ga_consej_lactancia = ga_consej_lactancia;
        this.ga_sif_prue_notre_res_men = ga_sif_prue_notre_res_men;
        this.ga_sif_prue_notre_sem_men = ga_sif_prue_notre_sem_men;
        this.ga_sif_prue_notre_res_may = ga_sif_prue_notre_res_may;
        this.ga_sif_prue_notre_sem_may = ga_sif_prue_notre_sem_may;
        this.ga_sif_prue_tre_res_men = ga_sif_prue_tre_res_men;
        this.ga_sif_prue_tre_sem_men = ga_sif_prue_tre_sem_men;
        this.ga_sif_prue_tre_res_may = ga_sif_prue_tre_res_may;
        this.ga_sif_prue_tre_sem_may = ga_sif_prue_tre_sem_may;
        this.ga_sif_trat_menor = ga_sif_trat_menor;
        this.ga_sif_trat_menor_sem = ga_sif_trat_menor_sem;
        this.ga_sif_trat_mayor = ga_sif_trat_mayor;
        this.ga_sif_trat_mayor_sem = ga_sif_trat_mayor_sem;
        this.ga_sif_trat_par_menor = ga_sif_trat_par_menor;
        this.ga_sif_trat_par_mayor = ga_sif_trat_par_mayor;
        this.imc_valor_inicial = imc_valor_inicial;
        this.imc_rango = imc_rango;
    }

    public String getGhcp_id() {
        return ghcp_id;
    }

    public void setGhcp_id(String ghcp_id) {
        this.ghcp_id = ghcp_id;
    }

    public String getGhc_id() {
        return ghc_id;
    }

    public void setGhc_id(String ghc_id) {
        this.ghc_id = ghc_id;
    }

    public String getPer_alfa_beta() {
        return per_alfa_beta;
    }

    public void setPer_alfa_beta(String per_alfa_beta) {
        this.per_alfa_beta = per_alfa_beta;
    }

    public String getPer_vive_sola() {
        return per_vive_sola;
    }

    public void setPer_vive_sola(String per_vive_sola) {
        this.per_vive_sola = per_vive_sola;
    }

    public String getAf_tbc() {
        return af_tbc;
    }

    public void setAf_tbc(String af_tbc) {
        this.af_tbc = af_tbc;
    }

    public String getAf_diabetes() {
        return af_diabetes;
    }

    public void setAf_diabetes(String af_diabetes) {
        this.af_diabetes = af_diabetes;
    }

    public String getAf_diabetes_grado() {
        return af_diabetes_grado;
    }

    public void setAf_diabetes_grado(String af_diabetes_grado) {
        this.af_diabetes_grado = af_diabetes_grado;
    }

    public String getAf_hipertension() {
        return af_hipertension;
    }

    public void setAf_hipertension(String af_hipertension) {
        this.af_hipertension = af_hipertension;
    }

    public String getAf_preeclampsia() {
        return af_preeclampsia;
    }

    public void setAf_preeclampsia(String af_preeclampsia) {
        this.af_preeclampsia = af_preeclampsia;
    }

    public String getAf_eclampsia() {
        return af_eclampsia;
    }

    public void setAf_eclampsia(String af_eclampsia) {
        this.af_eclampsia = af_eclampsia;
    }

    public String getAf_ocmg() {
        return af_ocmg;
    }

    public void setAf_ocmg(String af_ocmg) {
        this.af_ocmg = af_ocmg;
    }

    public String getAf_ocmg_desc() {
        return af_ocmg_desc;
    }

    public void setAf_ocmg_desc(String af_ocmg_desc) {
        this.af_ocmg_desc = af_ocmg_desc;
    }

    public String getAp_tbc() {
        return ap_tbc;
    }

    public void setAp_tbc(String ap_tbc) {
        this.ap_tbc = ap_tbc;
    }

    public String getAp_diabetes() {
        return ap_diabetes;
    }

    public void setAp_diabetes(String ap_diabetes) {
        this.ap_diabetes = ap_diabetes;
    }

    public String getAp_diabetes_grado() {
        return ap_diabetes_grado;
    }

    public void setAp_diabetes_grado(String ap_diabetes_grado) {
        this.ap_diabetes_grado = ap_diabetes_grado;
    }

    public String getAp_hipertension() {
        return ap_hipertension;
    }

    public void setAp_hipertension(String ap_hipertension) {
        this.ap_hipertension = ap_hipertension;
    }

    public String getAp_preeclampsia() {
        return ap_preeclampsia;
    }

    public void setAp_preeclampsia(String ap_preeclampsia) {
        this.ap_preeclampsia = ap_preeclampsia;
    }

    public String getAp_eclampsia() {
        return ap_eclampsia;
    }

    public void setAp_eclampsia(String ap_eclampsia) {
        this.ap_eclampsia = ap_eclampsia;
    }

    public String getAp_ocmg() {
        return ap_ocmg;
    }

    public void setAp_ocmg(String ap_ocmg) {
        this.ap_ocmg = ap_ocmg;
    }

    public String getAp_ocmg_desc() {
        return ap_ocmg_desc;
    }

    public void setAp_ocmg_desc(String ap_ocmg_desc) {
        this.ap_ocmg_desc = ap_ocmg_desc;
    }

    public String getAp_cirugia_gu() {
        return ap_cirugia_gu;
    }

    public void setAp_cirugia_gu(String ap_cirugia_gu) {
        this.ap_cirugia_gu = ap_cirugia_gu;
    }

    public String getAp_infertilidad() {
        return ap_infertilidad;
    }

    public void setAp_infertilidad(String ap_infertilidad) {
        this.ap_infertilidad = ap_infertilidad;
    }

    public String getAp_cardiopat() {
        return ap_cardiopat;
    }

    public void setAp_cardiopat(String ap_cardiopat) {
        this.ap_cardiopat = ap_cardiopat;
    }

    public String getAp_nefropatia() {
        return ap_nefropatia;
    }

    public void setAp_nefropatia(String ap_nefropatia) {
        this.ap_nefropatia = ap_nefropatia;
    }

    public String getAp_violencia() {
        return ap_violencia;
    }

    public void setAp_violencia(String ap_violencia) {
        this.ap_violencia = ap_violencia;
    }

    public String getAo_up_nc() {
        return ao_up_nc;
    }

    public void setAo_up_nc(String ao_up_nc) {
        this.ao_up_nc = ao_up_nc;
    }

    public String getAo_up_normal() {
        return ao_up_normal;
    }

    public void setAo_up_normal(String ao_up_normal) {
        this.ao_up_normal = ao_up_normal;
    }

    public String getAo_ant_gem() {
        return ao_ant_gem;
    }

    public void setAo_ant_gem(String ao_ant_gem) {
        this.ao_ant_gem = ao_ant_gem;
    }

    public String getAo_gestas_previas() {
        return ao_gestas_previas;
    }

    public void setAo_gestas_previas(String ao_gestas_previas) {
        this.ao_gestas_previas = ao_gestas_previas;
    }

    public String getAo_emb_ectopico() {
        return ao_emb_ectopico;
    }

    public void setAo_emb_ectopico(String ao_emb_ectopico) {
        this.ao_emb_ectopico = ao_emb_ectopico;
    }

    public String getAo_abortos() {
        return ao_abortos;
    }

    public void setAo_abortos(String ao_abortos) {
        this.ao_abortos = ao_abortos;
    }

    public String getAo_abortos_cons() {
        return ao_abortos_cons;
    }

    public void setAo_abortos_cons(String ao_abortos_cons) {
        this.ao_abortos_cons = ao_abortos_cons;
    }

    public String getAo_partos() {
        return ao_partos;
    }

    public void setAo_partos(String ao_partos) {
        this.ao_partos = ao_partos;
    }

    public String getAo_partos_vag() {
        return ao_partos_vag;
    }

    public void setAo_partos_vag(String ao_partos_vag) {
        this.ao_partos_vag = ao_partos_vag;
    }

    public String getAo_partos_ces() {
        return ao_partos_ces;
    }

    public void setAo_partos_ces(String ao_partos_ces) {
        this.ao_partos_ces = ao_partos_ces;
    }

    public String getAo_nac_vivos() {
        return ao_nac_vivos;
    }

    public void setAo_nac_vivos(String ao_nac_vivos) {
        this.ao_nac_vivos = ao_nac_vivos;
    }

    public String getAo_nac_muertos() {
        return ao_nac_muertos;
    }

    public void setAo_nac_muertos(String ao_nac_muertos) {
        this.ao_nac_muertos = ao_nac_muertos;
    }

    public String getAo_viven() {
        return ao_viven;
    }

    public void setAo_viven(String ao_viven) {
        this.ao_viven = ao_viven;
    }

    public String getAo_nac_muer_ant() {
        return ao_nac_muer_ant;
    }

    public void setAo_nac_muer_ant(String ao_nac_muer_ant) {
        this.ao_nac_muer_ant = ao_nac_muer_ant;
    }

    public String getAo_nac_muer_des() {
        return ao_nac_muer_des;
    }

    public void setAo_nac_muer_des(String ao_nac_muer_des) {
        this.ao_nac_muer_des = ao_nac_muer_des;
    }

    public String getAo_fin_emb_ant() {
        return ao_fin_emb_ant;
    }

    public void setAo_fin_emb_ant(String ao_fin_emb_ant) {
        this.ao_fin_emb_ant = ao_fin_emb_ant;
    }

    public String getAo_emb_planeado() {
        return ao_emb_planeado;
    }

    public void setAo_emb_planeado(String ao_emb_planeado) {
        this.ao_emb_planeado = ao_emb_planeado;
    }

    public String getAo_fma() {
        return ao_fma;
    }

    public void setAo_fma(String ao_fma) {
        this.ao_fma = ao_fma;
    }

    public String getGa_peso() {
        return ga_peso;
    }

    public void setGa_peso(String ga_peso) {
        this.ga_peso = ga_peso;
    }

    public String getGa_talla() {
        return ga_talla;
    }

    public void setGa_talla(String ga_talla) {
        this.ga_talla = ga_talla;
    }

    public String getGa_fum() {
        return ga_fum;
    }

    public void setGa_fum(String ga_fum) {
        this.ga_fum = ga_fum;
    }

    public String getGa_fpp() {
        return ga_fpp;
    }

    public void setGa_fpp(String ga_fpp) {
        this.ga_fpp = ga_fpp;
    }

    public String getGa_egconf_fum() {
        return ga_egconf_fum;
    }

    public void setGa_egconf_fum(String ga_egconf_fum) {
        this.ga_egconf_fum = ga_egconf_fum;
    }

    public String getGa_egconf_eco() {
        return ga_egconf_eco;
    }

    public void setGa_egconf_eco(String ga_egconf_eco) {
        this.ga_egconf_eco = ga_egconf_eco;
    }

    public String getGa_fuma_act_uno() {
        return ga_fuma_act_uno;
    }

    public void setGa_fuma_act_uno(String ga_fuma_act_uno) {
        this.ga_fuma_act_uno = ga_fuma_act_uno;
    }

    public String getGa_fuma_pas_uno() {
        return ga_fuma_pas_uno;
    }

    public void setGa_fuma_pas_uno(String ga_fuma_pas_uno) {
        this.ga_fuma_pas_uno = ga_fuma_pas_uno;
    }

    public String getGa_drogas_uno() {
        return ga_drogas_uno;
    }

    public void setGa_drogas_uno(String ga_drogas_uno) {
        this.ga_drogas_uno = ga_drogas_uno;
    }

    public String getGa_alcohol_uno() {
        return ga_alcohol_uno;
    }

    public void setGa_alcohol_uno(String ga_alcohol_uno) {
        this.ga_alcohol_uno = ga_alcohol_uno;
    }

    public String getGa_violencia_uno() {
        return ga_violencia_uno;
    }

    public void setGa_violencia_uno(String ga_violencia_uno) {
        this.ga_violencia_uno = ga_violencia_uno;
    }

    public String getGa_fuma_act_dos() {
        return ga_fuma_act_dos;
    }

    public void setGa_fuma_act_dos(String ga_fuma_act_dos) {
        this.ga_fuma_act_dos = ga_fuma_act_dos;
    }

    public String getGa_fuma_pas_dos() {
        return ga_fuma_pas_dos;
    }

    public void setGa_fuma_pas_dos(String ga_fuma_pas_dos) {
        this.ga_fuma_pas_dos = ga_fuma_pas_dos;
    }

    public String getGa_drogas_dos() {
        return ga_drogas_dos;
    }

    public void setGa_drogas_dos(String ga_drogas_dos) {
        this.ga_drogas_dos = ga_drogas_dos;
    }

    public String getGa_alcohol_dos() {
        return ga_alcohol_dos;
    }

    public void setGa_alcohol_dos(String ga_alcohol_dos) {
        this.ga_alcohol_dos = ga_alcohol_dos;
    }

    public String getGa_violencia_dos() {
        return ga_violencia_dos;
    }

    public void setGa_violencia_dos(String ga_violencia_dos) {
        this.ga_violencia_dos = ga_violencia_dos;
    }

    public String getGa_fuma_act_tres() {
        return ga_fuma_act_tres;
    }

    public void setGa_fuma_act_tres(String ga_fuma_act_tres) {
        this.ga_fuma_act_tres = ga_fuma_act_tres;
    }

    public String getGa_fuma_pas_tres() {
        return ga_fuma_pas_tres;
    }

    public void setGa_fuma_pas_tres(String ga_fuma_pas_tres) {
        this.ga_fuma_pas_tres = ga_fuma_pas_tres;
    }

    public String getGa_drogas_tres() {
        return ga_drogas_tres;
    }

    public void setGa_drogas_tres(String ga_drogas_tres) {
        this.ga_drogas_tres = ga_drogas_tres;
    }

    public String getGa_alcohol_tres() {
        return ga_alcohol_tres;
    }

    public void setGa_alcohol_tres(String ga_alcohol_tres) {
        this.ga_alcohol_tres = ga_alcohol_tres;
    }

    public String getGa_violencia_tres() {
        return ga_violencia_tres;
    }

    public void setGa_violencia_tres(String ga_violencia_tres) {
        this.ga_violencia_tres = ga_violencia_tres;
    }

    public String getGa_antitet() {
        return ga_antitet;
    }

    public void setGa_antitet(String ga_antitet) {
        this.ga_antitet = ga_antitet;
    }

    public String getGa_antitet_dosis_uno() {
        return ga_antitet_dosis_uno;
    }

    public void setGa_antitet_dosis_uno(String ga_antitet_dosis_uno) {
        this.ga_antitet_dosis_uno = ga_antitet_dosis_uno;
    }

    public String getGa_antitet_dosis_dos() {
        return ga_antitet_dosis_dos;
    }

    public void setGa_antitet_dosis_dos(String ga_antitet_dosis_dos) {
        this.ga_antitet_dosis_dos = ga_antitet_dosis_dos;
    }

    public String getGa_antirubeola() {
        return ga_antirubeola;
    }

    public void setGa_antirubeola(String ga_antirubeola) {
        this.ga_antirubeola = ga_antirubeola;
    }

    public String getGa_exnormal_odont() {
        return ga_exnormal_odont;
    }

    public void setGa_exnormal_odont(String ga_exnormal_odont) {
        this.ga_exnormal_odont = ga_exnormal_odont;
    }

    public String getGa_exnormal_mamas() {
        return ga_exnormal_mamas;
    }

    public void setGa_exnormal_mamas(String ga_exnormal_mamas) {
        this.ga_exnormal_mamas = ga_exnormal_mamas;
    }

    public String getGa_cervix_insp() {
        return ga_cervix_insp;
    }

    public void setGa_cervix_insp(String ga_cervix_insp) {
        this.ga_cervix_insp = ga_cervix_insp;
    }

    public String getGa_cervix_pap() {
        return ga_cervix_pap;
    }

    public void setGa_cervix_pap(String ga_cervix_pap) {
        this.ga_cervix_pap = ga_cervix_pap;
    }

    public String getGa_cervix_colp() {
        return ga_cervix_colp;
    }

    public void setGa_cervix_colp(String ga_cervix_colp) {
        this.ga_cervix_colp = ga_cervix_colp;
    }

    public String getGa_san_grupo() {
        return ga_san_grupo;
    }

    public void setGa_san_grupo(String ga_san_grupo) {
        this.ga_san_grupo = ga_san_grupo;
    }

    public String getGa_san_rh() {
        return ga_san_rh;
    }

    public void setGa_san_rh(String ga_san_rh) {
        this.ga_san_rh = ga_san_rh;
    }

    public String getGa_san_inmuniz() {
        return ga_san_inmuniz;
    }

    public void setGa_san_inmuniz(String ga_san_inmuniz) {
        this.ga_san_inmuniz = ga_san_inmuniz;
    }

    public String getGa_san_globulina() {
        return ga_san_globulina;
    }

    public void setGa_san_globulina(String ga_san_globulina) {
        this.ga_san_globulina = ga_san_globulina;
    }

    public String getGa_toxo_menor() {
        return ga_toxo_menor;
    }

    public void setGa_toxo_menor(String ga_toxo_menor) {
        this.ga_toxo_menor = ga_toxo_menor;
    }

    public String getGa_toxo_mayor() {
        return ga_toxo_mayor;
    }

    public void setGa_toxo_mayor(String ga_toxo_mayor) {
        this.ga_toxo_mayor = ga_toxo_mayor;
    }

    public String getGa_toxo_prim_cons() {
        return ga_toxo_prim_cons;
    }

    public void setGa_toxo_prim_cons(String ga_toxo_prim_cons) {
        this.ga_toxo_prim_cons = ga_toxo_prim_cons;
    }

    public String getGa_chagas() {
        return ga_chagas;
    }

    public void setGa_chagas(String ga_chagas) {
        this.ga_chagas = ga_chagas;
    }

    public String getGa_pal_mal() {
        return ga_pal_mal;
    }

    public void setGa_pal_mal(String ga_pal_mal) {
        this.ga_pal_mal = ga_pal_mal;
    }

    public String getGa_bac_menor() {
        return ga_bac_menor;
    }

    public void setGa_bac_menor(String ga_bac_menor) {
        this.ga_bac_menor = ga_bac_menor;
    }

    public String getGa_bac_mayor() {
        return ga_bac_mayor;
    }

    public void setGa_bac_mayor(String ga_bac_mayor) {
        this.ga_bac_mayor = ga_bac_mayor;
    }

    public String getGa_glu_menor20() {
        return ga_glu_menor20;
    }

    public void setGa_glu_menor20(String ga_glu_menor20) {
        this.ga_glu_menor20 = ga_glu_menor20;
    }

    public String getGa_glu_menor20_105() {
        return ga_glu_menor20_105;
    }

    public void setGa_glu_menor20_105(String ga_glu_menor20_105) {
        this.ga_glu_menor20_105 = ga_glu_menor20_105;
    }

    public String getGa_glu_mayor30() {
        return ga_glu_mayor30;
    }

    public void setGa_glu_mayor30(String ga_glu_mayor30) {
        this.ga_glu_mayor30 = ga_glu_mayor30;
    }

    public String getGa_glu_mayor30_105() {
        return ga_glu_mayor30_105;
    }

    public void setGa_glu_mayor30_105(String ga_glu_mayor30_105) {
        this.ga_glu_mayor30_105 = ga_glu_mayor30_105;
    }

    public String getGa_vih_sol_menor20() {
        return ga_vih_sol_menor20;
    }

    public void setGa_vih_sol_menor20(String ga_vih_sol_menor20) {
        this.ga_vih_sol_menor20 = ga_vih_sol_menor20;
    }

    public String getGa_vih_rea_menor20() {
        return ga_vih_rea_menor20;
    }

    public void setGa_vih_rea_menor20(String ga_vih_rea_menor20) {
        this.ga_vih_rea_menor20 = ga_vih_rea_menor20;
    }

    public String getGa_vih_sol_mayor20() {
        return ga_vih_sol_mayor20;
    }

    public void setGa_vih_sol_mayor20(String ga_vih_sol_mayor20) {
        this.ga_vih_sol_mayor20 = ga_vih_sol_mayor20;
    }

    public String getGa_vih_rea_mayor20() {
        return ga_vih_rea_mayor20;
    }

    public void setGa_vih_rea_mayor20(String ga_vih_rea_mayor20) {
        this.ga_vih_rea_mayor20 = ga_vih_rea_mayor20;
    }

    public String getGa_hb_menor_20() {
        return ga_hb_menor_20;
    }

    public void setGa_hb_menor_20(String ga_hb_menor_20) {
        this.ga_hb_menor_20 = ga_hb_menor_20;
    }

    public String getGa_hb_menor_bajo() {
        return ga_hb_menor_bajo;
    }

    public void setGa_hb_menor_bajo(String ga_hb_menor_bajo) {
        this.ga_hb_menor_bajo = ga_hb_menor_bajo;
    }

    public String getGa_fe() {
        return ga_fe;
    }

    public void setGa_fe(String ga_fe) {
        this.ga_fe = ga_fe;
    }

    public String getGa_folatos() {
        return ga_folatos;
    }

    public void setGa_folatos(String ga_folatos) {
        this.ga_folatos = ga_folatos;
    }

    public String getGa_hb_mayor_20() {
        return ga_hb_mayor_20;
    }

    public void setGa_hb_mayor_20(String ga_hb_mayor_20) {
        this.ga_hb_mayor_20 = ga_hb_mayor_20;
    }

    public String getGa_hb_mayor_bajo() {
        return ga_hb_mayor_bajo;
    }

    public void setGa_hb_mayor_bajo(String ga_hb_mayor_bajo) {
        this.ga_hb_mayor_bajo = ga_hb_mayor_bajo;
    }

    public String getGa_estreptococo() {
        return ga_estreptococo;
    }

    public void setGa_estreptococo(String ga_estreptococo) {
        this.ga_estreptococo = ga_estreptococo;
    }

    public String getGa_prepa_parto() {
        return ga_prepa_parto;
    }

    public void setGa_prepa_parto(String ga_prepa_parto) {
        this.ga_prepa_parto = ga_prepa_parto;
    }

    public String getGa_consej_lactancia() {
        return ga_consej_lactancia;
    }

    public void setGa_consej_lactancia(String ga_consej_lactancia) {
        this.ga_consej_lactancia = ga_consej_lactancia;
    }

    public String getGa_sif_prue_notre_res_men() {
        return ga_sif_prue_notre_res_men;
    }

    public void setGa_sif_prue_notre_res_men(String ga_sif_prue_notre_res_men) {
        this.ga_sif_prue_notre_res_men = ga_sif_prue_notre_res_men;
    }

    public String getGa_sif_prue_notre_sem_men() {
        return ga_sif_prue_notre_sem_men;
    }

    public void setGa_sif_prue_notre_sem_men(String ga_sif_prue_notre_sem_men) {
        this.ga_sif_prue_notre_sem_men = ga_sif_prue_notre_sem_men;
    }

    public String getGa_sif_prue_notre_res_may() {
        return ga_sif_prue_notre_res_may;
    }

    public void setGa_sif_prue_notre_res_may(String ga_sif_prue_notre_res_may) {
        this.ga_sif_prue_notre_res_may = ga_sif_prue_notre_res_may;
    }

    public String getGa_sif_prue_notre_sem_may() {
        return ga_sif_prue_notre_sem_may;
    }

    public void setGa_sif_prue_notre_sem_may(String ga_sif_prue_notre_sem_may) {
        this.ga_sif_prue_notre_sem_may = ga_sif_prue_notre_sem_may;
    }

    public String getGa_sif_prue_tre_res_men() {
        return ga_sif_prue_tre_res_men;
    }

    public void setGa_sif_prue_tre_res_men(String ga_sif_prue_tre_res_men) {
        this.ga_sif_prue_tre_res_men = ga_sif_prue_tre_res_men;
    }

    public String getGa_sif_prue_tre_sem_men() {
        return ga_sif_prue_tre_sem_men;
    }

    public void setGa_sif_prue_tre_sem_men(String ga_sif_prue_tre_sem_men) {
        this.ga_sif_prue_tre_sem_men = ga_sif_prue_tre_sem_men;
    }

    public String getGa_sif_prue_tre_res_may() {
        return ga_sif_prue_tre_res_may;
    }

    public void setGa_sif_prue_tre_res_may(String ga_sif_prue_tre_res_may) {
        this.ga_sif_prue_tre_res_may = ga_sif_prue_tre_res_may;
    }

    public String getGa_sif_prue_tre_sem_may() {
        return ga_sif_prue_tre_sem_may;
    }

    public void setGa_sif_prue_tre_sem_may(String ga_sif_prue_tre_sem_may) {
        this.ga_sif_prue_tre_sem_may = ga_sif_prue_tre_sem_may;
    }

    public String getGa_sif_trat_menor() {
        return ga_sif_trat_menor;
    }

    public void setGa_sif_trat_menor(String ga_sif_trat_menor) {
        this.ga_sif_trat_menor = ga_sif_trat_menor;
    }

    public String getGa_sif_trat_menor_sem() {
        return ga_sif_trat_menor_sem;
    }

    public void setGa_sif_trat_menor_sem(String ga_sif_trat_menor_sem) {
        this.ga_sif_trat_menor_sem = ga_sif_trat_menor_sem;
    }

    public String getGa_sif_trat_mayor() {
        return ga_sif_trat_mayor;
    }

    public void setGa_sif_trat_mayor(String ga_sif_trat_mayor) {
        this.ga_sif_trat_mayor = ga_sif_trat_mayor;
    }

    public String getGa_sif_trat_mayor_sem() {
        return ga_sif_trat_mayor_sem;
    }

    public void setGa_sif_trat_mayor_sem(String ga_sif_trat_mayor_sem) {
        this.ga_sif_trat_mayor_sem = ga_sif_trat_mayor_sem;
    }

    public String getGa_sif_trat_par_menor() {
        return ga_sif_trat_par_menor;
    }

    public void setGa_sif_trat_par_menor(String ga_sif_trat_par_menor) {
        this.ga_sif_trat_par_menor = ga_sif_trat_par_menor;
    }

    public String getGa_sif_trat_par_mayor() {
        return ga_sif_trat_par_mayor;
    }

    public void setGa_sif_trat_par_mayor(String ga_sif_trat_par_mayor) {
        this.ga_sif_trat_par_mayor = ga_sif_trat_par_mayor;
    }

    public String getImc_valor_inicial() {
        return imc_valor_inicial;
    }

    public void setImc_valor_inicial(String imc_valor_inicial) {
        this.imc_valor_inicial = imc_valor_inicial;
    }

    public String getImc_rango() {
        return imc_rango;
    }

    public void setImc_rango(String imc_rango) {
        this.imc_rango = imc_rango;
    }
    
    

}
