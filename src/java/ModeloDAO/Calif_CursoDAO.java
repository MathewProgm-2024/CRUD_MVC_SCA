/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD_Calificaciones;
import Modelo.Calificaciones;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class Calif_CursoDAO implements CRUD_Calificaciones {

    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Calificaciones c = new Calificaciones();

    @Override
    public List listar() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Calificaciones list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Calificaciones calif) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean edit(Calificaciones calif) {
        String sql = "UPDATE calificaciones SET nota1=" + calif.getNota1() + ", nota2=" + calif.getNota2() + ", nota3=" + calif.getNota3() + ", nota4=" + calif.getNota4() + ", nota5=" + calif.getNota5() + ", nota_parc=" + calif.getNota_parc() + ", coev=" + calif.getCoev() + ", autoev=" + calif.getAutoev() + ", nota_fin=" + calif.getNota_fin() + " WHERE id_estud=" + calif.getId_estud() + " and periodo=" + calif.getPeriodo();
        try {
            con = cn.getConection();
            st = con.createStatement();
            st.executeUpdate(sql);

        } catch (Exception e) {

        }

        return false;
    }

    @Override
    public List listar_calif_curso(String asign, String curso, String periodo) {
        ArrayList<Calificaciones> list = new ArrayList<>();
        String sql = "SELECT estudiantes.id, estudiantes.nombre, apell, calificaciones.id, periodo, nota1, nota2, nota3, nota4, nota5, nota_parc, coev, autoev, nota_fin, asignaturas.nombre, cursos.codigo FROM calificaciones INNER JOIN estudiantes on estudiantes.id = calificaciones.id_estud INNER JOIN asignaturas on asignaturas.id = calificaciones.id_asign INNER JOIN cursos on cursos.id = estudiantes.id_curso WHERE periodo=" + periodo + " and cursos.codigo=" + curso + " and asignaturas.nombre='" + asign + "'";

        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Calificaciones calif = new Calificaciones();
                calif.setId_estud(rs.getInt("estudiantes.id"));
                calif.setNomb_estud(rs.getString("estudiantes.nombre"));
                calif.setApell_estud(rs.getString("estudiantes.apell"));
                calif.setId(rs.getInt("calificaciones.id"));
                calif.setPeriodo(rs.getString("calificaciones.periodo"));
                calif.setNota1(rs.getDouble("calificaciones.nota1"));
                calif.setNota2(rs.getDouble("calificaciones.nota2"));
                calif.setNota3(rs.getDouble("calificaciones.nota3"));
                calif.setNota4(rs.getDouble("calificaciones.nota4"));
                calif.setNota5(rs.getDouble("calificaciones.nota5"));
                calif.setNota_parc(rs.getDouble("calificaciones.nota_parc"));
                calif.setAutoev(rs.getDouble("calificaciones.autoev"));
                calif.setCoev(rs.getDouble("calificaciones.coev"));
                calif.setNota_fin(rs.getDouble("calificaciones.nota_fin"));
                calif.setAsign(rs.getString("asignaturas.nombre"));
                calif.setCurso(rs.getString("cursos.codigo"));

                list.add(calif);
            }
        } catch (Exception e) {

        }

        return list;
    }

    @Override
    public List lista_asign(int id) {
        ArrayList<Calificaciones> list = new ArrayList<>();
        String sql = "SELECT calificaciones.id, calificaciones.periodo, cursos.codigo, asignaturas.nombre, profesores.nombre, profesores.apell FROM calificaciones LEFT JOIN estudiantes on estudiantes.id = calificaciones.id_estud LEFT JOIN asignaturas on asignaturas.id = calificaciones.id_asign LEFT JOIN cursos on cursos.id = estudiantes.id_curso LEFT JOIN profesores on profesores.id=asignaturas.id_prof WHERE cursos.id=" + id;

        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                Calificaciones calif = new Calificaciones();
                calif.setId(rs.getInt("calificaciones.id"));
                calif.setPeriodo(rs.getString("calificaciones.periodo"));
                calif.setCurso(rs.getString("cursos.codigo"));
                calif.setAsign(rs.getString("asignaturas.nombre"));

                String nomb_prof = rs.getString("profesores.nombre");
                String apell_prof = rs.getString("profesores.apell");

                if (nomb_prof == null && apell_prof == null) {
                    calif.setNomb_prof("No");
                    calif.setApell_prof("asignado");
                } else {
                    calif.setNomb_prof(rs.getString("profesores.nombre"));
                    calif.setApell_prof(rs.getString("profesores.apell"));
                }

                list.add(calif);
            }
        } catch (Exception e) {

        }

        return list;
    }

    @Override
    public boolean eliminar(int id_estud, int id_asign) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listar_calif_estud(String periodo, int id_estud) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
