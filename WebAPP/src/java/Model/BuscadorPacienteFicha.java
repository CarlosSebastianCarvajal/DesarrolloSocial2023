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
public class BuscadorPacienteFicha {
    private String paciente_dni, paciente_apellido_paterno, paciente_primer_nombre, paciente_fnacimiento,
                    paciente_direccion, paciente_telefono, paciente_genero, paciente_apellido_materno, 
                    paciente_segundo_nombre, paciente_estado_civil, paciente_escolaridad, paciente_ocupacion, 
                    paciente_religion, paciente_orientacion_sexual, paciente_tipo_discapacidad, paciente_porcentaje_discapacidad,paciente_edad,
                    primer_apellido, primer_nombre, parentezco, cedula, telefono,
                    nombre, fecha, hora, historia_personal, antecedentes_familiares, 
                    desarrollo, atencion_psiquiatrica_psicologica, enfermedad_cronica, actividad_interes, 
                    orientacion, pensamiento, lenguaje, memoria, atencion, afectividad, juicio, apariencia, 
                    compormatientos, otros, recomendacion, motivo;

    
    public BuscadorPacienteFicha()    {
    }
    
    public BuscadorPacienteFicha(String paciente_dni, String paciente_apellido_paterno, String paciente_primer_nombre, String paciente_fnacimiento, 
    String paciente_direccion, String paciente_telefono, String paciente_genero, String paciente_apellido_materno, 
    String paciente_segundo_nombre, String paciente_estado_civil, String paciente_escolaridad, String paciente_ocupacion, 
    String paciente_religion, String paciente_orientacion_sexual, String paciente_tipo_discapacidad, String paciente_porcentaje_discapacidad, String paciente_edad,
    String primer_apellido, String primer_nombre, String parentezco, String cedula, String telefono,
    String nombre, String fecha, String hora, String historia_personal, String antecedentes_familiares, 
    String desarrollo, String atencion_psiquiatrica_psicologica, String enfermedad_cronica, String actividad_interes, 
    String orientacion, String pensamiento, String lenguaje, String memoria, String atencion, String afectividad, String juicio, String apariencia, 
    String compormatientos, String otros, String recomendacion, String motivo) {
        this.paciente_dni = paciente_dni;
        this.paciente_apellido_paterno = paciente_apellido_paterno;
        this.paciente_primer_nombre = paciente_primer_nombre;
        this.paciente_direccion = paciente_direccion;
        this.paciente_telefono = paciente_telefono;
        this.paciente_genero = paciente_genero;
        this.paciente_apellido_materno = paciente_apellido_materno;
        this.paciente_segundo_nombre = paciente_segundo_nombre;
        this.paciente_estado_civil = paciente_estado_civil;
        this.paciente_escolaridad = paciente_escolaridad;
        this.paciente_ocupacion = paciente_ocupacion;
        this.paciente_religion = paciente_religion;
        this.paciente_orientacion_sexual = paciente_orientacion_sexual;
        this.paciente_genero = paciente_genero;
        this.paciente_tipo_discapacidad = paciente_tipo_discapacidad;
        this.paciente_porcentaje_discapacidad = paciente_porcentaje_discapacidad;
        this.paciente_edad=paciente_edad;
        
        this.primer_apellido = primer_apellido;
        this.primer_nombre = primer_nombre;
        this.parentezco = parentezco;
        this.cedula = cedula;
        this.telefono = telefono;
        this.nombre = nombre;
        this.fecha = fecha;
        this.hora = hora;
        this.desarrollo = desarrollo;
        this.antecedentes_familiares = antecedentes_familiares;
        this.atencion_psiquiatrica_psicologica = atencion_psiquiatrica_psicologica;
        this.enfermedad_cronica = enfermedad_cronica;
        this.actividad_interes = actividad_interes;
        this.orientacion = orientacion;
        this.pensamiento = pensamiento;
        this.lenguaje = lenguaje; 
        this.memoria = memoria;
        this.atencion = atencion;
        this.afectividad = afectividad;
        this.juicio = juicio;
        this.apariencia = apariencia; 
        this.compormatientos = compormatientos;
        this.otros = otros;
        this.recomendacion = recomendacion;
        this.motivo = motivo; 
    }

    public String getPaciente_dni() {
        return paciente_dni;
    }

    public void setPaciente_dni(String paciente_dni) {
        this.paciente_dni = paciente_dni;
    }

    public String getPaciente_apellido_paterno() {
        return paciente_apellido_paterno;
    }

    public void setPaciente_apellido_paterno(String paciente_apellido_paterno) {
        this.paciente_apellido_paterno = paciente_apellido_paterno;
    }

    public String getPaciente_primer_nombre() {
        return paciente_primer_nombre;
    }

    public void setPaciente_primer_nombre(String paciente_primer_nombre) {
        this.paciente_primer_nombre = paciente_primer_nombre;
    }

    public String getPaciente_fnacimiento() {
        return paciente_fnacimiento;
    }

    public void setPaciente_fnacimiento(String paciente_fnacimiento) {
        this.paciente_fnacimiento = paciente_fnacimiento;
    }

    public String getPaciente_direccion() {
        return paciente_direccion;
    }

    public void setPaciente_direccion(String paciente_direccion) {
        this.paciente_direccion = paciente_direccion;
    }

    public String getPaciente_telefono() {
        return paciente_telefono;
    }

    public void setPaciente_telefono(String paciente_telefono) {
        this.paciente_telefono = paciente_telefono;
    }

    public String getPaciente_genero() {
        return paciente_genero;
    }

    public void setPaciente_genero(String paciente_genero) {
        this.paciente_genero = paciente_genero;
    }

