/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Profesor;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public interface CRUD_Profesor {
    public List listar();
    public Profesor list(int id);
    public boolean add(Profesor prof);
    public boolean edit(Profesor prof);
    public boolean eliminar(int id);
}
