package DAO;

import BD.conexion;
import java.sql.SQLException;
import Model.BuscadorPaciente;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Buscadorpacienteact {

    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;

    public BuscadorPaciente Listabuscadorpacienteact(String cedula) {
        BuscadorPaciente newbuscarp = new BuscadorPaciente();
        pst = null;
        rs = null;
        try {
            sql_command = "select paciente_dni,paciente_tipo_dni, paciente_primer_nombre, paciente_segundo_nombre, \n"
                    + "paciente_apellido_paterno, paciente_apellido_materno,paciente_fnacimiento,\n"
                    + "paciente_convencional,paciente_telefono, paciente_provincia,paciente_canton, paciente_parroquia,\n"
                    + "paciente_direccion, paciente_genero,paciente_estado_civil, paciente_ayudasocial,paciente_nacionalidad, paciente_grupo,\n"
                    + "paciente_tipo_sangre,paciente_correoelectronico from paciente where paciente_dni ='" + cedula + "'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscarp.setPaciente_dni(String.valueOf(rs.getString("paciente_dni")));
                newbuscarp.setPaciente_tipo_dni(String.valueOf(rs.getString("paciente_tipo_dni")));
                newbuscarp.setPaciente_primernombre(String.valueOf(rs.getString("paciente_primer_nombre")));
                newbuscarp.setPaciente_segundonombre(String.valueOf(rs.getString("paciente_segundo_nombre")));
                newbuscarp.setPaciente_primerapellido(String.valueOf(rs.getString("paciente_apellido_paterno")));
                newbuscarp.setPaciente_segundoapellido(String.valueOf(rs.getString("paciente_apellido_materno")));
                newbuscarp.setPaciente_fechanacimiento(String.valueOf(rs.getString("paciente_fnacimiento")));
                newbuscarp.setPaciente_convencional(String.valueOf(rs.getString("paciente_convencional")));
                newbuscarp.setPaciente_telefono(String.valueOf(rs.getString("paciente_telefono")));
                newbuscarp.setPaciente_provincia(String.valueOf(rs.getString("paciente_provincia")));
                newbuscarp.setPaciente_canton(String.valueOf(rs.getString("paciente_canton")));
                newbuscarp.setPaciente_parroquia(String.valueOf(rs.getString("paciente_parroquia")));
                newbuscarp.setPaciente_direccion(String.valueOf(rs.getString("paciente_direccion")));
                newbuscarp.setPaciente_genero(String.valueOf(rs.getString("paciente_genero")));
                newbuscarp.setPaciente_estadocivil(String.valueOf(rs.getString("paciente_estado_civil")));
                newbuscarp.setPaciente_ayudasocial(String.valueOf(rs.getString("paciente_ayudasocial")));
                newbuscarp.setPaciente_nacionalidad(String.valueOf(rs.getString("paciente_nacionalidad")));
                newbuscarp.setPaciente_grupo(String.valueOf(rs.getString("paciente_grupo")));
                newbuscarp.setPaciente_tiposangre(String.valueOf(rs.getString("paciente_tipo_sangre")));
                newbuscarp.setPaciente_correoelectronico(String.valueOf(rs.getString("paciente_correoelectronico")));

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
        return newbuscarp;
    }

    public BuscadorPaciente Listabuscadorpacienteact(String apellido, String nombre) {
        BuscadorPaciente newbuscarp = new BuscadorPaciente();
        pst = null;
        rs = null;
        try {
            sql_command = "select paciente_dni,paciente_tipo_dni, paciente_primer_nombre, paciente_segundo_nombre, \n"
                    + "paciente_apellido_paterno, paciente_apellido_materno,paciente_fnacimiento,\n"
                    + "paciente_convencional,paciente_telefono, paciente_provincia,paciente_canton, paciente_parroquia,\n"
                    + "paciente_direccion, paciente_genero,paciente_estado_civil, paciente_ayudasocial,paciente_nacionalidad, paciente_grupo,\n"
                    + "paciente_tipo_sangre,paciente_correoelectronico from paciente where CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre) like '%" + nombre + "%' AND CONCAT(paciente_apellido_paterno, ' ',paciente_apellido_materno) like '%" + apellido + "%'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscarp.setPaciente_dni(String.valueOf(rs.getString("paciente_dni")));
                newbuscarp.setPaciente_tipo_dni(String.valueOf(rs.getString("paciente_tipo_dni")));
                newbuscarp.setPaciente_primernombre(String.valueOf(rs.getString("paciente_primer_nombre")));
                newbuscarp.setPaciente_segundonombre(String.valueOf(rs.getString("paciente_segundo_nombre")));
                newbuscarp.setPaciente_primerapellido(String.valueOf(rs.getString("paciente_apellido_paterno")));
                newbuscarp.setPaciente_segundoapellido(String.valueOf(rs.getString("paciente_apellido_materno")));
                newbuscarp.setPaciente_fechanacimiento(String.valueOf(rs.getString("paciente_fnacimiento")));
                newbuscarp.setPaciente_convencional(String.valueOf(rs.getString("paciente_convencional")));
                newbuscarp.setPaciente_telefono(String.valueOf(rs.getString("paciente_telefono")));
                newbuscarp.setPaciente_provincia(String.valueOf(rs.getString("paciente_provincia")));
                newbuscarp.setPaciente_canton(String.valueOf(rs.getString("paciente_canton")));
                newbuscarp.setPaciente_parroquia(String.valueOf(rs.getString("paciente_parroquia")));
                newbuscarp.setPaciente_direccion(String.valueOf(rs.getString("paciente_direccion")));
                newbuscarp.setPaciente_genero(String.valueOf(rs.getString("paciente_genero")));
                newbuscarp.setPaciente_estadocivil(String.valueOf(rs.getString("paciente_estado_civil")));
                newbuscarp.setPaciente_ayudasocial(String.valueOf(rs.getString("paciente_ayudasocial")));
                newbuscarp.setPaciente_nacionalidad(String.valueOf(rs.getString("paciente_nacionalidad")));
                newbuscarp.setPaciente_grupo(String.valueOf(rs.getString("paciente_grupo")));
                newbuscarp.setPaciente_tiposangre(String.valueOf(rs.getString("paciente_tipo_sangre")));
                newbuscarp.setPaciente_correoelectronico(String.valueOf(rs.getString("paciente_correoelectronico")));

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
        return newbuscarp;
    }
}
