/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author USUARIO
 */
public class Usuario {
    private int id;
    private String nomb_usuario;
    private String contras;
    private String cargo;
    
     public Usuario() {
         
    }

    public Usuario(int id, String nomb_usuario, String contras, String cargo) {
        this.id = id;
        this.nomb_usuario = nomb_usuario;
        this.contras = contras;
        this.cargo = cargo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomb_usuario() {
        return nomb_usuario;
    }

    public void setNomb_usuario(String nomb_usuario) {
        this.nomb_usuario = nomb_usuario;
    }

    public String getContras() {
        return contras;
    }

    public void setContras(String contras) {
        this.contras = contras;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    
    
}
