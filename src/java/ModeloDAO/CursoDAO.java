/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD_Curso;
import Modelo.Curso;
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
public class CursoDAO implements CRUD_Curso {

    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Curso c = new Curso();

    @Override
    public List listar() {
        ArrayList<Curso> list = new ArrayList<>();
        String sql = "SELECT * FROM cursos";
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Curso cur = new Curso();
                cur.setId(rs.getInt("id"));
                cur.setCodigo(rs.getString("codigo"));
                cur.setCant_estud(rs.getInt("cant_estud"));
                list.add(cur);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Curso list(int id) {
        String sql = "SELECT * FROM cursos where id="+id;
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                c.setId(rs.getInt("id"));
                c.setCodigo(rs.getString("codigo"));
                c.setCant_estud(rs.getInt("cant_estud"));
            }
        } catch (Exception e) {

        }
        return c;
    }

    @Override
    public boolean add(Curso curso) {
        String sql = "INSERT INTO cursos(codigo) values('" + curso.getCodigo() + "')";
        try {
            con = cn.getConection();
            st = con.createStatement();
            st.executeUpdate(sql);

        } catch (Exception e) {

        }

        return false;
    }

    @Override
    public boolean edit(Curso curso) {
        String sql = "UPDATE cursos set codigo=('" + curso.getCodigo() + "') where id=" + curso.getId();
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
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
