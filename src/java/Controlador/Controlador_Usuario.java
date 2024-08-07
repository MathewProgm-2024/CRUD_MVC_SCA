/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Usuario;
import ModeloDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author USUARIO
 */

public class Controlador_Usuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("identificar.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuario u = new Usuario();
        u.setNomb_usuario(request.getParameter("txtUsu"));
        u.setContras(request.getParameter("txtContras"));
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usuario = dao.identificar(u);
        if(usuario != null && usuario.getCargo().equals("administrador")){
            request.setAttribute("administrador", usuario);
            request.getRequestDispatcher("index_admin.jsp").forward(request, response);
        }else if(usuario != null && usuario.getCargo().equals("profesor")){
            request.setAttribute("profesor", usuario);
            request.getRequestDispatcher("index_prof.jsp").forward(request, response);
        }else if(usuario != null && usuario.getCargo().equals("estudiante")){
            request.setAttribute("estudiante", usuario);
            request.getRequestDispatcher("index_estud.jsp").forward(request, response);
        }else{
            request.setAttribute("msje", "Credenciales incorrectas");
            request.getRequestDispatcher("identificar.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    }

   
