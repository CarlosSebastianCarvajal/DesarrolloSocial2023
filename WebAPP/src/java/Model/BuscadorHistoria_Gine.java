/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Miguel
 */
public class BuscadorHistoria_Gine {
    private String  paciente_id, paciente_dni, ghc_id, nombres, apellidos, paciente_estado_civil,
                    paciente_fnacimiento, paciente_edad, paciente_telefono, paciente_direccion,
                    paciente_canton, paciente_etnia, paciente_nivel_estudio, paciente_anios_nivel,
                    ap_personales, ap_familiares, ap_quirurgicos, ap_alergicos, 
                    ap_habitos, ago_menarquia, ago_irs, ago_parejas, ago_ultimo_pap, ago_metodos_anti, ago_fum, ago_fpp, 
                    ago_menopausia, ago_gestas, ago_partos, ago_abortos, ago_cesareas, ago_edad_gestacional, ago_complicaciones, 
                    motivo_consulta, enfermedad_acual, diagnostico, tratamiento,
                    pa_sistolica, pa_diastolica, temperatura, frecuencia_cardiaca, saturacion, peso, estatura, imc;

    
    
 
    
public BuscadorHistoria_Gine(){
    
}



public BuscadorHistoria_Gine(String paciente_id, String paciente_dni, String nombres, String apellidos, String paciente_estado_civil,
                    String paciente_fnacimiento, String paciente_edad, String paciente_telefono, String paciente_direccion,
                    String ap_personales, String ap_familiares, String ap_quirurgicos, String ap_alergicos, 
                    String ap_habitos, String ago_menarquia, String ago_irs, String ago_parejas, String ago_ultimo_pap, String ago_metodos_anti, String ago_fum, String ago_fpp, 
                    String ago_menopausia, String ago_gestas, String ago_partos, String ago_abortos, String ago_cesareas, String ago_edad_gestacional, String ago_complicaciones, 
                    String motivo_consulta, String enfermedad_acual, String diagnostico, String tratamiento,
                    String pa_sistolica, String pa_diastolica, String temperatura, String frecuencia_cardiaca, String saturacion, String peso, String estatura, String imc, String ghcp_id,
                    String paciente_canton, String paciente_etnia, String paciente_nivel_estudio, String paciente_anios_nivel){
                    this.paciente_id=paciente_id;
                    this.paciente_dni=paciente_dni;
                    this.nombres=nombres;
                    this.apellidos=apellidos;
                    this.paciente_estado_civil=paciente_estado_civil;
                    this.paciente_fnacimiento=paciente_fnacimiento;
                    this.paciente_edad=paciente_edad;
                    this.paciente_telefono=paciente_telefono;
                    this.paciente_direccion=paciente_direccion;
                    this.ap_personales=ap_personales;
                    this.ap_familiares=ap_familiares;
                    this.ap_quirurgicos=ap_quirurgicos;
                    this.ap_alergicos=ap_alergicos;
                    this.ap_habitos=ap_habitos;
                    this.ago_menarquia=ago_menarquia;
                    this.ago_irs=ago_irs;
                    this.ago_parejas=ago_parejas;
                    this.ago_ultimo_pap=ago_ultimo_pap;
                    this.ago_metodos_anti=ago_metodos_anti;
                    this.ago_fum=ago_fum;
                    this.ago_fpp=ago_fpp;
                    this.ago_menopausia=ago_menopausia;
                    this.ago_gestas=ago_gestas;
                    this.ago_partos=ago_partos;
                    this.ago_abortos=ago_abortos;
                    this.ago_cesareas=ago_cesareas;
                    this.ago_edad_gestacional=ago_edad_gestacional;
                    this.ago_complicaciones=ago_complicaciones;
                    this.motivo_consulta=motivo_consulta;
                    this.enfermedad_acual=enfermedad_acual;
                    this.diagnostico=diagnostico;
                    this.tratamiento=tratamiento;
                    this.pa_sistolica=pa_sistolica;
                    this.pa_diastolica=pa_diastolica;
                    this.temperatura=temperatura;
                    this.frecuencia_cardiaca=frecuencia_cardiaca;
                    this.saturacion=saturacion;
                    this.peso=peso;
                    this.estatura=estatura;
                    this.imc=imc;
                    this.ghc_id = ghcp_id;
                    this.paciente_canton = paciente_canton;
                    this.paciente_etnia = paciente_etnia;
                    this.paciente_nivel_estudio = paciente_nivel_estudio;
                    this.paciente_anios_nivel = paciente_anios_nivel;
}

    public String getPaciente_id() {
        return paciente_id;
    }

    public void setPaciente_id(String paciente_id) {
        this.paciente_id = paciente_id;
    }

    public String getPaciente_canton() {
        return paciente_canton;
    }

    public void setPaciente_canton(String paciente_canton) {
        this.paciente_canton = paciente_canton;
    }

    public String getPaciente_etnia() {
        return paciente_etnia;
    }

    public void setPaciente_etnia(String paciente_etnia) {
        this.paciente_etnia = paciente_etnia;
    }

    public String getPaciente_nivel_estudio() {
        return paciente_nivel_estudio;
    }

    public void setPaciente_nivel_estudio(String paciente_nivel_estudio) {
        this.paciente_nivel_estudio = paciente_nivel_estudio;
    }

    public String getPaciente_anios_nivel() {
        return paciente_anios_nivel;
    }

    public void setPaciente_anios_nivel(String paciente_anios_nivel) {
        this.paciente_anios_nivel = paciente_anios_nivel;
    }



