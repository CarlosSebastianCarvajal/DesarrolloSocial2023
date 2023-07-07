/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.ValoracionImc;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Miguel
 */

public class ConsultarHcpImc {

    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;

    private ArrayList<ValoracionImc> imcList = new ArrayList<>();
    private ValoracionImc imc_object;
    
    public ArrayList<ValoracionImc> BuscarHcpImc(String ghcpid) {
        
        pst = null;
        rs = null;
        
        
        try {
            sql_command = "select * from imc_seguimiento where ghcp_id = " + ghcpid + "order by imc_id asc";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                String imc_id = String.valueOf(rs.getString("imc_id"));
                String ghcp_id = String.valueOf(rs.getString("ghcp_id"));
                String imc_semana = String.valueOf(rs.getString("imc_semana"));
                String imc_imc = String.valueOf(rs.getString("imc_imc"));
                String imc_ganancia = String.valueOf(rs.getString("imc_ganancia"));
                //hcPerinatal.setGhcp_id(String.valueOf(rs.getString("ghcp_id")));
                imc_object = new ValoracionImc(imc_id,
                                ghcp_id,
                                imc_semana,
                                imc_imc,
                                imc_ganancia);
                imcList.add(imc_object);
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
        return imcList;
    }
}