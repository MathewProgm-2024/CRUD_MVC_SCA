/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Curso;
import ModeloDAO.CursoDAO;
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
public class Controlador_Curso extends HttpServlet {
    
    String listar="vistas/curso/listar.jsp";
    String add="vistas/curso/agregar.jsp";
    String editar="vistas/curso/editar.jsp";
    String dat_elim = "vistas/curso/eliminar.jsp";
    String dat_vac = "vistas/curso/vaciar.jsp";
    Curso c = new Curso();
    CursoDAO dao = new CursoDAO();

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
            out.println("<title>Servlet Controlador_Curso</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Curso at " + request.getContextPath() + "</h1>");
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
                String codigo = request.getParameter(String.valueOf("txtCodigo"));

                c.setCodigo(codigo);
                c.setCant_estud(0);
                
                dao.add(c);
                acceso=listar;
            }else if(action.equalsIgnoreCase("editar")){
                request.setAttribute("idcur",request.getParameter("id"));
                acceso=editar;                
            }else if(action.equalsIgnoreCase("Actualizar")){
                int id=Integer.parseInt(request.getParameter("txtId"));
                String codigo = request.getParameter(String.valueOf("txtCodigo"));
                
                c.setId(id);                
                c.setCodigo(codigo);
                c.setCant_estud(0);
                
                dao.edit(c);
                acceso=listar;
            }else if(action.equalsIgnoreCase("dat_elim")){
                request.setAttribute("idcur",request.getParameter("id"));
                acceso=dat_elim; 
            }else if (action.equalsIgnoreCase("eliminar")){
                int id=Integer.parseInt(request.getParameter("id"));
                c.setId(id);
                dao.eliminar(id);
                acceso=listar;
            }else if (action.equalsIgnoreCase("dat_vac")){
                request.setAttribute("idcur",request.getParameter("id"));
                acceso=dat_vac;
            }else if (action.equalsIgnoreCase("vaciar")){
                int id=Integer.parseInt(request.getParameter("id"));
                c.setId(id);
                dao.vaciar(id);
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
