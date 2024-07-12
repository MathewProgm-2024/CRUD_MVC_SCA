/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Administrador;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public interface CRUD_Administrador {
    public List listar();
    public Administrador list(int id);
    public boolean add(Administrador admin);
    public boolean edit(Administrador admin);
    public boolean eliminar(int id);
}
