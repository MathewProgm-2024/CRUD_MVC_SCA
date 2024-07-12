/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author USUARIO
 */
public class Asignatura {
    int id;
    String nombre;
    String grado;
    int id_prof;
    String nomb_prof;
    String apell_prof;

    public Asignatura() {
    }

    public Asignatura(int id, String nombre, String grado, int id_prof, String nomb_prof, String apell_prof) {
        this.id = id;
        this.nombre = nombre;
        this.grado = grado;
        this.id_prof = id_prof;
        this.nomb_prof = nomb_prof;
        this.apell_prof = apell_prof;
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

    public String getGrado() {
        return grado;
    }

    public void setGrado(String grado) {
        this.grado = grado;
    }

    public int getId_prof() {
        return id_prof;
    }

    public void setId_prof(int id_prof) {
        this.id_prof = id_prof;
    }

    public String getNomb_prof() {
        return nomb_prof;
    }

    public void setNomb_prof(String nomb_prof) {
        this.nomb_prof = nomb_prof;
    }

    public String getApell_prof() {
        return apell_prof;
    }

    public void setApell_prof(String apell_prof) {
        this.apell_prof = apell_prof;
    }

    
    
    
}
