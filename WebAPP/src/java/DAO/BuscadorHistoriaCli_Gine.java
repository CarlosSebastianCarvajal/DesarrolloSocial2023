/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.BuscadorHistoria_Gine;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Model.BuscadorPaciente;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Miguel
 */

public class BuscadorHistoriaCli_Gine {

    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;

    public BuscadorHistoria_Gine Listbuscarpaciente(String cedula) {
        BuscadorHistoria_Gine newbuscar = new BuscadorHistoria_Gine();
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT p.paciente_dni, CONCAT(p.paciente_primer_nombre, ' ',p.paciente_segundo_nombre) as nombres,\n" +
            "CONCAT(p.paciente_apellido_paterno, ' ',p.paciente_apellido_materno)as apellidos, p.paciente_estado_civil,\n" +
            "p.paciente_fnacimiento, p.paciente_edad, p.paciente_telefono, p.paciente_direccion,\n" +
            "p.paciente_canton, p.paciente_etnia, p.paciente_nivel_estudio, p.paciente_anios_nivel, \n"+
            "s.pa_sistolica, s.pa_diastolica, s.temperatura, s.frecuencia_cardiaca, s.saturacion, s.peso, s.estatura, s.imc,\n" +
            "g.ghc_id, g.ap_personales, g.ap_familiares, g.ap_quirurgicos, g.ap_alergicos, g.ap_habitos, g.ago_menarquia, g.ago_irs, \n" +
            "g.ago_parejas, g.ago_ultimo_pap, g.ago_metodos_anti, g.ago_fum, g.ago_fpp, g.ago_menopausia, g.ago_gestas, \n" +
            "g.ago_partos, g.ago_abortos, g.ago_cesareas, g.ago_edad_gestacional, g.ago_complicaciones, g.motivo_consulta, \n" +
            "g.enfermedad_acual, g.diagnostico, g.tratamiento\n" +
            "FROM paciente as p, signos_vitales as s, ginecologia_historia_clinica as g \n" +
            "where p.paciente_id=g.paciente_id and g.signos_id=s.signos_id and p.paciente_dni='" + cedula + "' order by g.ghc_id desc limit 1";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {

                newbuscar.setPaciente_dni(String.valueOf(rs.getString("paciente_dni")));
                newbuscar.setNombres(String.valueOf(rs.getString("nombres")));
                newbuscar.setApellidos(String.valueOf(rs.getString("apellidos")));
                newbuscar.setPaciente_estado_civil(String.valueOf(rs.getString("paciente_estado_civil")));
                newbuscar.setPaciente_fnacimiento(String.valueOf(rs.getString("paciente_fnacimiento")));
                newbuscar.setPaciente_edad(String.valueOf(rs.getString("paciente_edad")));
                newbuscar.setPaciente_telefono(String.valueOf(rs.getString("paciente_telefono")));
                newbuscar.setPaciente_direccion(String.valueOf(rs.getString("paciente_direccion")));
                newbuscar.setAp_personales(String.valueOf(rs.getString("ap_personales")));
                newbuscar.setAp_familiares(String.valueOf(rs.getString("ap_familiares")));
                newbuscar.setAp_quirurgicos(String.valueOf(rs.getString("ap_quirurgicos")));
                newbuscar.setAp_alergicos(String.valueOf(rs.getString("ap_alergicos")));
                newbuscar.setAp_habitos(String.valueOf(rs.getString("ap_habitos")));
                newbuscar.setAgo_menarquia(String.valueOf(rs.getString("ago_menarquia")));
                newbuscar.setAgo_irs(String.valueOf(rs.getString("ago_irs")));
                newbuscar.setAgo_parejas(String.valueOf(rs.getString("ago_parejas")));
                newbuscar.setAgo_ultimo_pap(String.valueOf(rs.getString("ago_ultimo_pap")));
                newbuscar.setAgo_metodos_anti(String.valueOf(rs.getString("ago_metodos_anti")));
                newbuscar.setAgo_fum(String.valueOf(rs.getString("ago_fum")));
                newbuscar.setAgo_fpp(String.valueOf(rs.getString("ago_fpp")));
                newbuscar.setAgo_menopausia(String.valueOf(rs.getString("ago_menopausia")));
                newbuscar.setAgo_gestas(String.valueOf(rs.getString("ago_gestas")));
                newbuscar.setAgo_partos(String.valueOf(rs.getString("ago_partos")));
                newbuscar.setAgo_abortos(String.valueOf(rs.getString("ago_abortos")));
                newbuscar.setAgo_cesareas(String.valueOf(rs.getString("ago_cesareas")));
                newbuscar.setAgo_edad_gestacional(String.valueOf(rs.getString("ago_edad_gestacional")));
                newbuscar.setAgo_complicaciones(String.valueOf(rs.getString("ago_complicaciones")));
                newbuscar.setMotivo_consulta(String.valueOf(rs.getString("motivo_consulta")));
                newbuscar.setEnfermedad_acual(String.valueOf(rs.getString("enfermedad_acual")));
                newbuscar.setDiagnostico(String.valueOf(rs.getString("diagnostico")));
                newbuscar.setTratamiento(String.valueOf(rs.getString("tratamiento")));
                newbuscar.setPa_sistolica(String.valueOf(rs.getString("pa_sistolica")));
                newbuscar.setPa_diastolica(String.valueOf(rs.getString("pa_diastolica")));
                newbuscar.setTemperatura(String.valueOf(rs.getString("temperatura")));
                newbuscar.setFrecuencia_cardiaca(String.valueOf(rs.getString("frecuencia_cardiaca")));
                newbuscar.setSaturacion(String.valueOf(rs.getString("saturacion")));
                newbuscar.setPeso(String.valueOf(rs.getString("peso")));
                newbuscar.setEstatura(String.valueOf(rs.getString("estatura")));
                newbuscar.setImc(String.valueOf(rs.getString("imc")));
                newbuscar.setGhc_id(String.valueOf(rs.getString("ghc_id")));
                newbuscar.setPaciente_canton(String.valueOf(rs.getString("paciente_canton")));
                newbuscar.setPaciente_etnia(String.valueOf(rs.getString("paciente_etnia")));
                newbuscar.setPaciente_nivel_estudio(String.valueOf(rs.getString("paciente_nivel_estudio")));
                newbuscar.setPaciente_anios_nivel(String.valueOf(rs.getString("paciente_anios_nivel")));
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
    
    public BuscadorHistoria_Gine Listbuscarpaciente(String nombres, String apellidos) {
        BuscadorHistoria_Gine newbuscar = new BuscadorHistoria_Gine();
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT p.paciente_dni, CONCAT(p.paciente_primer_nombre, ' ',p.paciente_segundo_nombre) as nombres,\n" +
"            CONCAT(p.paciente_apellido_paterno, ' ',p.paciente_apellido_materno)as apellidos, p.paciente_estado_civil,\n" +
"            p.paciente_fnacimiento, p.paciente_edad, p.paciente_telefono, p.paciente_direccion,\n" +
             "p.paciente_canton, p.paciente_etnia, p.paciente_nivel_estudio, p.paciente_anios_nivel, \n"+
"            s.pa_sistolica, s.pa_diastolica, s.temperatura, s.frecuencia_cardiaca, s.saturacion, s.peso, s.estatura, s.imc,\n" +
"            g.ghc_id, g.ap_personales, g.ap_familiares, g.ap_quirurgicos, g.ap_alergicos, g.ap_habitos, g.ago_menarquia, g.ago_irs,\n" +
"            g.ago_parejas, g.ago_ultimo_pap, g.ago_metodos_anti, g.ago_fum, g.ago_fpp, g.ago_menopausia, g.ago_gestas, \n" +
"            g.ago_partos, g.ago_abortos, g.ago_cesareas, g.ago_edad_gestacional, g.ago_complicaciones, g.motivo_consulta, \n" +
"            g.enfermedad_acual, g.diagnostico, g.tratamiento\n" +
"            FROM paciente as p, signos_vitales as s, ginecologia_historia_clinica as g\n" +
"            where p.paciente_id=g.paciente_id and g.signos_id=s.signos_id and \n" +
"			CONCAT(p.paciente_primer_nombre, ' ',p.paciente_segundo_nombre) like '%"+nombres+"%' and\n" +
"			 CONCAT(p.paciente_apellido_paterno, ' ',p.paciente_apellido_materno) like '%"+apellidos+"%' order by g.ghc_id desc limit 1";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {

                newbuscar.setPaciente_dni(String.valueOf(rs.getString("paciente_dni")));
                newbuscar.setNombres(String.valueOf(rs.getString("nombres")));
                newbuscar.setApellidos(String.valueOf(rs.getString("apellidos")));
                newbuscar.setPaciente_estado_civil(String.valueOf(rs.getString("paciente_estado_civil")));
                newbuscar.setPaciente_fnacimiento(String.valueOf(rs.getString("paciente_fnacimiento")));
                newbuscar.setPaciente_edad(String.valueOf(rs.getString("paciente_edad")));
                newbuscar.setPaciente_telefono(String.valueOf(rs.getString("paciente_telefono")));
                newbuscar.setPaciente_direccion(String.valueOf(rs.getString("paciente_direccion")));
                newbuscar.setAp_personales(String.valueOf(rs.getString("ap_personales")));
                newbuscar.setAp_familiares(String.valueOf(rs.getString("ap_familiares")));
                newbuscar.setAp_quirurgicos(String.valueOf(rs.getString("ap_quirurgicos")));
                newbuscar.setAp_alergicos(String.valueOf(rs.getString("ap_alergicos")));
                newbuscar.setAp_habitos(String.valueOf(rs.getString("ap_habitos")));
                newbuscar.setAgo_menarquia(String.valueOf(rs.getString("ago_menarquia")));
                newbuscar.setAgo_irs(String.valueOf(rs.getString("ago_irs")));
                newbuscar.setAgo_parejas(String.valueOf(rs.getString("ago_parejas")));
                newbuscar.setAgo_ultimo_pap(String.valueOf(rs.getString("ago_ultimo_pap")));
                newbuscar.setAgo_metodos_anti(String.valueOf(rs.getString("ago_metodos_anti")));
                newbuscar.setAgo_fum(String.valueOf(rs.getString("ago_fum")));
                newbuscar.setAgo_fpp(String.valueOf(rs.getString("ago_fpp")));
                newbuscar.setAgo_menopausia(String.valueOf(rs.getString("ago_menopausia")));
                newbuscar.setAgo_gestas(String.valueOf(rs.getString("ago_gestas")));
                newbuscar.setAgo_partos(String.valueOf(rs.getString("ago_partos")));
                newbuscar.setAgo_abortos(String.valueOf(rs.getString("ago_abortos")));
                newbuscar.setAgo_cesareas(String.valueOf(rs.getString("ago_cesareas")));
                newbuscar.setAgo_edad_gestacional(String.valueOf(rs.getString("ago_edad_gestacional")));
                newbuscar.setAgo_complicaciones(String.valueOf(rs.getString("ago_complicaciones")));
                newbuscar.setMotivo_consulta(String.valueOf(rs.getString("motivo_consulta")));
                newbuscar.setEnfermedad_acual(String.valueOf(rs.getString("enfermedad_acual")));
                newbuscar.setDiagnostico(String.valueOf(rs.getString("diagnostico")));
                newbuscar.setTratamiento(String.valueOf(rs.getString("tratamiento")));
                newbuscar.setPa_sistolica(String.valueOf(rs.getString("pa_sistolica")));
                newbuscar.setPa_diastolica(String.valueOf(rs.getString("pa_diastolica")));
                newbuscar.setTemperatura(String.valueOf(rs.getString("temperatura")));
                newbuscar.setFrecuencia_cardiaca(String.valueOf(rs.getString("frecuencia_cardiaca")));
                newbuscar.setSaturacion(String.valueOf(rs.getString("saturacion")));
                newbuscar.setPeso(String.valueOf(rs.getString("peso")));
                newbuscar.setEstatura(String.valueOf(rs.getString("estatura")));
                newbuscar.setImc(String.valueOf(rs.getString("imc")));
                newbuscar.setGhc_id(String.valueOf(rs.getString("ghc_id")));
                newbuscar.setPaciente_canton(String.valueOf(rs.getString("paciente_canton")));
                newbuscar.setPaciente_etnia(String.valueOf(rs.getString("paciente_etnia")));
                newbuscar.setPaciente_nivel_estudio(String.valueOf(rs.getString("paciente_nivel_estudio")));
                newbuscar.setPaciente_anios_nivel(String.valueOf(rs.getString("paciente_anios_nivel")));
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