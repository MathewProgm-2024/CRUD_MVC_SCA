/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author USUARIO
 */
public class UsuarioDAO {

    public Usuario identificar(Usuario user){
        Conexion cn = new Conexion();
        Connection con;
        Statement st;
        ResultSet rs;
        Usuario usu = null;
        String sql = "SELECT id, cargo, usuario, contras FROM estudiantes WHERE usuario = '"+user.getNomb_usuario()+"' and contras = '"+user.getContras()+"' Union SELECT id, cargo, usuario, contras FROM profesores WHERE usuario = '"+user.getNomb_usuario()+"' and contras = '"+user.getContras()+"' union SELECT id, cargo, usuario, contras FROM administradores WHERE usuario = '"+user.getNomb_usuario()+"' and contras = '"+user.getContras()+"'";
        try {
            con = cn.getConection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if(rs.next() == true){
                usu = new Usuario();
                usu.setId(rs.getInt("id"));
                usu.setCargo(rs.getString("cargo"));
                usu.setNomb_usuario(rs.getString("usuario"));
                usu.setContras(rs.getString("contras"));
            }
        }catch(Exception e){
            System.out.print("Error: "+e.getMessage());
        }
        return usu;
    }
}
