/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD_Asignatura;
import Modelo.Asignatura;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class AsignaturaDAO implements CRUD_Asignatura{
    
    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Asignatura a = new Asignatura();

    @Override
    public List listar() {
        ArrayList<Asignatura> list = new ArrayList<>();
        String sql = "SELECT asignaturas.id, asignaturas.nombre, profesores.nombre, profesores.apell, asignaturas.grado FROM asignaturas INNER JOIN profesores on asignaturas.id_prof = profesores.id;";
        try {
            con=cn.getConection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next()){
                Asignatura asign = new Asignatura();
                asign.setId(rs.getInt("id"));
                asign.setNombre(rs.getString("asignaturas.nombre"));
                asign.setGrado(rs.getString("grado"));
                asign.setNomb_prof(rs.getString("profesores.nombre"));
                asign.setApell_prof(rs.getString("profesores.apell"));
                list.add(asign);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Asignatura list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Asignatura asign) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean edit(Asignatura asign) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
