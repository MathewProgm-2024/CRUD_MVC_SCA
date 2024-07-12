/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD_Profesor;
import Modelo.Asignatura;
import Modelo.Profesor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class ProfesorDAO implements CRUD_Profesor{
    
    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Profesor p = new Profesor();

    @Override
    public List listar() {
        ArrayList<Asignatura> list = new ArrayList<>();
        String sql = "SELECT asignaturas.id, profesores.nombre, profesores.apell asignaturas.nombre, grado FROM asignaturas INNER JOIN profesores on asignaturas.id_prof = profesores.id;";
        try {
            con=cn.getConection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next()){
                Asignatura asign = new Asignatura();
                asign.setId(rs.getInt("id"));
                asign.setNomb_prof(rs.getString("profesoresnombre"));
                asign.setApell_prof(rs.getString("profesores.apell"));
                asign.setNombre(rs.getString("nombre"));
                asign.setGrado(rs.getString("grado"));
                
                list.add(asign);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Profesor list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Profesor prof) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean edit(Profesor prof) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
