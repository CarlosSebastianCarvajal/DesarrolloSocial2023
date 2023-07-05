/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.BuscadorHistoria_Gine;
import Model.HcPerinatal;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Miguel
 */

public class ConsultarHcp {

    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;

    public HcPerinatal BuscarHcp(String ghc_id) {
        HcPerinatal hcPerinatal = new HcPerinatal();
        pst = null;
        rs = null;
        try {
            sql_command = "select * from ginecologia_historia_clinica_per where ghc_id = " + ghc_id;
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                hcPerinatal.setGhcp_id(String.valueOf(rs.getString("ghcp_id")));
                hcPerinatal.setGhc_id(String.valueOf(rs.getString("ghc_id")));
                hcPerinatal.setPer_alfa_beta(String.valueOf(rs.getString("per_alfa_beta")));
                hcPerinatal.setPer_vive_sola(String.valueOf(rs.getString("per_vive_sola")));
                hcPerinatal.setAf_tbc(String.valueOf(rs.getString("af_tbc")));
                hcPerinatal.setAf_diabetes(String.valueOf(rs.getString("af_diabetes")));
                hcPerinatal.setAf_hipertension(String.valueOf(rs.getString("af_hipertension")));
                hcPerinatal.setAf_preeclampsia(String.valueOf(rs.getString("af_preeclampsia")));
                hcPerinatal.setAf_eclampsia(String.valueOf(rs.getString("af_eclampsia")));
                hcPerinatal.setAf_ocmg(String.valueOf(rs.getString("af_ocmg")));
                hcPerinatal.setAf_ocmg_desc(String.valueOf(rs.getString("af_ocmg_desc")));
                hcPerinatal.setAp_tbc(String.valueOf(rs.getString("ap_tbc")));
                hcPerinatal.setAp_diabetes(String.valueOf(rs.getString("ap_diabetes")));
                hcPerinatal.setAp_hipertension(String.valueOf(rs.getString("ap_hipertension")));
                hcPerinatal.setAp_preeclampsia(String.valueOf(rs.getString("ap_preeclampsia")));
                hcPerinatal.setAp_eclampsia(String.valueOf(rs.getString("ap_eclampsia")));
                hcPerinatal.setAp_ocmg(String.valueOf(rs.getString("ap_ocmg")));
                hcPerinatal.setAp_ocmg_desc(String.valueOf(rs.getString("ap_ocmg_desc")));
                hcPerinatal.setAp_cirugia_gu(String.valueOf(rs.getString("ap_cirugia_gu")));
                hcPerinatal.setAp_infertilidad(String.valueOf(rs.getString("ap_infertilidad")));
                hcPerinatal.setAp_cardiopat(String.valueOf(rs.getString("ap_cardiopat")));
                hcPerinatal.setAp_nefropatia(String.valueOf(rs.getString("ap_nefropatia")));
                hcPerinatal.setAp_violencia(String.valueOf(rs.getString("ap_violencia")));
                hcPerinatal.setAo_up_nc(String.valueOf(rs.getString("ao_up_nc")));
                hcPerinatal.setAo_up_normal(String.valueOf(rs.getString("ao_up_normal")));
                hcPerinatal.setAo_ant_gem(String.valueOf(rs.getString("ao_ant_gem")));
                hcPerinatal.setAo_gestas_previas(String.valueOf(rs.getString("ao_gestas_previas")));
                hcPerinatal.setAo_emb_ectopico(String.valueOf(rs.getString("ao_emb_ectopico")));
                hcPerinatal.setAo_abortos(String.valueOf(rs.getString("ao_abortos")));
                hcPerinatal.setAo_abortos_cons(String.valueOf(rs.getString("ao_abortos_cons")));
                hcPerinatal.setAo_partos(String.valueOf(rs.getString("ao_partos")));
                hcPerinatal.setAo_partos_vag(String.valueOf(rs.getString("ao_partos_vag")));
                hcPerinatal.setAo_partos_ces(String.valueOf(rs.getString("ao_partos_ces")));
                hcPerinatal.setAo_nac_vivos(String.valueOf(rs.getString("ao_nac_vivos")));
                hcPerinatal.setAo_nac_muertos(String.valueOf(rs.getString("ao_nac_muertos")));
                hcPerinatal.setAo_viven(String.valueOf(rs.getString("ao_viven")));
                hcPerinatal.setAo_nac_muer_ant(String.valueOf(rs.getString("ao_nac_muer_ant")));
                hcPerinatal.setAo_nac_muer_des(String.valueOf(rs.getString("ao_nac_muer_des")));
                hcPerinatal.setAo_fin_emb_ant(String.valueOf(rs.getString("ao_fin_emb_ant")));
                hcPerinatal.setAo_emb_planeado(String.valueOf(rs.getString("ao_emb_planeado")));
                hcPerinatal.setAo_fma(String.valueOf(rs.getString("ao_fma")));
                hcPerinatal.setGa_peso(String.valueOf(rs.getString("ga_peso")));
                hcPerinatal.setGa_talla(String.valueOf(rs.getString("ga_talla")));
                hcPerinatal.setGa_fum(String.valueOf(rs.getString("ga_fum")));
                hcPerinatal.setGa_fpp(String.valueOf(rs.getString("ga_fpp")));
                hcPerinatal.setGa_egconf_fum(String.valueOf(rs.getString("ga_egconf_fum")));
                hcPerinatal.setGa_egconf_eco(String.valueOf(rs.getString("ga_egconf_eco")));
                hcPerinatal.setGa_fuma_act_uno(String.valueOf(rs.getString("ga_fuma_act_uno")));
                hcPerinatal.setGa_fuma_pas_uno(String.valueOf(rs.getString("ga_fuma_pas_uno")));
                hcPerinatal.setGa_drogas_uno(String.valueOf(rs.getString("ga_drogas_uno")));
                hcPerinatal.setGa_alcohol_uno(String.valueOf(rs.getString("ga_alcohol_uno")));
                hcPerinatal.setGa_violencia_uno(String.valueOf(rs.getString("ga_violencia_uno")));
                hcPerinatal.setGa_fuma_act_dos(String.valueOf(rs.getString("ga_fuma_act_dos")));
                hcPerinatal.setGa_fuma_pas_dos(String.valueOf(rs.getString("ga_fuma_pas_dos")));
                hcPerinatal.setGa_drogas_dos(String.valueOf(rs.getString("ga_drogas_dos")));
                hcPerinatal.setGa_alcohol_dos(String.valueOf(rs.getString("ga_alcohol_dos")));
                hcPerinatal.setGa_violencia_dos(String.valueOf(rs.getString("ga_violencia_dos")));
                hcPerinatal.setGa_fuma_act_tres(String.valueOf(rs.getString("ga_fuma_act_tres")));
                hcPerinatal.setGa_fuma_pas_tres(String.valueOf(rs.getString("ga_fuma_pas_tres")));
                hcPerinatal.setGa_drogas_tres(String.valueOf(rs.getString("ga_drogas_tres")));
                hcPerinatal.setGa_alcohol_tres(String.valueOf(rs.getString("ga_alcohol_tres")));
                hcPerinatal.setGa_violencia_tres(String.valueOf(rs.getString("ga_violencia_tres")));
                hcPerinatal.setGa_antitet(String.valueOf(rs.getString("ga_antitet")));
                hcPerinatal.setGa_antitet_dosis_uno(String.valueOf(rs.getString("ga_antitet_dosis_uno")));
                hcPerinatal.setGa_antitet_dosis_dos(String.valueOf(rs.getString("ga_antitet_dosis_dos")));
                hcPerinatal.setGa_antirubeola(String.valueOf(rs.getString("ga_antirubeola")));
                hcPerinatal.setGa_exnormal_odont(String.valueOf(rs.getString("ga_exnormal_odont")));
                hcPerinatal.setGa_exnormal_mamas(String.valueOf(rs.getString("ga_exnormal_mamas")));
                hcPerinatal.setGa_cervix_insp(String.valueOf(rs.getString("ga_cervix_insp")));
                hcPerinatal.setGa_cervix_pap(String.valueOf(rs.getString("ga_cervix_pap")));
                hcPerinatal.setGa_cervix_colp(String.valueOf(rs.getString("ga_cervix_colp")));
                hcPerinatal.setGa_san_grupo(String.valueOf(rs.getString("ga_san_grupo")));
                hcPerinatal.setGa_san_rh(String.valueOf(rs.getString("ga_san_rh")));
                hcPerinatal.setGa_san_inmuniz(String.valueOf(rs.getString("ga_san_inmuniz")));
                hcPerinatal.setGa_san_globulina(String.valueOf(rs.getString("ga_san_globulina")));
                hcPerinatal.setGa_toxo_menor(String.valueOf(rs.getString("ga_toxo_menor")));
                hcPerinatal.setGa_toxo_mayor(String.valueOf(rs.getString("ga_toxo_mayor")));
                hcPerinatal.setGa_toxo_prim_cons(String.valueOf(rs.getString("ga_toxo_prim_cons")));
                hcPerinatal.setGa_chagas(String.valueOf(rs.getString("ga_chagas")));
                hcPerinatal.setGa_pal_mal(String.valueOf(rs.getString("ga_pal_mal")));
                hcPerinatal.setGa_bac_menor(String.valueOf(rs.getString("ga_bac_menor")));
                hcPerinatal.setGa_bac_mayor(String.valueOf(rs.getString("ga_bac_mayor")));
                hcPerinatal.setGa_glu_menor20(String.valueOf(rs.getString("ga_glu_menor20")));
                hcPerinatal.setGa_glu_menor20_105(String.valueOf(rs.getString("ga_glu_menor20_105")));
                hcPerinatal.setGa_glu_mayor30(String.valueOf(rs.getString("ga_glu_mayor30")));
                hcPerinatal.setGa_glu_mayor30_105(String.valueOf(rs.getString("ga_glu_mayor30_105")));
                hcPerinatal.setGa_vih_sol_menor20(String.valueOf(rs.getString("ga_vih_sol_menor20")));
                hcPerinatal.setGa_vih_rea_menor20(String.valueOf(rs.getString("ga_vih_rea_menor20")));
                hcPerinatal.setGa_vih_sol_mayor20(String.valueOf(rs.getString("ga_vih_sol_mayor20")));
                hcPerinatal.setGa_vih_rea_mayor20(String.valueOf(rs.getString("ga_vih_rea_mayor20")));
                hcPerinatal.setGa_hb_menor_20(String.valueOf(rs.getString("ga_hb_menor_20")));
                hcPerinatal.setGa_hb_menor_bajo(String.valueOf(rs.getString("ga_hb_menor_bajo")));
                hcPerinatal.setGa_fe(String.valueOf(rs.getString("ga_fe")));
                hcPerinatal.setGa_folatos(String.valueOf(rs.getString("ga_folatos")));
                hcPerinatal.setGa_hb_mayor_20(String.valueOf(rs.getString("ga_hb_mayor_20")));
                hcPerinatal.setGa_hb_mayor_bajo(String.valueOf(rs.getString("ga_hb_mayor_bajo")));
                hcPerinatal.setGa_estreptococo(String.valueOf(rs.getString("ga_estreptococo")));
                hcPerinatal.setGa_prepa_parto(String.valueOf(rs.getString("ga_prepa_parto")));
                hcPerinatal.setGa_consej_lactancia(String.valueOf(rs.getString("ga_consej_lactancia")));
                hcPerinatal.setGa_sif_prue_notre_res_men(String.valueOf(rs.getString("ga_sif_prue_notre_res_men")));
                hcPerinatal.setGa_sif_prue_notre_sem_men(String.valueOf(rs.getString("ga_sif_prue_notre_sem_men")));
                hcPerinatal.setGa_sif_prue_notre_res_may(String.valueOf(rs.getString("ga_sif_prue_notre_res_may")));
                hcPerinatal.setGa_sif_prue_notre_sem_may(String.valueOf(rs.getString("ga_sif_prue_notre_sem_may")));
                hcPerinatal.setGa_sif_prue_tre_res_men(String.valueOf(rs.getString("ga_sif_prue_tre_res_men")));
                hcPerinatal.setGa_sif_prue_tre_sem_men(String.valueOf(rs.getString("ga_sif_prue_tre_sem_men")));
                hcPerinatal.setGa_sif_prue_tre_res_may(String.valueOf(rs.getString("ga_sif_prue_tre_res_may")));
                hcPerinatal.setGa_sif_prue_tre_sem_may(String.valueOf(rs.getString("ga_sif_prue_tre_sem_may")));
                hcPerinatal.setGa_sif_trat_menor(String.valueOf(rs.getString("ga_sif_trat_menor")));
                hcPerinatal.setGa_sif_trat_menor_sem(String.valueOf(rs.getString("ga_sif_trat_menor_sem")));
                hcPerinatal.setGa_sif_trat_mayor(String.valueOf(rs.getString("ga_sif_trat_mayor")));
                hcPerinatal.setGa_sif_trat_mayor_sem(String.valueOf(rs.getString("ga_sif_trat_mayor_sem")));
                hcPerinatal.setGa_sif_trat_par_menor(String.valueOf(rs.getString("ga_sif_trat_par_menor")));
                hcPerinatal.setGa_sif_trat_par_mayor(String.valueOf(rs.getString("ga_sif_trat_par_mayor")));
                hcPerinatal.setImc_valor_inicial(String.valueOf(rs.getString("imc_valor_inicial")));
                hcPerinatal.setImc_rango(String.valueOf(rs.getString("imc_rango")));

                
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (cn.isConected()) {
                    cn.getConecction().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        int a = 1;
        return hcPerinatal;
    }
}