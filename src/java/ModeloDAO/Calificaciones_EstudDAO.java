/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD_Calificaciones;
import Modelo.Asignatura;
import Modelo.Calificaciones;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class Calificaciones_EstudDAO implements CRUD_Calificaciones {

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
        try {
            int i = 1;
            do {
                String sql = "INSERT INTO calificaciones (id_estud, id_asign, periodo) values('" + calif.getId_estud() + "', '" + calif.getId_asign() + "', '" + i + "')";

                con = cn.getConection();
                st = con.createStatement();
                st.executeUpdate(sql);
                i++;
            } while (i <= 4);

        } catch (SQLException e) {

        }

        return false;
    }

    @Override
    public boolean edit(Calificaciones calif) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listar_calif_curso(String asign, String curso, String periodo) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List lista_asign(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int id_estud, int id_asign) {
        String sql = "DELETE FROM calificaciones WHERE id_estud=" + id_estud + " and id_asign=" + id_asign;
        try {
            con = cn.getConection();
            st = con.createStatement();
            st.executeUpdate(sql);
        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public List listar_calif_estud(String periodo, int id_estud) {
        ArrayList<Calificaciones> list = new ArrayList<>();
        String sql = "SELECT calificaciones.id, asignaturas.nombre, calificaciones.nota1, nota2, nota3, nota4, nota5, nota_parc, coev, autoev, nota_fin FROM calificaciones LEFT JOIN asignaturas on calificaciones.id_asign = asignaturas.id where periodo=" + periodo + " and id_estud=" + id_estud + "";
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Calificaciones calif = new Calificaciones();
                calif.setId(rs.getInt("id"));
                calif.setAsign(rs.getString("asignaturas.nombre"));
                calif.setNota1(rs.getDouble("nota1"));
                calif.setNota2(rs.getDouble("nota2"));
                calif.setNota3(rs.getDouble("nota3"));
                calif.setNota4(rs.getDouble("nota4"));
                calif.setNota5(rs.getDouble("nota5"));
                calif.setNota_parc(rs.getDouble("nota_parc"));
                calif.setCoev(rs.getDouble("coev"));
                calif.setAutoev(rs.getDouble("autoev"));
                calif.setNota_fin(rs.getDouble("nota_fin"));

                list.add(calif);
            }
        } catch (Exception e) {

        }
        return list;
    }

}
