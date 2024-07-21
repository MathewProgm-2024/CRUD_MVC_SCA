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
public class AsignaturaDAO implements CRUD_Asignatura {

    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Asignatura a = new Asignatura();

    @Override
    public List listar() {
        ArrayList<Asignatura> list = new ArrayList<>();
        String sql = "SELECT asignaturas.id, asignaturas.nombre, profesores.nombre, profesores.apell, asignaturas.grado FROM asignaturas LEFT JOIN profesores on asignaturas.id_prof = profesores.id;";
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Asignatura asign = new Asignatura();
                asign.setId(rs.getInt("asignaturas.id"));
                asign.setNombre(rs.getString("asignaturas.nombre"));
                asign.setGrado(rs.getString("grado"));

                String nomb_prof = rs.getString("profesores.nombre");
                String apell_prof = rs.getString("profesores.apell");

                if (nomb_prof == null && apell_prof == null) {
                    asign.setNomb_prof("No");
                    asign.setApell_prof("asignado");
                } else {
                    asign.setNomb_prof(rs.getString("profesores.nombre"));
                    asign.setApell_prof(rs.getString("profesores.apell"));
                }

                list.add(asign);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Asignatura list(int id) {
        String sql = "SELECT asignaturas.id, asignaturas.nombre, asignaturas.id_prof, profesores.nombre, profesores.apell, asignaturas.grado FROM asignaturas LEFT JOIN profesores on asignaturas.id_prof = profesores.id WHERE asignaturas.id=" + id;
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                a.setId(rs.getInt("asignaturas.id"));
                a.setNombre(rs.getString("asignaturas.nombre"));
                a.setGrado(rs.getString("asignaturas.grado"));
                
                String id_prof = rs.getString("id_prof");
                String nomb_prof = rs.getString("profesores.nombre");
                String apell_prof = rs.getString("profesores.apell");
                
                if(id_prof==null && nomb_prof==null && apell_prof==null){
                    a.setId_prof(0);
                    a.setNomb_prof("Ninguno");
                    a.setApell_prof("Ninguno");
                }else{
                    a.setId_prof(rs.getInt("id_prof"));
                    a.setNomb_prof(rs.getString("profesores.nombre"));
                    a.setApell_prof(rs.getString("profesores.apell"));
                }

            }
        } catch (Exception e) {

        }
        return a;
    }

    @Override
    public boolean add(Asignatura asign) {
        String sql = "INSERT INTO asignaturas(nombre, grado, id_prof) values('" + asign.getNombre() + "', '" + asign.getGrado() + "', '" + asign.getId_prof() + "')";
        try {
            con = cn.getConection();
            st = con.createStatement();
            st.executeUpdate(sql);

        } catch (Exception e) {

        }

        return false;
    }

    @Override
    public boolean edit(Asignatura asign) {
        String sql = "UPDATE asignaturas SET nombre='" + asign.getNombre() + "', grado='" + asign.getGrado() + "', id_prof='" + asign.getId_prof() + "' WHERE id=" + asign.getId();

        try {
            con = cn.getConection();
            st = con.createStatement();
            st.executeUpdate(sql);

        } catch (Exception e) {

        }

        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM asignaturas WHERE id="+id;
        try{
            con=cn.getConection();
            st=con.createStatement();
            st.executeUpdate(sql);        
        }catch (Exception e) {

        }
        return false;
    }

    @Override
    public List listar_estud(int id) {
        ArrayList<Asignatura> list = new ArrayList<>();
        String sql = "SELECT calificaciones.id, id_asign, id_estud, asignaturas.nombre, profesores.nombre, profesores.apell, asignaturas.grado FROM calificaciones LEFT JOIN asignaturas on asignaturas.id = calificaciones.id_asign LEFT JOIN profesores on profesores.id = asignaturas.id_prof LEFT JOIN estudiantes on estudiantes.id = calificaciones.id_estud LEFT JOIN cursos on cursos.id = estudiantes.id_curso WHERE estudiantes.id=" + id;
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Asignatura asign = new Asignatura();
                asign.setId(rs.getInt("id_asign"));
                asign.setNombre(rs.getString("asignaturas.nombre"));
                asign.setGrado(rs.getString("grado"));
                
                String nomb_prof = rs.getString("profesores.nombre");
                String apell_prof = rs.getString("profesores.apell");

                if (nomb_prof == null && apell_prof == null) {
                    asign.setNomb_prof("No");
                    asign.setApell_prof("asignado");
                } else {
                    asign.setNomb_prof(rs.getString("profesores.nombre"));
                    asign.setApell_prof(rs.getString("profesores.apell"));
                }
                list.add(asign);
            }
        } catch (Exception e) {

        }
        return list;
    }

}
