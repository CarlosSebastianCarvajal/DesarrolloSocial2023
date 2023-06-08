package Model;

public class BuscadorPaciente {

    private String pacienteid, paciente_tiposangre, paciente_estadocivil, paciente_parroquia, paciente_fechanacimiento, paciente_canton, paciente_tipo_dni, paciente_primernombre, paciente_segundonombre, paciente_primerapellido, paciente_segundoapellido, nombrescompleto, paciente_ayudasocial, paciente_dni, paciente_primer_segundo_nombre, paciente_grupo, paciente_primer_segundo_apellido, paciente_direccion, paciente_provincia, paciente_nacionalidad, paciente_genero, paciente_correoelectronico, paciente_telefono, paciente_convencional;

    public BuscadorPaciente() {
    }

    public BuscadorPaciente(String paciente_tipo_dni, String paciente_tiposangre, String paciente_estadocivil, String paciente_parroquia, String paciente_canton, String paciente_fechanacimiento, String pacienteid, String paciente_primernombre, String paciente_segundonombre, String paciente_primerapellido, String paciente_segundoapellido, String nombrescompletos, String paciente_dni, String paciente_primer_segundo_nombre, String paciente_primer_segundo_apellido, String paciente_direccion, String paciente_provincia, String paciente_nacionalidad, String paciente_genero, String paciente_correoelectronico, String paciente_ayudasocial, String paciente_telefono, String paciente_convencional, String paciente_grupo) {
        this.paciente_tiposangre = paciente_tiposangre;
        this.paciente_estadocivil = paciente_estadocivil;
        this.paciente_fechanacimiento = paciente_fechanacimiento;
        this.paciente_parroquia = paciente_parroquia;
        this.paciente_canton = paciente_canton;
        this.paciente_tipo_dni = paciente_tipo_dni;
        this.pacienteid = pacienteid;
        this.nombrescompleto = nombrescompletos;
        this.paciente_dni = paciente_dni;
        this.paciente_primer_segundo_nombre = paciente_primer_segundo_nombre;
        this.paciente_primer_segundo_apellido = paciente_primer_segundo_apellido;
        this.paciente_direccion = paciente_direccion;
        this.paciente_provincia = paciente_provincia;
        this.paciente_nacionalidad = paciente_nacionalidad;
        this.paciente_genero = paciente_genero;
        this.paciente_correoelectronico = paciente_correoelectronico;
        this.paciente_ayudasocial = paciente_ayudasocial;
        this.paciente_telefono = paciente_telefono;
        this.paciente_convencional = paciente_convencional;
        this.paciente_grupo = paciente_grupo;
        this.paciente_primernombre = paciente_primernombre;
        this.paciente_segundonombre = paciente_segundonombre;
        this.paciente_primerapellido = paciente_primerapellido;
        this.paciente_segundoapellido = paciente_segundoapellido;
    }

    public String getPaciente_tiposangre() {
        return paciente_tiposangre;
    }

    public void setPaciente_tiposangre(String paciente_tiposangre) {
        this.paciente_tiposangre = paciente_tiposangre;
    }

    public String getPaciente_estadocivil() {
        return paciente_estadocivil;
    }

    public void setPaciente_estadocivil(String paciente_estadocivil) {
        this.paciente_estadocivil = paciente_estadocivil;
    }

    public String getPaciente_parroquia() {
        return paciente_parroquia;
    }

    public void setPaciente_parroquia(String paciente_parroquia) {
        this.paciente_parroquia = paciente_parroquia;
    }

    public String getPaciente_fechanacimiento() {
        return paciente_fechanacimiento;
    }

    public void setPaciente_fechanacimiento(String paciente_fechanacimiento) {
        this.paciente_fechanacimiento = paciente_fechanacimiento;
    }

    public String getPaciente_canton() {
        return paciente_canton;
    }

    public void setPaciente_canton(String paciente_canton) {
        this.paciente_canton = paciente_canton;
    }

    public String getPaciente_primernombre() {
        return paciente_primernombre;
    }

