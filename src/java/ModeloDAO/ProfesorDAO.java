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
public class ProfesorDAO implements CRUD_Profesor {

    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Profesor p = new Profesor();

    @Override
    public List listar() {
        ArrayList<Profesor> list = new ArrayList<>();
        String sql = "SELECT profesores.id, profesores.nombre, profesores.apell, asignaturas.nombre, asignaturas.grado FROM profesores left JOIN asignaturas on profesores.id = asignaturas.id_prof;";
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Profesor prof = new Profesor();
                prof.setId(rs.getInt("profesores.id"));
                prof.setNombre(rs.getString("profesores.nombre"));
                prof.setApell(rs.getString("profesores.apell"));

                String nomb_asign = rs.getString("asignaturas.nombre");
                String grado_asign = rs.getString("asignaturas.grado");

                if ((nomb_asign == null)) {
                    prof.setNomb_asign("Aún no asignado");
                } else {
                    prof.setNomb_asign(nomb_asign);
                }

                if (grado_asign == null) {
                    prof.setGrado_asign("Aún no asignado");
                } else {
                    prof.setGrado_asign(grado_asign);
                }

                list.add(prof);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Profesor list(int id) {
        String sql = "SELECT * FROM profesores";
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                p.setId(rs.getInt("Id"));
                p.setNombre(rs.getString("nombre"));
                p.setApell(rs.getString("apell"));
                p.setNum_doc(rs.getString("num_doc"));
                p.setFech_nac(rs.getString("fech_nac"));
                p.setCiud_nac(rs.getString("ciud_nac"));
                p.setBarr_res(rs.getString("barr_res"));
                p.setDirec_res(rs.getString("direc_res"));
                p.setEdad(rs.getString("edad"));
                p.setGenero(rs.getString("genero"));
                p.setRh(rs.getString("rh"));
                p.setEps(rs.getString("eps"));;
                p.setTelefono(rs.getString("telefono"));
                p.setCorreo(rs.getString("correo"));
                p.setNum_lic(rs.getString("num_lic"));
                p.setUsuario(rs.getString("usuario"));
                p.setContras(rs.getString("contras"));
            }
        } catch (Exception e) {

        }
        return p;
    }

    @Override
    public boolean add(Profesor prof) {
        String sql = "INSERT INTO profesores(nombre, apell, num_doc, fech_nac, ciud_nac, barr_res, direc_res, edad, genero, rh, eps, telefono, correo, num_lic, usuario, contras) values('" + prof.getNombre() + "','" + prof.getApell() + "','" + prof.getNum_doc() + "','" + prof.getFech_nac() + "','" + prof.getCiud_nac() + "','" + prof.getBarr_res() + "','" + prof.getDirec_res() + "','" + prof.getEdad() + "','" + prof.getGenero() + "','" + prof.getRh() + "','" + prof.getEps() + "','" + prof.getTelefono() + "','" + prof.getCorreo() + "','" + prof.getNum_lic() + "','" + prof.getUsuario() + "','" + prof.getContras() + "');";
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
    public boolean edit(Profesor prof) {
        String sql = "UPDATE profesores SET nombre='" + prof.getNombre() + "', apell='" + prof.getApell() + "', num_doc='" + prof.getNum_doc() + "', fech_nac='" + prof.getFech_nac() + "', ciud_nac='" + prof.getCiud_nac() + "', barr_res='" + prof.getBarr_res() + "', direc_res='" + prof.getDirec_res() + "', edad='" + prof.getEdad() + "', genero='" + prof.getGenero() + "', rh='" + prof.getRh() + "', eps='" + prof.getEps() + "', telefono='" + prof.getTelefono() + "', correo='" + prof.getCorreo() + "', num_lic='" + prof.getNum_lic() + "', usuario='" + prof.getUsuario() + "', contras='" + prof.getContras() + "' WHERE id=" + prof.getId();

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
        String sql = "DELETE FROM profesores WHERE id="+id;
        try{
            con=cn.getConection();
            st=con.createStatement();
            st.executeUpdate(sql);        
        }catch (Exception e) {

        }
        return false;
    }

}
