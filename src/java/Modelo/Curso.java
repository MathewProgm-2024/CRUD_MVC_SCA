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
    int cant_edtud;

    public Curso() {
    }

    public Curso(int id, String codigo, int cant_edtud) {
        this.id = id;
        this.codigo = codigo;
        this.cant_edtud = cant_edtud;
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

    public int getCant_edtud() {
        return cant_edtud;
    }

    public void setCant_edtud(int cant_edtud) {
        this.cant_edtud = cant_edtud;
    }
    
    
}
