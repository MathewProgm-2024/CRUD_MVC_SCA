/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author USUARIO
 */
public class Calificaciones {
    int id;
    int id_estud;
    int id_asign;
    String periodo;
    double nota1;
    double nota2;
    double nota3;
    double nota4;
    double nota5;
    double nota_parc;
    double coev;
    double autoev;
    double nota_fin;
    String nomb_estud;
    String apell_estud;
    String asign;
    String curso;
    String nomb_prof;
    String apell_prof;
    
    public Calificaciones() {
    }

    public Calificaciones(int id, int id_estud, int id_asign, String periodo, double nota1, double nota2, double nota3, double nota4, double nota5, double nota_parc, double coev, double autoev, double nota_fin, String nomb_estud, String apell_estud) {
        this.id = id;
        this.id_estud = id_estud;
        this.id_asign = id_asign;
        this.periodo = periodo;
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
        this.nota4 = nota4;
        this.nota5 = nota5;
        this.nota_parc = nota_parc;
        this.coev = coev;
        this.autoev = autoev;
        this.nota_fin = nota_fin;
        this.nomb_estud = nomb_estud;
        this.apell_estud = apell_estud;
        this.asign = asign;
        this.curso = curso;
        this.nomb_prof = nomb_prof;
        this.apell_prof = apell_prof;
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

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
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

    public double getNota_parc() {
        return nota_parc;
    }

    public void setNota_parc(double nota_parc) {
        this.nota_parc = nota_parc;
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

    public String getNomb_estud() {
        return nomb_estud;
    }

    public void setNomb_estud(String nomb_estud) {
        this.nomb_estud = nomb_estud;
    }

    public String getApell_estud() {
        return apell_estud;
    }

    public void setApell_estud(String apell_estud) {
        this.apell_estud = apell_estud;
    }

    public String getAsign() {
        return asign;
    }

    public void setAsign(String asign) {
        this.asign = asign;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
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
