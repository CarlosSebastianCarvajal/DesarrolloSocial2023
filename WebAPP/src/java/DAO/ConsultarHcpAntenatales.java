/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.Antenatales;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Miguel
 */

public class ConsultarHcpAntenatales {

    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;

    private ArrayList<Antenatales> antenatalList = new ArrayList<>();
    private Antenatales antenatal;
    
    public ArrayList<Antenatales> BuscarHcp(String ghcpid) {
        
        pst = null;
        rs = null;
        
        
        try {
            sql_command = "select * from consultas_antenatales where ghcp_id = " + ghcpid + "order by ca_id asc";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                String ca_id = String.valueOf(rs.getString("ca_id"));
                String ghcp_id = String.valueOf(rs.getString("ghcp_id"));
                String ca_fecha = String.valueOf(rs.getString("ca_fecha"));
                String ca_edad_ges = String.valueOf(rs.getString("ca_edad_ges"));
                String ca_peso = String.valueOf(rs.getString("ca_peso"));
                String ca_pa = String.valueOf(rs.getString("ca_pa"));
                String ca_pad = String.valueOf(rs.getString("ca_pad"));
                String ca_altura_uterina = String.valueOf(rs.getString("ca_altura_uterina"));
                String ca_presentacion = String.valueOf(rs.getString("ca_presentacion"));
                String ca_FCP = String.valueOf(rs.getString("ca_FCP"));
                String ca_mov_fetales = String.valueOf(rs.getString("ca_mov_fetales"));
                String ca_proteinuria = String.valueOf(rs.getString("ca_proteinuria"));
                String ca_signos_notas = String.valueOf(rs.getString("ca_signos_notas"));
                String ca_iniciales_tecnico = String.valueOf(rs.getString("ca_iniciales_tecnico"));
                String ca_prox_cita = String.valueOf(rs.getString("ca_prox_cita"));
                //hcPerinatal.setGhcp_id(String.valueOf(rs.getString("ghcp_id")));
                antenatal = new Antenatales(ca_id,
                                ghcp_id,
                                ca_fecha,
                                ca_edad_ges,
                                ca_peso,
                                ca_pa,
                                ca_pad,
                                ca_altura_uterina,
                                ca_presentacion,
                                ca_FCP,
                                ca_mov_fetales,
                                ca_proteinuria,
                                ca_signos_notas,
                                ca_iniciales_tecnico,
                                ca_prox_cita);
                antenatalList.add(antenatal);
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
        return antenatalList;
    }
}