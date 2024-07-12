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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class Calif_CursoDAO implements CRUD_Calificaciones{
    
    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Calificaciones c = new Calificaciones();

    @Override
    public List listar() {
        ArrayList<Calificaciones> list = new ArrayList<>();
        String sql = "SELECT calificaciones.id, estudiantes.nombre, estudiantes.apell, calificaciones.nota1, nota2, nota3, nota4, nota5, nota_parc, coev, autoev, nota_fin FROM calificaciones INNER JOIN estudiantes on calificaciones.id_estud = estudiantes.id where calificaciones.periodo='1'";
        try {
            con=cn.getConection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next()){
                Calificaciones calif = new Calificaciones();
                calif.setId(rs.getInt("id"));
                calif.setNomb_estud(rs.getString("estudiantes.nombre"));
                calif.setApell_estud(rs.getString("estudiantes.apell"));
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

    @Override
    public Calificaciones list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean add(Calificaciones calif) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean edit(Calificaciones calif) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
