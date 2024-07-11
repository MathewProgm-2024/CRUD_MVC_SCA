/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author USUARIO
 */
public class Periodo {
    int id;
    String num_per;

    public Periodo() {
    }

    public Periodo(int id, String num_per) {
        this.id = id;
        this.num_per = num_per;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNum_per() {
        return num_per;
    }

    public void setNum_per(String num_per) {
        this.num_per = num_per;
    }
    
    
}