    public String getGhc_id() {
        return ghc_id;
    }

    public void setGhc_id(String ghcp_id) {
        this.ghc_id = ghcp_id;
    }

    public String getPaciente_dni() {
        return paciente_dni;
    }

    public void setPaciente_dni(String paciente_dni) {
        this.paciente_dni = paciente_dni;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getPaciente_estado_civil() {
        return paciente_estado_civil;
    }

    public void setPaciente_estado_civil(String paciente_estado_civil) {
        this.paciente_estado_civil = paciente_estado_civil;
    }

    public String getPaciente_fnacimiento() {
        return paciente_fnacimiento;
    }

    public void setPaciente_fnacimiento(String paciente_fnacimiento) {
        this.paciente_fnacimiento = paciente_fnacimiento;
    }

    public String getPaciente_edad() {
        return paciente_edad;
    }

    public void setPaciente_edad(String paciente_edad) {
        this.paciente_edad = paciente_edad;
    }

    public String getPaciente_telefono() {
        return paciente_telefono;
    }

    public void setPaciente_telefono(String paciente_telefono) {
        this.paciente_telefono = paciente_telefono;
    }

    public String getPaciente_direccion() {
        return paciente_direccion;
    }

    public void setPaciente_direccion(String paciente_direccion) {
        this.paciente_direccion = paciente_direccion;
    }

    public String getAp_personales() {
        return ap_personales;
    }

    public void setAp_personales(String ap_personales) {
        this.ap_personales = ap_personales;
    }

    public String getAp_familiares() {
        return ap_familiares;
    }

    public void setAp_familiares(String ap_familiares) {
        this.ap_familiares = ap_familiares;
    }

    public String getAp_quirurgicos() {
        return ap_quirurgicos;
    }

    public void setAp_quirurgicos(String ap_quirurgicos) {
        this.ap_quirurgicos = ap_quirurgicos;
    }

    public String getAp_alergicos() {
        return ap_alergicos;
    }

    public void setAp_alergicos(String ap_alergicos) {
        this.ap_alergicos = ap_alergicos;
    }

    public String getAp_habitos() {
        return ap_habitos;
    }

    public void setAp_habitos(String ap_habitos) {
        this.ap_habitos = ap_habitos;
    }

    public String getAgo_menarquia() {
        return ago_menarquia;
    }

    public void setAgo_menarquia(String ago_menarquia) {
        this.ago_menarquia = ago_menarquia;
    }

    public String getAgo_irs() {
        return ago_irs;
    }

    public void setAgo_irs(String ago_irs) {
        this.ago_irs = ago_irs;
    }

    public String getAgo_parejas() {
        return ago_parejas;
    }

    public void setAgo_parejas(String ago_parejas) {
        this.ago_parejas = ago_parejas;
    }

    public String getAgo_ultimo_pap() {
        return ago_ultimo_pap;
    }

    public void setAgo_ultimo_pap(String ago_ultimo_pap) {
        this.ago_ultimo_pap = ago_ultimo_pap;
    }

    public String getAgo_metodos_anti() {
        return ago_metodos_anti;
    }

    public void setAgo_metodos_anti(String ago_metodos_anti) {
        this.ago_metodos_anti = ago_metodos_anti;
    }

    public String getAgo_fum() {
        return ago_fum;
    }

    public void setAgo_fum(String ago_fum) {
        this.ago_fum = ago_fum;
    }

    public String getAgo_fpp() {
        return ago_fpp;
    }

    public void setAgo_fpp(String ago_fpp) {
        this.ago_fpp = ago_fpp;
    }

    public String getAgo_menopausia() {
        return ago_menopausia;
    }

    public void setAgo_menopausia(String ago_menopausia) {
        this.ago_menopausia = ago_menopausia;
    }

    public String getAgo_gestas() {
        return ago_gestas;
    }

    public void setAgo_gestas(String ago_gestas) {
        this.ago_gestas = ago_gestas;
    }

    public String getAgo_partos() {
        return ago_partos;
    }

    public void setAgo_partos(String ago_partos) {
        this.ago_partos = ago_partos;
    }

    public String getAgo_abortos() {
        return ago_abortos;
    }

    public void setAgo_abortos(String ago_abortos) {
        this.ago_abortos = ago_abortos;
    }

    public String getAgo_cesareas() {
        return ago_cesareas;
    }

    public void setAgo_cesareas(String ago_cesareas) {
        this.ago_cesareas = ago_cesareas;
    }

    public String getAgo_edad_gestacional() {
        return ago_edad_gestacional;
    }

    public void setAgo_edad_gestacional(String ago_edad_gestacional) {
        this.ago_edad_gestacional = ago_edad_gestacional;
    }

    public String getAgo_complicaciones() {
        return ago_complicaciones;
    }

    public void setAgo_complicaciones(String ago_complicaciones) {
        this.ago_complicaciones = ago_complicaciones;
    }

    public String getMotivo_consulta() {
        return motivo_consulta;
    }

    public void setMotivo_consulta(String motivo_consulta) {
        this.motivo_consulta = motivo_consulta;
    }

    public String getEnfermedad_acual() {
        return enfermedad_acual;
    }

    public void setEnfermedad_acual(String enfermedad_acual) {
        this.enfermedad_acual = enfermedad_acual;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
    }

    public String getTratamiento() {
        return tratamiento;
    }

    public void setTratamiento(String tratamiento) {
        this.tratamiento = tratamiento;
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
}
