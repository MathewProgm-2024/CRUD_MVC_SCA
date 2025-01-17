/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Asignatura;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public interface CRUD_Asignatura {
    public List listar();
    public List listar_estud(int id);
    public Asignatura list(int id);
    public List list_detal_calif(int id_estud, int id_asign);
    public boolean add(Asignatura asign);
    public boolean edit(Asignatura asign);
    public boolean eliminar(int id);
}
