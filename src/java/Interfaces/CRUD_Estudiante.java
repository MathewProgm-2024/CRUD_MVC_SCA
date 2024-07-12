/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Estudiante;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public interface CRUD_Estudiante {
    public List listar();
    public Estudiante list(int id);
    public boolean add(Estudiante estud);
    public boolean edit(Estudiante estud);
    public boolean eliminar(int id);
}
