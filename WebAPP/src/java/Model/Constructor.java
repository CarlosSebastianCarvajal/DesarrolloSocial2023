
package Model;

public class Constructor {

    private int galeno_id;
    private String galeno_user, galeno_pass, galeno_dni, galeno_primer_nombre, galeno_telefono, galeno_direccion, galeno_segundo_nombre, galeno_provincia, galeno_canton, galeno_parroquia, galeno_correoelectronico;

    public Constructor() {
    }

    public Constructor(int galeno_id, String galeno_user, String galeno_pass, String galeno_dni, String galeno_primer_nombre, String galeno_telefono, String galeno_direccion, String galeno_segundo_nombre, String galeno_provincia, String galeno_canton, String galeno_parroquia, String galeno_correoelectronico) {
        this.galeno_id = galeno_id;
        this.galeno_user = galeno_user;
        this.galeno_pass = galeno_pass;
        this.galeno_dni = galeno_dni;
        this.galeno_primer_nombre = galeno_primer_nombre;
        this.galeno_telefono = galeno_telefono;
        this.galeno_direccion = galeno_direccion;
        this.galeno_segundo_nombre = galeno_segundo_nombre;
        this.galeno_provincia = galeno_provincia;
        this.galeno_canton = galeno_canton;
        this.galeno_parroquia = galeno_parroquia;
        this.galeno_correoelectronico = galeno_correoelectronico;
    }

    public Constructor(String galeno_user, String galeno_pass) {
        this.galeno_user = galeno_user;
        this.galeno_pass = galeno_pass;
    }

    public int getGaleno_id() {
        return galeno_id;
    }

    public void setGaleno_id(int galeno_id) {
        this.galeno_id = galeno_id;
    }

    public String getGaleno_user() {
        return galeno_user;
    }

    public void setGaleno_user(String galeno_user) {
        this.galeno_user = galeno_user;
    }

    public String getGaleno_pass() {
        return galeno_pass;
    }

    public void setGaleno_pass(String galeno_pass) {
        this.galeno_pass = galeno_pass;
    }

    public String getGaleno_dni() {
        return galeno_dni;
    }

    public void setGaleno_dni(String galeno_dni) {
        this.galeno_dni = galeno_dni;
    }

    public String getGaleno_primer_nombre() {
        return galeno_primer_nombre;
    }

    public void setGaleno_primer_nombre(String galeno_primer_nombre) {
        this.galeno_primer_nombre = galeno_primer_nombre;
    }

    public String getGaleno_telefono() {
        return galeno_telefono;
    }

    public void setGaleno_telefono(String galeno_telefono) {
        this.galeno_telefono = galeno_telefono;
    }

    public String getGaleno_direccion() {
        return galeno_direccion;
    }

    public void setGaleno_direccion(String galeno_direccion) {
        this.galeno_direccion = galeno_direccion;
    }

    public String getGaleno_segundo_nombre() {
        return galeno_segundo_nombre;
    }

    public void setGaleno_segundo_nombre(String galeno_segundo_nombre) {
        this.galeno_segundo_nombre = galeno_segundo_nombre;
    }

    public String getGaleno_provincia() {
        return galeno_provincia;
    }

    public void setGaleno_provincia(String galeno_provincia) {
        this.galeno_provincia = galeno_provincia;
    }

    public String getGaleno_canton() {
        return galeno_canton;
    }

    public void setGaleno_canton(String galeno_canton) {
        this.galeno_canton = galeno_canton;
    }

    public String getGaleno_parroquia() {
        return galeno_parroquia;
    }

    public void setGaleno_parroquia(String galeno_parroquia) {
        this.galeno_parroquia = galeno_parroquia;
    }

    public String getGaleno_correoelectronico() {
        return galeno_correoelectronico;
    }

    public void setGaleno_correoelectronico(String galeno_correoelectronico) {
        this.galeno_correoelectronico = galeno_correoelectronico;
    }

}
