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
public class SignosVitales {
    private String signos_id, paciente_id, galeno_id, pa_sistolica, pa_diastolica, temperatura, frecuencia_cardiaca, saturacion, peso, estatura, imc, fr, glucosa, fecha, hora;

    public SignosVitales() {
    }

    public SignosVitales(String signos_id, String paciente_id, String galeno_id, String pa_sistolica, String pa_diastolica, String temperatura, String frecuencia_cardiaca, String saturacion, String peso, String estatura, String imc, String fr, String glucosa, String fecha, String hora) {
        this.signos_id = signos_id;
        this.paciente_id = paciente_id;
        this.galeno_id = galeno_id;
        this.pa_sistolica = pa_sistolica;
        this.pa_diastolica = pa_diastolica;
        this.temperatura = temperatura;
        this.frecuencia_cardiaca = frecuencia_cardiaca;
        this.saturacion = saturacion;
        this.peso = peso;
        this.estatura = estatura;
        this.imc = imc;
        this.fr = fr;
        this.glucosa = glucosa;
        this.fecha = fecha;
        this.hora = hora;
    }

    public String getSignos_id() {
        return signos_id;
    }

    public void setSignos_id(String signos_id) {
        this.signos_id = signos_id;
    }

    public String getPaciente_id() {
        return paciente_id;
    }

    public void setPaciente_id(String paciente_id) {
        this.paciente_id = paciente_id;
    }

    public String getGaleno_id() {
        return galeno_id;
    }

    public void setGaleno_id(String galeno_id) {
        this.galeno_id = galeno_id;
    }

    public String getPa_sistolica() {
        return pa_sistolica;
    }

    public void setPa_sistolica(String pa_sistolica) {
        this.pa_sistolica = pa_sistolica;
    }

    public String getPa_diastolica() {
        return pa_diastolica;
    }

    public void setPa_diastolica(String pa_diastolica) {
        this.pa_diastolica = pa_diastolica;
    }

    public String getTemperatura() {
        return temperatura;
    }

    public void setTemperatura(String temperatura) {
        this.temperatura = temperatura;
    }

    public String getFrecuencia_cardiaca() {
        return frecuencia_cardiaca;
    }

    public void setFrecuencia_cardiaca(String frecuencia_cardiaca) {
        this.frecuencia_cardiaca = frecuencia_cardiaca;
    }

    public String getSaturacion() {
        return saturacion;
    }

    public void setSaturacion(String saturacion) {
        this.saturacion = saturacion;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getEstatura() {
        return estatura;
    }

    public void setEstatura(String estatura) {
        this.estatura = estatura;
    }

    public String getImc() {
        return imc;
    }

    public void setImc(String imc) {
        this.imc = imc;
    }

    public String getFr() {
        return fr;
    }

    public void setFr(String fr) {
        this.fr = fr;
    }

    public String getGlucosa() {
        return glucosa;
    }

    public void setGlucosa(String glucosa) {
        this.glucosa = glucosa;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }
    
    
}
