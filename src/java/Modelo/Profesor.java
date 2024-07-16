/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.concurrent.ThreadLocalRandom;

/**
 *
 * @author USUARIO
 */
public class Profesor {
    int id;
    String nombre;
    String apell;
    String num_doc;
    String fech_nac;
    String ciud_nac;
    String barr_res;
    String direc_res;
    String edad;
    String genero;
    String rh;
    String eps;
    String telefono;
    String correo;
    String num_lic;
    String usuario;
    String contras;
    String nomb_asign;
    String grado_asign;
    
    public static String cadenaAleatoria(int longitud) {
        // El banco de caracteres
        String banco = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        // La cadena en donde iremos agregando un carácter aleatorio
        String cadena = "";
        for (int x = 0; x < longitud; x++) {
            int indiceAleatorio = numeroAleatorioEnRango(0, banco.length() - 1);
            char caracterAleatorio = banco.charAt(indiceAleatorio);
            cadena += caracterAleatorio;
        }
        return cadena;
    }

    public static int numeroAleatorioEnRango(int minimo, int maximo) {
        // nextInt regresa en rango pero con límite superior exclusivo, por eso sumamos 1
        return ThreadLocalRandom.current().nextInt(minimo, maximo + 1);
    }

    public Profesor() {
    }

    public Profesor(int id, String nombre, String apell, String num_doc, String fech_nac, String ciud_nac, String barr_res, String direc_res, String edad, String genero, String rh, String eps, String telefono, String correo, String num_lic, String usuario, String contras) {
        this.id = id;
        this.nombre = nombre;
        this.apell = apell;
        this.num_doc = num_doc;
        this.fech_nac = fech_nac;
        this.ciud_nac = ciud_nac;
        this.barr_res = barr_res;
        this.direc_res = direc_res;
        this.edad = edad;
        this.genero = genero;
        this.rh = rh;
        this.eps = eps;
        this.telefono = telefono;
        this.correo = correo;
        this.num_lic = num_lic;
        this.usuario = usuario;
        this.contras = contras;
        this.nomb_asign = nomb_asign;
        this.grado_asign = grado_asign;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApell() {
        return apell;
    }

    public void setApell(String apell) {
        this.apell = apell;
    }

    public String getNum_doc() {
        return num_doc;
    }

    public void setNum_doc(String num_doc) {
        this.num_doc = num_doc;
    }

    public String getFech_nac() {
        return fech_nac;
    }

    public void setFech_nac(String fech_nac) {
        this.fech_nac = fech_nac;
    }

    public String getCiud_nac() {
        return ciud_nac;
    }

    public void setCiud_nac(String ciud_nac) {
        this.ciud_nac = ciud_nac;
    }

    public String getBarr_res() {
        return barr_res;
    }

    public void setBarr_res(String barr_res) {
        this.barr_res = barr_res;
    }

    public String getDirec_res() {
        return direc_res;
    }

    public void setDirec_res(String direc_res) {
        this.direc_res = direc_res;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getRh() {
        return rh;
    }

    public void setRh(String rh) {
        this.rh = rh;
    }

    public String getEps() {
        return eps;
    }

    public void setEps(String eps) {
        this.eps = eps;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNum_lic() {
        return num_lic;
    }

    public void setNum_lic(String num_lic) {
        this.num_lic = num_lic;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContras() {
        return contras;
    }

    public void setContras(String contras) {
        this.contras = contras;
    }

    public String getNomb_asign() {
        return nomb_asign;
    }

    public void setNomb_asign(String nomb_asign) {
        this.nomb_asign = nomb_asign;
    }

    public String getGrado_asign() {
        return grado_asign;
    }

    public void setGrado_asign(String grado_asign) {
        this.grado_asign = grado_asign;
    }
    
    
}
