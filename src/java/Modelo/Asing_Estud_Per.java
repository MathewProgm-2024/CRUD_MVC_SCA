/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author USUARIO
 */
public class Asing_Estud_Per {
    int id;
    int id_per;
    int id_estud_asign;

    public Asing_Estud_Per() {
    }

    public Asing_Estud_Per(int id, int id_per, int id_estud_asign) {
        this.id = id;
        this.id_per = id_per;
        this.id_estud_asign = id_estud_asign;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_per() {
        return id_per;
    }

    public void setId_per(int id_per) {
        this.id_per = id_per;
    }

    public int getId_estud_asign() {
        return id_estud_asign;
    }

    public void setId_estud_asign(int id_estud_asign) {
        this.id_estud_asign = id_estud_asign;
    }
    
    
}
