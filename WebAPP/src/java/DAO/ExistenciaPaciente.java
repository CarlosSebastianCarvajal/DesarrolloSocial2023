/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.VerificarSeguimiento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Miguel
 */
public class ExistenciaPaciente {
    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;
    
     public VerificarSeguimiento Listbuscarpaciente(String cedula) {
        VerificarSeguimiento newbuscar = new VerificarSeguimiento();
        pst = null;
        rs = null;
        int validar=0;
        try {
            sql_command = "select count(paciente_id) as cantidad, CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre) as nombres,\n" +
            "CONCAT(paciente_apellido_paterno, ' ',paciente_apellido_materno) as apellidos from paciente where paciente_dni='" + cedula + "'\n" +
            "group by paciente_primer_nombre, paciente_segundo_nombre, paciente_apellido_paterno, paciente_apellido_materno";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                validar=rs.getInt("cantidad");
                newbuscar.setNombres(String.valueOf(rs.getString("nombres")));
                newbuscar.setApellidos(String.valueOf(rs.getString("apellidos")));
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
        
        if(validar>0)
        {
            pst = null;
            rs = null;
            try {
                sql_command = "select CAST(sesion as text) from \n" +
                "(select count(s.sesion_numero)+1 as sesion from seguimiento as s, paciente p \n" +
                "where p.paciente_id=s.paciente_id and p.paciente_dni='" + cedula + "')as x ";
                pst = cn.getConecction().prepareStatement(sql_command);
                rs = pst.executeQuery();
                while (rs.next()) {
                    newbuscar.setSesion_numero(String.valueOf(rs.getString("sesion")));
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
        }
        else
        {
           // newbuscar.setSesion_numero("0");
        }
    return newbuscar;
    }
     
     public VerificarSeguimiento Listbuscarpaciente(String nombres, String apellidos) {
        VerificarSeguimiento newbuscar = new VerificarSeguimiento();
        pst = null;
        rs = null;
        int validar=0;
        try {
            sql_command = "select count(paciente_id) as cantidad, CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre) as nombres,\n" +
            "CONCAT(paciente_apellido_paterno, ' ',paciente_apellido_materno) as apellidos, paciente_dni from paciente \n" +
            "where CONCAT(paciente_apellido_paterno,' ',paciente_apellido_materno) like '%"+apellidos+"%' and\n" +
            "CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre) like '%"+nombres+"%'group by paciente_primer_nombre,\n" +
            "paciente_segundo_nombre, paciente_apellido_paterno, paciente_apellido_materno, paciente_dni";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                validar=rs.getInt("cantidad");
                newbuscar.setCedula(String.valueOf(rs.getString("paciente_dni")));
                newbuscar.setNombres(String.valueOf(rs.getString("nombres")));
                newbuscar.setApellidos(String.valueOf(rs.getString("apellidos")));
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
        
        if(validar>0)
        {
            pst = null;
            rs = null;
            try {
                sql_command = "select CAST(sesion as text) from \n" +
                "(select count(s.sesion_numero)+1 as sesion from seguimiento as s, paciente p \n" +
                "where p.paciente_id=s.paciente_id and CONCAT(paciente_apellido_paterno,' ',paciente_apellido_materno) like '%"+apellidos+"%' and\n" +
                "CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre) like '%"+nombres+"%')as x  ";
                pst = cn.getConecction().prepareStatement(sql_command);
                rs = pst.executeQuery();
                while (rs.next()) {
                    newbuscar.setSesion_numero(String.valueOf(rs.getString("sesion")));
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
        }
        else
        {
           // newbuscar.setSesion_numero("0");
        }
    return newbuscar;
    }
}
