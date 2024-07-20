/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Calificaciones;
import ModeloDAO.Calif_CursoDAO;
import ModeloDAO.Calificaciones_EstudDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author USUARIO
 */
public class Controlador_CalifCurs extends HttpServlet {

    String listar = "vistas/calificaciones/cal_curso.jsp";
    String listar_asign = "vistas/asignaturas/asign_curso.jsp";
    String list_cursos = "vistas/curso/listar.jsp";

    Calificaciones c = new Calificaciones();
    Calif_CursoDAO dao = new Calif_CursoDAO();

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
            out.println("<title>Servlet Controlador_CalifCurs</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_CalifCurs at " + request.getContextPath() + "</h1>");
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
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            request.setAttribute("per", request.getParameter("per"));
            request.setAttribute("curso", request.getParameter("curso"));
            request.setAttribute("asign", request.getParameter("asign"));
            acceso = listar;
        } else if (action.equalsIgnoreCase("listar_asign")) {
            request.setAttribute("idcur", request.getParameter("id"));
            acceso = listar_asign;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            request.setAttribute("per", request.getParameter("per"));
            request.setAttribute("curso", request.getParameter("curso"));
            request.setAttribute("asign", request.getParameter("asign"));
            int id_estud = Integer.parseInt(request.getParameter("txtId"));
            String periodo = request.getParameter("txtPer");
            double nota1 = Double.parseDouble(request.getParameter("txtNota1"));
            double nota2 = Double.parseDouble(request.getParameter("txtNota2"));
            double nota3 = Double.parseDouble(request.getParameter("txtNota3"));
            double nota4 = Double.parseDouble(request.getParameter("txtNota4"));
            double nota5 = Double.parseDouble(request.getParameter("txtNota5"));
            double nota_parc = (nota1 + nota2 + nota3 + nota4 + nota5) / 5;
            double autoev = Double.parseDouble(request.getParameter("txtAutoev"));
            double coev = Double.parseDouble(request.getParameter("txtCoev"));
            double nota_fin = (nota_parc * 0.80) + (coev * 0.10) + (autoev * 0.10);

            c.setId_estud(id_estud);
            c.setPeriodo(periodo);
            c.setNota1(nota1);
            c.setNota2(nota2);
            c.setNota3(nota3);
            c.setNota4(nota4);
            c.setNota5(nota5);
            c.setNota_parc(nota_parc);
            c.setAutoev(autoev);
            c.setCoev(coev);
            c.setNota_fin(nota_fin);

            dao.edit(c);
            acceso=list_cursos;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
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
