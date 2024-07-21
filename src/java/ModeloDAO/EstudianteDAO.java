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
public class EstudianteDAO implements CRUD_Estudiante {

    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Estudiante e = new Estudiante();

    @Override
    public List listar() {
        ArrayList<Estudiante> list = new ArrayList<>();
        String sql = "SELECT estudiantes.id, nombre, apell, id_curso, cursos.codigo FROM estudiantes LEFT JOIN cursos on estudiantes.id_curso = cursos.id";
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Estudiante estud = new Estudiante();
                estud.setId(rs.getInt("estudiantes.id"));
                estud.setNombre(rs.getString("nombre"));
                estud.setApell(rs.getString("apell"));
                String curso = rs.getString("cursos.codigo");

                if (curso == null) {
                    estud.setNomb_curso("Aún no asignado");
                } else {
                    estud.setNomb_curso(rs.getString("cursos.codigo"));
                }

                list.add(estud);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Estudiante list(int id) {
        String sql = "SELECT estudiantes.id, estudiantes.nombre, estudiantes.apell, estudiantes.num_doc, estudiantes.fech_nac, estudiantes.ciud_nac, estudiantes.barr_res, estudiantes.direc_res, estudiantes.edad, estudiantes.genero, estudiantes.rh, estudiantes.eps, estudiantes.telefono, estudiantes.correo, estudiantes.nomb_acud, estudiantes.apell_acu, estudiantes.usuario, estudiantes.contras, estudiantes.id_curso, cursos.codigo FROM estudiantes INNER JOIN cursos ON cursos.id = estudiantes.id_curso WHERE estudiantes.id="+id;
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()) {
                e.setId(rs.getInt("estudiantes.id"));
                e.setNombre(rs.getString("estudiantes.nombre"));
                e.setApell(rs.getString("estudiantes.apell"));
                e.setNum_doc(rs.getString("estudiantes.num_doc"));
                e.setFech_nac(rs.getString("estudiantes.fech_nac"));
                e.setCiud_nac(rs.getString("estudiantes.ciud_nac"));
                e.setBarr_res(rs.getString("estudiantes.barr_res"));
                e.setDirec_res(rs.getString("estudiantes.direc_res"));
                e.setEdad(rs.getString("estudiantes.edad"));
                e.setGenero(rs.getString("estudiantes.genero"));
                e.setRh(rs.getString("estudiantes.rh"));
                e.setEps(rs.getString("estudiantes.eps"));
                e.setTelefono(rs.getString("estudiantes.telefono"));
                e.setCorreo(rs.getString("estudiantes.correo"));
                e.setNomb_acud(rs.getString("estudiantes.nomb_acud"));
                e.setApell_acu(rs.getString("estudiantes.apell_acu"));
                e.setUsuario(rs.getString("estudiantes.usuario"));
                e.setContras(rs.getString("estudiantes.contras"));
                
                String curso = rs.getString("estudiantes.id_curso");
                String nom_curso = rs.getString("cursos.codigo");    
                
                if(curso==null){
                    e.setId_curso(0);
                }else{
                    e.setId_curso(rs.getInt("estudiantes.id_curso"));
                }
                
                if(nom_curso==null){
                    e.setNomb_curso("Ninguno");
                }else{
                    e.setNomb_curso(rs.getString("cursos.codigo"));
                }
                
            }

        } catch (SQLException ex) {

        }

        return e;
    }

    @Override
    public boolean add(Estudiante estud) {
        String sql = "INSERT INTO estudiantes (nombre, apell, num_doc, fech_nac, ciud_nac, barr_res, direc_res, edad, genero, rh, eps, telefono, correo, nomb_acud, apell_acu, usuario, contras, id_curso) values('" + estud.getNombre() + "', '" + estud.getApell() + "', '" + estud.getNum_doc() + "', '" + estud.getFech_nac() + "', '" + estud.getCiud_nac() + "', '" + estud.getBarr_res() + "', '" + estud.getDirec_res() + "', '" + estud.getEdad() + "', '" + estud.getGenero() + "', '" + estud.getRh() + "', '" + estud.getEps() + "', '" + estud.getTelefono() + "', '" + estud.getCorreo() + "', '" + estud.getNomb_acud() + "', '" + estud.getApell_acu() + "', '" + estud.getUsuario() + "', '" + estud.getContras() + "', '" + estud.getId_curso() + "')";

        try {
            con = cn.getConection();
            st = con.createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(EstudianteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public boolean edit(Estudiante estud) {
        String sql = "UPDATE estudiantes SET nombre='" + estud.getNombre() + "', apell='" + estud.getApell() + "', num_doc='" + estud.getNum_doc() + "', fech_nac='" + estud.getFech_nac() + "', ciud_nac= '" + estud.getCiud_nac() + "', barr_res='" + estud.getBarr_res() + "', direc_res='" + estud.getDirec_res() + "', edad='" + estud.getEdad() + "', genero='" + estud.getGenero() + "', rh='" + estud.getRh() + "', eps='" + estud.getEps() + "', telefono='" + estud.getTelefono() + "', correo='" + estud.getCorreo() + "', nomb_acud='" + estud.getNomb_acud() + "', apell_acu='" + estud.getApell_acu() + "', usuario='" + estud.getUsuario() + "', contras='" + estud.getContras() + "', id_curso='" + estud.getId_curso() + "' WHERE id=" + estud.getId();

        try {
            con = cn.getConection();
            st = con.createStatement();
            st.executeUpdate(sql);

        } catch (SQLException ex) {

        }

        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM estudiantes WHERE id="+id;
        try{
            con=cn.getConection();
            st=con.createStatement();
            st.executeUpdate(sql);        
        }catch (Exception e) {

        }
        return false;
    }

}
