/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author jean
 */
public class ControladorPaciente {

    String paciente_tipo_dni, paciente_dni, paciente_apellido_paterno,
            paciente_primer_nombre, paciente_fnacimiento, paciente_direccion,
            paciente_telefono, paciente_genero, paciente_grupo, paciente_ayudasocial,
            paciente_apellido_materno, paciente_segundo_nombre,
            paciente_estado, paciente_provincia, paciente_canton, paciente_parroquia,
            paciente_nacionalidad, paciente_estado_civil, paciente_convencional,
            paciente_tipo_sangre;
    String created_at,paciente_email;

    public ControladorPaciente(String paciente_tipo_dni, String paciente_dni, String paciente_apellido_paterno, String paciente_primer_nombre, String paciente_fnacimiento, String paciente_direccion, String paciente_telefono, String paciente_genero, String paciente_grupo, String paciente_ayudasocial, String paciente_apellido_materno, String paciente_segundo_nombre, String paciente_provincia, String paciente_canton, String paciente_parroquia, String paciente_nacionalidad, String paciente_estado_civil, String paciente_convencional, String paciente_tipo_sangre,String paciente_email) {
        this.paciente_tipo_dni = paciente_tipo_dni;
        this.paciente_dni = paciente_dni;
        this.paciente_apellido_paterno = paciente_apellido_paterno;
        this.paciente_primer_nombre = paciente_primer_nombre;
        this.paciente_fnacimiento = paciente_fnacimiento;
        this.paciente_direccion = paciente_direccion;
        this.paciente_telefono = paciente_telefono;
        this.paciente_genero = paciente_genero;
        this.paciente_grupo = paciente_grupo;
        this.paciente_ayudasocial = paciente_ayudasocial;
        this.paciente_apellido_materno = paciente_apellido_materno;
        this.paciente_segundo_nombre = paciente_segundo_nombre;
        this.paciente_provincia = paciente_provincia;
        this.paciente_canton = paciente_canton;
        this.paciente_parroquia = paciente_parroquia;
        this.paciente_nacionalidad = paciente_nacionalidad;
        this.paciente_estado_civil = paciente_estado_civil;
        this.paciente_convencional = paciente_convencional;
        this.paciente_tipo_sangre = paciente_tipo_sangre;
        this.paciente_email = paciente_email;
    }

    public String getPaciente_email() {
        return paciente_email;
    }

    public void setPaciente_email(String paciente_email) {
        this.paciente_email = paciente_email;
    }

    public String getPaciente_tipo_dni() {
        return paciente_tipo_dni;
    }

    public void setPaciente_tipo_dni(String paciente_tipo_dni) {
        this.paciente_tipo_dni = paciente_tipo_dni;
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

    public String getPaciente_grupo() {
        return paciente_grupo;
    }

    public void setPaciente_grupo(String paciente_grupo) {
        this.paciente_grupo = paciente_grupo;
    }

    public String getPaciente_ayudasocial() {
        return paciente_ayudasocial;
    }

    public void setPaciente_ayudasocial(String paciente_ayudasocial) {
        this.paciente_ayudasocial = paciente_ayudasocial;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
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

    public String getPaciente_estado() {
        return paciente_estado;
    }

    public void setPaciente_estado(String paciente_estado) {
        this.paciente_estado = paciente_estado;
    }

    public String getPaciente_provincia() {
        return paciente_provincia;
    }

    public void setPaciente_provincia(String paciente_provincia) {
        this.paciente_provincia = paciente_provincia;
    }

    public String getPaciente_canton() {
        return paciente_canton;
    }

    public void setPaciente_canton(String paciente_canton) {
        this.paciente_canton = paciente_canton;
    }

    public String getPaciente_parroquia() {
        return paciente_parroquia;
    }

    public void setPaciente_parroquia(String paciente_parroquia) {
        this.paciente_parroquia = paciente_parroquia;
    }

    public String getPaciente_nacionalidad() {
        return paciente_nacionalidad;
    }

    public void setPaciente_nacionalidad(String paciente_nacionalidad) {
        this.paciente_nacionalidad = paciente_nacionalidad;
    }

    public String getPaciente_estado_civil() {
        return paciente_estado_civil;
    }

    public void setPaciente_estado_civil(String paciente_estado_civil) {
        this.paciente_estado_civil = paciente_estado_civil;
    }

    public String getPaciente_convencional() {
        return paciente_convencional;
    }

    public void setPaciente_convencional(String paciente_convencional) {
        this.paciente_convencional = paciente_convencional;
    }

    public String getPaciente_tipo_sangre() {
        return paciente_tipo_sangre;
    }

    public void setPaciente_tipo_sangre(String paciente_tipo_sangre) {
        this.paciente_tipo_sangre = paciente_tipo_sangre;
    }

}