    public String getPaciente_apellido_materno() {
        return paciente_apellido_materno;
    }

    public void setPaciente_apellido_materno(String paciente_apellido_materno) {
        this.paciente_apellido_materno = paciente_apellido_materno;
    }

    public String getPaciente_segundo_nombre() {
        return paciente_segundo_nombre;
    }

    public void setPaciente_segundo_nombre(String paciente_segundo_nombre) {
        this.paciente_segundo_nombre = paciente_segundo_nombre;
    }

    public String getPaciente_estado_civil() {
        return paciente_estado_civil;
    }

    public void setPaciente_estado_civil(String paciente_estado_civil) {
        this.paciente_estado_civil = paciente_estado_civil;
    }

    public String getPaciente_escolaridad() {
        return paciente_escolaridad;
    }

    public void setPaciente_escolaridad(String paciente_escolaridad) {
        this.paciente_escolaridad = paciente_escolaridad;
    }

    public String getPaciente_ocupacion() {
        return paciente_ocupacion;
    }

    public void setPaciente_ocupacion(String paciente_ocupacion) {
        this.paciente_ocupacion = paciente_ocupacion;
    }

    public String getPaciente_religion() {
        return paciente_religion;
    }

    public void setPaciente_religion(String paciente_religion) {
        this.paciente_religion = paciente_religion;
    }

    public String getPaciente_orientacion_sexual() {
        return paciente_orientacion_sexual;
    }

    public void setPaciente_orientacion_sexual(String paciente_orientacion_sexual) {
        this.paciente_orientacion_sexual = paciente_orientacion_sexual;
    }

    public String getPaciente_tipo_discapacidad() {
        return paciente_tipo_discapacidad;
    }

    public void setPaciente_tipo_discapacidad(String paciente_tipo_discapacidad) {
        this.paciente_tipo_discapacidad = paciente_tipo_discapacidad;
    }

    public String getPaciente_porcentaje_discapacidad() {
        return paciente_porcentaje_discapacidad;
    }

    public void setPaciente_porcentaje_discapacidad(String paciente_porcentaje_discapacidad) {
        this.paciente_porcentaje_discapacidad = paciente_porcentaje_discapacidad;
    }
    
    public String getPaciente_edad() {
        return paciente_edad;
    }

    public void setPaciente_edad(String paciente_edad) {
        this.paciente_edad = paciente_edad;
    }

    public String getPrimer_apellido() {
        return primer_apellido;
    }

    public void setPrimer_apellido(String primer_apellido) {
        this.primer_apellido = primer_apellido;
    }

    public String getPrimer_nombre() {
        return primer_nombre;
    }

    public void setPrimer_nombre(String primer_nombre) {
        this.primer_nombre = primer_nombre;
    }

    public String getParentezco() {
        return parentezco;
    }

    public void setParentezco(String parentezco) {
        this.parentezco = parentezco;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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

    public String getHistoria_personal() {
        return historia_personal;
    }

    public void setHistoria_personal(String historia_personal) {
        this.historia_personal = historia_personal;
    }

    public String getAntecedentes_familiares() {
        return antecedentes_familiares;
    }

    public void setAntecedentes_familiares(String antecedentes_familiares) {
        this.antecedentes_familiares = antecedentes_familiares;
    }

    public String getDesarrollo() {
        return desarrollo;
    }

    public void setDesarrollo(String desarrollo) {
        this.desarrollo = desarrollo;
    }

    public String getAtencion_psiquiatrica_psicologica() {
        return atencion_psiquiatrica_psicologica;
    }

    public void setAtencion_psiquiatrica_psicologica(String atencion_psiquiatrica_psicologica) {
        this.atencion_psiquiatrica_psicologica = atencion_psiquiatrica_psicologica;
    }

    public String getEnfermedad_cronica() {
        return enfermedad_cronica;
    }

    public void setEnfermedad_cronica(String enfermedad_cronica) {
        this.enfermedad_cronica = enfermedad_cronica;
    }

    public String getActividad_interes() {
        return actividad_interes;
    }

    public void setActividad_interes(String actividad_interes) {
        this.actividad_interes = actividad_interes;
    }

    public String getOrientacion() {
        return orientacion;
    }

    public void setOrientacion(String orientacion) {
        this.orientacion = orientacion;
    }

    public String getPensamiento() {
        return pensamiento;
    }

    public void setPensamiento(String pensamiento) {
        this.pensamiento = pensamiento;
    }

    public String getLenguaje() {
        return lenguaje;
    }

    public void setLenguaje(String lenguaje) {
        this.lenguaje = lenguaje;
    }

    public String getMemoria() {
        return memoria;
    }

    public void setMemoria(String memoria) {
        this.memoria = memoria;
    }

    public String getAtencion() {
        return atencion;
    }

    public void setAtencion(String atencion) {
        this.atencion = atencion;
    }

    public String getAfectividad() {
        return afectividad;
    }

    public void setAfectividad(String afectividad) {
        this.afectividad = afectividad;
    }

    public String getJuicio() {
        return juicio;
    }

    public void setJuicio(String juicio) {
        this.juicio = juicio;
    }

    public String getApariencia() {
        return apariencia;
    }

    public void setApariencia(String apariencia) {
        this.apariencia = apariencia;
    }

    public String getCompormatientos() {
        return compormatientos;
    }

    public void setCompormatientos(String compormatientos) {
        this.compormatientos = compormatientos;
    }

    public String getOtros() {
        return otros;
    }

    public void setOtros(String otros) {
        this.otros = otros;
    }

    public String getRecomendacion() {
        return recomendacion;
    }

    public void setRecomendacion(String recomendacion) {
        this.recomendacion = recomendacion;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }
}
