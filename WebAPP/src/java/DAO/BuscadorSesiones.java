/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.Sesiones;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author Sebastian Carvajal
 */
public class BuscadorSesiones {
    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;
    
    public Sesiones Listbuscarsesion_ced(String cedula) {
        Sesiones newbuscar = new Sesiones();
        pst = null;
        rs = null;
        try {
            sql_command = "select s.*\n" +
"		from paciente as p right join cita as c on p.paciente_id = c.paciente_id\n" +
"			inner join sesiones as s on c.cita_id = s.cita_id\n" +
"		where p.paciente_dni = '" + cedula + "'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscar.setSe_id(String.valueOf(rs.getString("se_id")));
                newbuscar.setCita_id(String.valueOf(rs.getString("cita_id")));
                newbuscar.setSe_diagnostico(String.valueOf(rs.getString("se_diagnostico")));
                newbuscar.setSe_evaluacion(String.valueOf(rs.getString("se_evaluacion")));
                newbuscar.setSe_motivo(String.valueOf(rs.getString("se_motivo")));
                newbuscar.setSe_prescripcion(String.valueOf(rs.getString("se_prescripcion")));
                newbuscar.setSe_procedimiento(String.valueOf(rs.getString("se_procedimiento")));
                newbuscar.setHora_in(String.valueOf(rs.getString("hora_in")));
                newbuscar.setHora_out(String.valueOf(rs.getString("hora_out")));
                
            }
            int a = 1;
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
