/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD_Estudiante;
import Modelo.Curso;
import Modelo.Estudiante;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USUARIO
 */
public class EstudianteDAO implements CRUD_Estudiante{
    
    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Estudiante e = new Estudiante();

    @Override
    public List listar() {
        ArrayList<Estudiante> list = new ArrayList<>();
        String sql = "SELECT estudiantes.id, nombre, apell, cursos.codigo FROM estudiantes INNER JOIN cursos on estudiantes.id_curso = cursos.id;";
        try {
            con=cn.getConection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next()){
                Estudiante estud = new Estudiante();
                estud.setNombre(rs.getString("nombre"));
                estud.setApell(rs.getString("apell"));
                estud.setNomb_curso(rs.getString("cursos.codigo"));
                
                list.add(estud);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Estudiante list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Estudiante estud) {
        String sql = "INSERT INTO estudiantes (nombre, apell, num_doc, fech_nac, ciud_nac, barr_res, direc_res, edad, genero, rh, eps, telefono, correo, nomb_acud, apell_acu, usuario, contras, id_curso) values('" + estud.getNombre() + "', '" + estud.getApell() + "', '" + estud.getNum_doc()+ "', '" + estud.getFech_nac() + "', '" + estud.getCiud_nac() + "', '" + estud.getBarr_res() + "', '" + estud.getDirec_res() + "', '" + estud.getEdad() + "', '" + estud.getGenero() + "', '" + estud.getRh() + "', '" + estud.getEps() + "', '" + estud.getTelefono() + "', '" + estud.getCorreo() + "', '" + estud.getNomb_acud() + "', '" + estud.getUsuario() + "', '" + estud.getContras() + "', '" + estud.getApell_acu() + "',  '" + estud.getId_curso()+ "')";
        
        try {
            con = cn.getConection();
            st = con.createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(ProfesorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean edit(Estudiante estud) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
