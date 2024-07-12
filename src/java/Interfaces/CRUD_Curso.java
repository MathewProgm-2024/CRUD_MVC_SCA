/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Curso;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public interface CRUD_Curso {
    public List listar();
    public Curso list(int id);
    public boolean add(Curso curso);
    public boolean edit(Curso curso);
    public boolean eliminar(int id);
}
