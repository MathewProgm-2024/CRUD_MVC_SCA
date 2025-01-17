/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Asignatura;
import ModeloDAO.AsignaturaDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.HashSet;

/**
 *
 * @author USUARIO
 */
public class Controlador_Asign extends HttpServlet {
    
    String listar="vistas/asignaturas/listar.jsp";
    String listar_estud="vistas/asignaturas/asign_estud.jsp";
    String add="vistas/asignaturas/agregar.jsp";
    String editar="vistas/asignaturas/editar.jsp";
    String dat_elim = "vistas/asignaturas/eliminar.jsp";
    Asignatura a = new Asignatura();
    AsignaturaDAO dao = new AsignaturaDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador_Asign</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Asign at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String acceso="";
            String action=request.getParameter("accion");
            if(action.equalsIgnoreCase("listar")){
                acceso=listar;
            }else if(action.equalsIgnoreCase("add")){
                acceso=add;
            }else if(action.equalsIgnoreCase("Agregar")){
                String nombre = request.getParameter("txtNomb");
                String grado = String.valueOf(request.getParameter("txtGrado"));
                int id_prof = Integer.parseInt(request.getParameter("txtProf"));
                
                a.setNombre(nombre);
                a.setGrado(grado);
                a.setId_prof(id_prof);
                
                dao.add(a);
                acceso=listar;
            }else if(action.equalsIgnoreCase("editar")){
                request.setAttribute("idasign",request.getParameter("id"));
                acceso=editar;
            }else if(action.equalsIgnoreCase("Actualizar")){
                int id = Integer.parseInt(request.getParameter("txtId"));
                String nombre = request.getParameter("txtNomb");
                String grado = String.valueOf(request.getParameter("txtGrado"));
                int id_prof = Integer.parseInt(request.getParameter("txtProf"));
                
                a.setId(id);                
                a.setNombre(nombre);
                a.setGrado(grado);
                a.setId_prof(id_prof);
                
                dao.edit(a);
                acceso=listar;
            }else if(action.equalsIgnoreCase("listar_estud")){
                request.setAttribute("idestud",request.getParameter("id"));
                acceso=listar_estud;
            }else if(action.equalsIgnoreCase("dat_elim")){
                request.setAttribute("idasign",request.getParameter("id"));
                acceso=dat_elim; 
            }else if (action.equalsIgnoreCase("eliminar")){
                int id=Integer.parseInt(request.getParameter("id"));
                a.setId(id);
                dao.eliminar(id);
                acceso=listar;
            }
            RequestDispatcher vista=request.getRequestDispatcher(acceso);
            vista.forward(request, response);
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
        processRequest(request, response);
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
