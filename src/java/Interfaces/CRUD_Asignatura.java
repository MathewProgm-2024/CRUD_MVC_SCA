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
    public Asignatura list(int id);
    public boolean add(Asignatura asign);
    public boolean edit(Asignatura asign);
    public boolean eliminar(int id);
}
