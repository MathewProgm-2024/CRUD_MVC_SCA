/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Calificaciones;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public interface CRUD_Calificaciones {

    public List listar();

    public List listar_calif_curso(String asign, String curso, String periodo);

    public List listar_calif_estud(String periodo, int id_estud);

    public List lista_asign(int id);

    public Calificaciones list(int id);

    public boolean add(Calificaciones calif);

    public boolean edit(Calificaciones calif);

    public boolean eliminar(int id_estud, int id_asign);
}
