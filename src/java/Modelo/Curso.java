/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Mateo Rodriguez C. - 2721519
 */
public class Curso {
    int id;
    String codigo;
    int cant_estud;

    public Curso() {
    }

    public Curso(int id, String codigo, int cant_estud) {
        this.id = id;
        this.codigo = codigo;
        this.cant_estud = cant_estud;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getCant_estud() {
        return cant_estud;
    }

    public void setCant_estud(int cant_estud) {
        this.cant_estud = cant_estud;
    }

    
}
