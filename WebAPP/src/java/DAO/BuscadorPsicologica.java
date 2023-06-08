/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.BuscadorPacienteFicha;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author Miguel
 */
public class BuscadorPsicologica {
    
    String nombreGaleno="";
    
    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    private String sql_command = "";
    private PreparedStatement pst = null;
    
     public BuscadorPacienteFicha Listbuscarpaciente(String cedula) {
        BuscadorPacienteFicha newbuscar = new BuscadorPacienteFicha();
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT paciente_dni, paciente_apellido_paterno, paciente_primer_nombre, paciente_fnacimiento, \n" +
            "paciente_direccion, paciente_telefono, paciente_genero, paciente_apellido_materno, \n" +
            "paciente_segundo_nombre, paciente_estado_civil, paciente_escolaridad, paciente_ocupacion, \n" +
            "paciente_religion, paciente_orientacion_sexual, paciente_tipo_discapacidad, paciente_porcentaje_discapacidad, cast(paciente_edad as text)\n" +
            "FROM public.paciente where paciente_dni='" + cedula + "'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscar.setPaciente_dni(String.valueOf(rs.getString("paciente_dni")));
                newbuscar.setPaciente_apellido_paterno(String.valueOf(rs.getString("paciente_apellido_paterno")));
                newbuscar.setPaciente_primer_nombre(String.valueOf(rs.getString("paciente_primer_nombre")));
                newbuscar.setPaciente_fnacimiento(String.valueOf(rs.getString("paciente_fnacimiento")));
                newbuscar.setPaciente_direccion(String.valueOf(rs.getString("paciente_direccion")));
                newbuscar.setPaciente_telefono(String.valueOf(rs.getString("paciente_telefono")));
                newbuscar.setPaciente_genero(String.valueOf(rs.getString("paciente_genero")));
                newbuscar.setPaciente_apellido_materno(String.valueOf(rs.getString("paciente_apellido_materno")));
                newbuscar.setPaciente_segundo_nombre(String.valueOf(rs.getString("paciente_segundo_nombre")));
                newbuscar.setPaciente_estado_civil(String.valueOf(rs.getString("paciente_estado_civil")));
                newbuscar.setPaciente_escolaridad(String.valueOf(rs.getString("paciente_escolaridad")));
                newbuscar.setPaciente_ocupacion(String.valueOf(rs.getString("paciente_ocupacion")));
                newbuscar.setPaciente_religion(String.valueOf(rs.getString("paciente_religion")));
                newbuscar.setPaciente_orientacion_sexual(String.valueOf(rs.getString("paciente_orientacion_sexual")));
                newbuscar.setPaciente_tipo_discapacidad(String.valueOf(rs.getString("paciente_tipo_discapacidad")));
                newbuscar.setPaciente_porcentaje_discapacidad(String.valueOf(rs.getString("paciente_porcentaje_discapacidad")));
                newbuscar.setPaciente_edad(String.valueOf(rs.getString("paciente_edad")));

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
        
        
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT  c.primer_apellido, c.primer_nombre, c.parentezco, \n" +
            "c.cedula, c.telefono FROM public.contacto_referencia as c, public.paciente p \n" +
            "where p.paciente_id=c.paciente_id and p.paciente_dni='" + cedula + "'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscar.setPrimer_apellido(String.valueOf(rs.getString("primer_apellido")));
                newbuscar.setPrimer_nombre(String.valueOf(rs.getString("primer_nombre")));
                newbuscar.setParentezco(String.valueOf(rs.getString("parentezco")));
                newbuscar.setCedula(String.valueOf(rs.getString("cedula")));
                newbuscar.setTelefono(String.valueOf(rs.getString("telefono")));
                
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
        
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT CONCAT(g.galeno_primer_nombre, ' ',g.galeno_segundo_nombre, ' ',g.galeno_apellido_paterno,\n" +
            "' ',g.galeno_apellido_materno) as nombre, a.fecha, a.hora, a.historia_personal, a.antecedentes_familiares, \n" +
            "a.desarrollo, a.atencion_psiquiatrica_psicologica, a.enfermedad_cronica, a.actividad_interes, \n" +
            "a.orientacion, a.pensamiento, a.lenguaje, a.memoria, a.atencion, a.afectividad, a.juicio, a.apariencia, \n" +
            "a.compormatientos, a.otros, a.recomendacion, a.motivo FROM public.antecedente_observacion as a, \n" +
            "public.paciente p, public.galeno g where p.paciente_id=a.paciente_id and g.galeno_id=a.galeno_id \n" +
            "and p.paciente_dni='" + cedula + "'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                nombreGaleno=rs.getString("nombre");
                newbuscar.setNombre(String.valueOf(rs.getString("nombre")));
                newbuscar.setFecha(String.valueOf(rs.getString("fecha")));
                newbuscar.setHora(String.valueOf(rs.getString("hora")));
                newbuscar.setHistoria_personal(String.valueOf(rs.getString("historia_personal")));
                newbuscar.setAntecedentes_familiares(String.valueOf(rs.getString("antecedentes_familiares")));
                newbuscar.setDesarrollo(String.valueOf(rs.getString("desarrollo")));
                newbuscar.setAtencion_psiquiatrica_psicologica(String.valueOf(rs.getString("atencion_psiquiatrica_psicologica")));
                newbuscar.setEnfermedad_cronica(String.valueOf(rs.getString("enfermedad_cronica")));
                newbuscar.setActividad_interes(String.valueOf(rs.getString("actividad_interes")));
                newbuscar.setOrientacion(String.valueOf(rs.getString("orientacion")));
                newbuscar.setPensamiento(String.valueOf(rs.getString("pensamiento")));
                newbuscar.setLenguaje(String.valueOf(rs.getString("lenguaje")));
                newbuscar.setMemoria(String.valueOf(rs.getString("memoria")));
                newbuscar.setAtencion(String.valueOf(rs.getString("atencion")));
                newbuscar.setAfectividad(String.valueOf(rs.getString("afectividad")));
                newbuscar.setJuicio(String.valueOf(rs.getString("juicio")));
                newbuscar.setApariencia(String.valueOf(rs.getString("apariencia")));
                newbuscar.setCompormatientos(String.valueOf(rs.getString("compormatientos")));
                newbuscar.setOtros(String.valueOf(rs.getString("otros")));
                newbuscar.setRecomendacion(String.valueOf(rs.getString("recomendacion")));
                newbuscar.setMotivo(String.valueOf(rs.getString("motivo")));

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
        if(nombreGaleno.length()==0)
        {
           newbuscar.setNombre("Usuario");
           String fecha = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
           newbuscar.setFecha(fecha);
           String hora = new SimpleDateFormat("HH:mm:ss").format(Calendar.getInstance().getTime());
           newbuscar.setHora(hora);
        }
        return newbuscar;
    }
     
    public BuscadorPacienteFicha Listbuscarpaciente(String apellido, String nombre) {
        BuscadorPacienteFicha newbuscar = new BuscadorPacienteFicha();
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT paciente_dni, paciente_apellido_paterno, paciente_primer_nombre, paciente_fnacimiento,\n" +
            "paciente_direccion, paciente_telefono, paciente_genero, paciente_apellido_materno, \n" +
            "paciente_segundo_nombre, paciente_estado_civil, paciente_escolaridad, paciente_ocupacion, \n" +
            "paciente_religion, paciente_orientacion_sexual, paciente_tipo_discapacidad, paciente_porcentaje_discapacidad, cast(paciente_edad as text)\n" +
            "FROM public.paciente where CONCAT(paciente_apellido_paterno,' ',paciente_apellido_materno) like '%"+apellido+"%'\n" +
            "and CONCAT(paciente_primer_nombre, ' ',paciente_segundo_nombre) like '%"+nombre+"%'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscar.setPaciente_dni(String.valueOf(rs.getString("paciente_dni")));
                newbuscar.setPaciente_apellido_paterno(String.valueOf(rs.getString("paciente_apellido_paterno")));
                newbuscar.setPaciente_primer_nombre(String.valueOf(rs.getString("paciente_primer_nombre")));
                newbuscar.setPaciente_fnacimiento(String.valueOf(rs.getString("paciente_fnacimiento")));
                newbuscar.setPaciente_direccion(String.valueOf(rs.getString("paciente_direccion")));
                newbuscar.setPaciente_telefono(String.valueOf(rs.getString("paciente_telefono")));
                newbuscar.setPaciente_genero(String.valueOf(rs.getString("paciente_genero")));
                newbuscar.setPaciente_apellido_materno(String.valueOf(rs.getString("paciente_apellido_materno")));
                newbuscar.setPaciente_segundo_nombre(String.valueOf(rs.getString("paciente_segundo_nombre")));
                newbuscar.setPaciente_estado_civil(String.valueOf(rs.getString("paciente_estado_civil")));
                newbuscar.setPaciente_escolaridad(String.valueOf(rs.getString("paciente_escolaridad")));
                newbuscar.setPaciente_ocupacion(String.valueOf(rs.getString("paciente_ocupacion")));
                newbuscar.setPaciente_religion(String.valueOf(rs.getString("paciente_religion")));
                newbuscar.setPaciente_orientacion_sexual(String.valueOf(rs.getString("paciente_orientacion_sexual")));
                newbuscar.setPaciente_tipo_discapacidad(String.valueOf(rs.getString("paciente_tipo_discapacidad")));
                newbuscar.setPaciente_porcentaje_discapacidad(String.valueOf(rs.getString("paciente_porcentaje_discapacidad")));
                newbuscar.setPaciente_edad(String.valueOf(rs.getString("paciente_edad")));
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
        
        
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT  c.primer_apellido, c.primer_nombre, c.parentezco,\n" +
            "c.cedula, c.telefono FROM public.contacto_referencia as c, public.paciente p\n" +
            "where p.paciente_id=c.paciente_id and CONCAT(p.paciente_apellido_paterno,\n" +
            "' ',p.paciente_apellido_materno) like '%"+apellido+"%' and CONCAT(p.paciente_primer_nombre, ' ',\n" +
            "p.paciente_segundo_nombre) like '%"+nombre+"%'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                newbuscar.setPrimer_apellido(String.valueOf(rs.getString("primer_apellido")));
                newbuscar.setPrimer_nombre(String.valueOf(rs.getString("primer_nombre")));
                newbuscar.setParentezco(String.valueOf(rs.getString("parentezco")));
                newbuscar.setCedula(String.valueOf(rs.getString("cedula")));
                newbuscar.setTelefono(String.valueOf(rs.getString("telefono")));
                
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
        
        pst = null;
        rs = null;
        try {
            sql_command = "SELECT CONCAT(g.galeno_primer_nombre, ' ',g.galeno_segundo_nombre, ' ',g.galeno_apellido_paterno,\n" +
            "' ',g.galeno_apellido_materno) as nombre, a.fecha, a.hora, a.historia_personal, a.antecedentes_familiares, \n" +
            "a.desarrollo, a.atencion_psiquiatrica_psicologica, a.enfermedad_cronica, a.actividad_interes, \n" +
            "a.orientacion, a.pensamiento, a.lenguaje, a.memoria, a.atencion, a.afectividad, a.juicio, a.apariencia, \n" +
            "a.compormatientos, a.otros, a.recomendacion, a.motivo FROM public.antecedente_observacion as a, \n" +
            "public.paciente p, public.galeno g where p.paciente_id=a.paciente_id and g.galeno_id=a.galeno_id \n" +
            "and CONCAT(p.paciente_apellido_paterno, ' ',p.paciente_apellido_materno) like '%"+apellido+"%' \n" +
            "and CONCAT(p.paciente_primer_nombre, ' ',p.paciente_segundo_nombre) like '%"+nombre+"%'";
            pst = cn.getConecction().prepareStatement(sql_command);
            rs = pst.executeQuery();
            while (rs.next()) {
                nombreGaleno=rs.getString("nombre");
                newbuscar.setNombre(String.valueOf(rs.getString("nombre")));
                newbuscar.setFecha(String.valueOf(rs.getString("fecha")));
                newbuscar.setHora(String.valueOf(rs.getString("hora")));
                newbuscar.setHistoria_personal(String.valueOf(rs.getString("historia_personal")));
                newbuscar.setAntecedentes_familiares(String.valueOf(rs.getString("antecedentes_familiares")));
                newbuscar.setDesarrollo(String.valueOf(rs.getString("desarrollo")));
                newbuscar.setAtencion_psiquiatrica_psicologica(String.valueOf(rs.getString("atencion_psiquiatrica_psicologica")));
                newbuscar.setEnfermedad_cronica(String.valueOf(rs.getString("enfermedad_cronica")));
                newbuscar.setActividad_interes(String.valueOf(rs.getString("actividad_interes")));
                newbuscar.setOrientacion(String.valueOf(rs.getString("orientacion")));
                newbuscar.setPensamiento(String.valueOf(rs.getString("pensamiento")));
                newbuscar.setLenguaje(String.valueOf(rs.getString("lenguaje")));
                newbuscar.setMemoria(String.valueOf(rs.getString("memoria")));
                newbuscar.setAtencion(String.valueOf(rs.getString("atencion")));
                newbuscar.setAfectividad(String.valueOf(rs.getString("afectividad")));
                newbuscar.setJuicio(String.valueOf(rs.getString("juicio")));
                newbuscar.setApariencia(String.valueOf(rs.getString("apariencia")));
                newbuscar.setCompormatientos(String.valueOf(rs.getString("compormatientos")));
                newbuscar.setOtros(String.valueOf(rs.getString("otros")));
                newbuscar.setRecomendacion(String.valueOf(rs.getString("recomendacion")));
                newbuscar.setMotivo(String.valueOf(rs.getString("motivo")));

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
        if(nombreGaleno.length()==0)
        {
           newbuscar.setNombre("Usuario");
           String fecha = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
           newbuscar.setFecha(fecha);
           String hora = new SimpleDateFormat("HH:mm:ss").format(Calendar.getInstance().getTime());
           newbuscar.setHora(hora);
        }
        return newbuscar;
    }
}