    public void setPaciente_primernombre(String paciente_primernombre) {
        this.paciente_primernombre = paciente_primernombre;
    }

    public String getPaciente_segundonombre() {
        return paciente_segundonombre;
    }

    public void setPaciente_segundonombre(String paciente_segundonombre) {
        this.paciente_segundonombre = paciente_segundonombre;
    }

    public String getPaciente_primerapellido() {
        return paciente_primerapellido;
    }

    public void setPaciente_primerapellido(String paciente_primerapellido) {
        this.paciente_primerapellido = paciente_primerapellido;
    }

    public String getPaciente_segundoapellido() {
        return paciente_segundoapellido;
    }

    public void setPaciente_segundoapellido(String paciente_segundoapellido) {
        this.paciente_segundoapellido = paciente_segundoapellido;
    }

    public String getPaciente_tipo_dni() {
        return paciente_tipo_dni;
    }

    public void setPaciente_tipo_dni(String paciente_tipo_dni) {
        this.paciente_tipo_dni = paciente_tipo_dni;
    }

    public String getPacienteid() {
        return pacienteid;
    }

    public void setPacienteid(String pacienteid) {
        this.pacienteid = pacienteid;
    }

    public String getNombrescompleto() {
        return nombrescompleto;
    }

    public void setNombrescompleto(String nombrescompleto) {
        this.nombrescompleto = nombrescompleto;
    }

    public String getPaciente_grupo() {
        return paciente_grupo;
    }

    public void setPaciente_grupo(String paciente_grupo) {
        this.paciente_grupo = paciente_grupo;
    }

    public String getPaciente_primer_segundo_nombre() {
        return paciente_primer_segundo_nombre;
    }

    public void setPaciente_primer_segundo_nombre(String paciente_primer_segundo_nombre) {
        this.paciente_primer_segundo_nombre = paciente_primer_segundo_nombre;
    }

    public String getPaciente_primer_segundo_apellido() {
        return paciente_primer_segundo_apellido;
    }

    public void setPaciente_primer_segundo_apellido(String paciente_primer_segundo_apellido) {
        this.paciente_primer_segundo_apellido = paciente_primer_segundo_apellido;
    }

    public String getPaciente_direccion() {
        return paciente_direccion;
    }

    public void setPaciente_direccion(String paciente_direccion) {
        this.paciente_direccion = paciente_direccion;
    }

    public String getPaciente_provincia() {
        return paciente_provincia;
    }

    public void setPaciente_provincia(String paciente_provincia) {
        this.paciente_provincia = paciente_provincia;
    }
 

    public String getPaciente_nacionalidad() {
        return paciente_nacionalidad;
    }

    public void setPaciente_nacionalidad(String paciente_nacionalidad) {
        this.paciente_nacionalidad = paciente_nacionalidad;
    }

    public String getPaciente_genero() {
        return paciente_genero;
    }

    public void setPaciente_genero(String paciente_genero) {
        this.paciente_genero = paciente_genero;
    }

    public String getPaciente_correoelectronico() {
        return paciente_correoelectronico;
    }

    public void setPaciente_correoelectronico(String paciente_correoelectronico) {
        this.paciente_correoelectronico = paciente_correoelectronico;
    }

    public String getPaciente_ayudasocial() {
        return paciente_ayudasocial;
    }

    public void setPaciente_ayudasocial(String paciente_ayudasocial) {
        this.paciente_ayudasocial = paciente_ayudasocial;
    }

    public String getPaciente_dni() {
        return paciente_dni;
    }

    public void setPaciente_dni(String paciente_dni) {
        this.paciente_dni = paciente_dni;
    }

    public String getPaciente_telefono() {
        return paciente_telefono;
    }

    public void setPaciente_telefono(String paciente_telefono) {
        this.paciente_telefono = paciente_telefono;
    }

    public String getPaciente_convencional() {
        return paciente_convencional;
    }

    public void setPaciente_convencional(String paciente_convencional) {
        this.paciente_convencional = paciente_convencional;
    }

}
