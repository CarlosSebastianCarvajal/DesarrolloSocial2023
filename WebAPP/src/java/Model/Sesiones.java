/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Sebastian Carvajal
 */
public class Sesiones {
    private String se_id,
                    cita_id,
                    se_motivo,
                    se_diagnostico,
                    se_procedimiento,
                    se_prescripcion,
                    se_evaluacion,
                    hora_in,
                    hora_out;

    public Sesiones() {
    }

    public Sesiones(String se_id, String cita_id, String se_motivo, String se_diagnostico, String se_procedimiento, String se_prescripcion, String se_evaluacion, String hora_in, String hora_out) {
        this.se_id = se_id;
        this.cita_id = cita_id;
        this.se_motivo = se_motivo;
        this.se_diagnostico = se_diagnostico;
        this.se_procedimiento = se_procedimiento;
        this.se_prescripcion = se_prescripcion;
        this.se_evaluacion = se_evaluacion;
        this.hora_in = hora_in;
        this.hora_out = hora_out;
    }

    public String getSe_id() {
        return se_id;
    }

    public void setSe_id(String se_id) {
        this.se_id = se_id;
    }

    public String getCita_id() {
        return cita_id;
    }

    public void setCita_id(String cita_id) {
        this.cita_id = cita_id;
    }

    public String getSe_motivo() {
        return se_motivo;
    }

    public void setSe_motivo(String se_motivo) {
        this.se_motivo = se_motivo;
    }

    public String getSe_diagnostico() {
        return se_diagnostico;
    }

    public void setSe_diagnostico(String se_diagnostico) {
        this.se_diagnostico = se_diagnostico;
    }

    public String getSe_procedimiento() {
        return se_procedimiento;
    }

    public void setSe_procedimiento(String se_procedimiento) {
        this.se_procedimiento = se_procedimiento;
    }

    public String getSe_prescripcion() {
        return se_prescripcion;
    }

    public void setSe_prescripcion(String se_prescripcion) {
        this.se_prescripcion = se_prescripcion;
    }

    public String getSe_evaluacion() {
        return se_evaluacion;
    }

    public void setSe_evaluacion(String se_evaluacion) {
        this.se_evaluacion = se_evaluacion;
    }

    public String getHora_in() {
        return hora_in;
    }

    public void setHora_in(String hora_in) {
        this.hora_in = hora_in;
    }

    public String getHora_out() {
        return hora_out;
    }

    public void setHora_out(String hora_out) {
        this.hora_out = hora_out;
    }
    
    
}
