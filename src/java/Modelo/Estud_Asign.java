/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author USUARIO
 */
public class Estud_Asign {
    int id;
    int id_estud;
    int id_asign;
    double nota1;
    double nota2;
    double nota3;
    double nota4;
    double nota5;
    double nota_parcial;
    double coev;
    double autoev;
    double nota_fin;

    public Estud_Asign() {
    }

    public Estud_Asign(int id, int id_estud, int id_asign, double nota1, double nota2, double nota3, double nota4, double nota5, double nota_parcial, double coev, double autoev, double nota_fin) {
        this.id = id;
        this.id_estud = id_estud;
        this.id_asign = id_asign;
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
        this.nota4 = nota4;
        this.nota5 = nota5;
        this.nota_parcial = nota_parcial;
        this.coev = coev;
        this.autoev = autoev;
        this.nota_fin = nota_fin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_estud() {
        return id_estud;
    }

    public void setId_estud(int id_estud) {
        this.id_estud = id_estud;
    }

    public int getId_asign() {
        return id_asign;
    }

    public void setId_asign(int id_asign) {
        this.id_asign = id_asign;
    }

    public double getNota1() {
        return nota1;
    }

    public void setNota1(double nota1) {
        this.nota1 = nota1;
    }

    public double getNota2() {
        return nota2;
    }

    public void setNota2(double nota2) {
        this.nota2 = nota2;
    }

    public double getNota3() {
        return nota3;
    }

    public void setNota3(double nota3) {
        this.nota3 = nota3;
    }

    public double getNota4() {
        return nota4;
    }

    public void setNota4(double nota4) {
        this.nota4 = nota4;
    }

    public double getNota5() {
        return nota5;
    }

    public void setNota5(double nota5) {
        this.nota5 = nota5;
    }

    public double getNota_parcial() {
        return nota_parcial;
    }

    public void setNota_parcial(double nota_parcial) {
        this.nota_parcial = nota_parcial;
    }

    public double getCoev() {
        return coev;
    }

    public void setCoev(double coev) {
        this.coev = coev;
    }

    public double getAutoev() {
        return autoev;
    }

    public void setAutoev(double autoev) {
        this.autoev = autoev;
    }

    public double getNota_fin() {
        return nota_fin;
    }

    public void setNota_fin(double nota_fin) {
        this.nota_fin = nota_fin;
    }
    
    
}
