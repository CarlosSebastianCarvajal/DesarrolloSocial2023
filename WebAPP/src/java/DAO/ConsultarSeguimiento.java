/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.BuscarSeguimiento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Miguel
 */
public class ConsultarSeguimiento {
     String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;
    
     public BuscarSeguimiento Listbuscarpaciente(String cedula, int sesion) {
        BuscarSeguimiento newbuscar = new BuscarSeguimiento();
        pst = null;
        rs = null;
        try {
            sql_command = "select s.fecha, s.analisis, s.objetivo, s.descripcion, s.informacion from seguimiento as s, \n" +
            "paciente as p where p.paciente_id=s.paciente_id and p.paciente_dni='"+cedula+"' and s.sesion_numero="+sesion+"";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscar.setFecha(String.valueOf(rs.getString("fecha")));
                newbuscar.setAnalisis(String.valueOf(rs.getString("analisis")));
                newbuscar.setObjetivo(String.valueOf(rs.getString("objetivo")));
                newbuscar.setDescripcion(String.valueOf(rs.getString("descripcion")));
                newbuscar.setInformacion(String.valueOf(rs.getString("informacion")));
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
