/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.SignosVitales;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Miguel
 */

public class BuscadorSignosVitales {

    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;

    public SignosVitales consultaSignos(String paciente_id) {
        SignosVitales newbuscar = new SignosVitales();
        pst = null;
        rs = null;
        try {
            sql_command = "select signos_id, paciente_id, galeno_id, pa_sistolica, temperatura, frecuencia_cardiaca, saturacion, peso, estatura, imc, fecha, to_char(hora, 'HH24:MI:SS')as hora, pa_diastolica, fr, glucosa\n" +
                                    "from signos_vitales where paciente_id = "+paciente_id+" and fecha = current_date\n" +
                                    "order by hora desc limit 1";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscar.setSignos_id(String.valueOf(rs.getString("signos_id")));
                newbuscar.setGaleno_id(String.valueOf(rs.getString("paciente_id")));
                newbuscar.setPaciente_id(String.valueOf(rs.getString("galeno_id")));
                
                newbuscar.setPa_sistolica(String.valueOf(rs.getString("pa_sistolica")));
                newbuscar.setPa_diastolica(String.valueOf(rs.getString("pa_diastolica")));
                newbuscar.setTemperatura(String.valueOf(rs.getString("temperatura")));
                newbuscar.setFrecuencia_cardiaca(String.valueOf(rs.getString("frecuencia_cardiaca")));
                newbuscar.setSaturacion(String.valueOf(rs.getString("saturacion")));
                newbuscar.setPeso(String.valueOf(rs.getString("peso")));
                newbuscar.setEstatura(String.valueOf(rs.getString("estatura")));
                newbuscar.setImc(String.valueOf(rs.getString("imc")));
                newbuscar.setFr(String.valueOf(rs.getString("fr")));
                newbuscar.setGlucosa(String.valueOf(rs.getString("glucosa")));
                
                newbuscar.setFecha(String.valueOf(rs.getString("fecha")));
                newbuscar.setHora(String.valueOf(rs.getString("hora")));
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
        return newbuscar;
    }
    
    

}