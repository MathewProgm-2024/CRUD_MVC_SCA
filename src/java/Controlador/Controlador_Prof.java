/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Profesor;
import ModeloDAO.ProfesorDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USUARIO
 */
public class Controlador_Prof extends HttpServlet {

    String listar = "vistas/profesor/listar.jsp";
    String add = "vistas/profesor/agregar.jsp";
    String editar = "vistas/profesor/editar.jsp";
    Profesor p = new Profesor();
    ProfesorDAO dao = new ProfesorDAO();

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
            out.println("<title>Servlet Controlador_Prof</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador_Prof at " + request.getContextPath() + "</h1>");
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
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            try {
                String nombre = request.getParameter("txtNomb");
                String apell = request.getParameter("txtApell");
                String num_doc = request.getParameter("txtDoc");
                String fech_nac = request.getParameter("txtFechNac");
                String ciud_nac = request.getParameter("txtCiudNac");
                String barr_res = request.getParameter("txtBarrRes");
                String direc_res = request.getParameter("txtDirRes");

                //Formato inicial.
                SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
                String fechaInicio = fech_nac;
                Date d = formato.parse(fechaInicio);
                //Aplica formato requerido.
                formato.applyPattern("dd-MM-yyyy");
                String nuevoFormato = formato.format(d);
                DateTimeFormatter fmt = DateTimeFormatter.ofPattern("dd-MM-yyyy");
                LocalDate fechaNac = LocalDate.parse(nuevoFormato, fmt);
                LocalDate ahora = LocalDate.now();
                Period periodo = Period.between(fechaNac, ahora);

                String edad = String.valueOf(periodo.getYears());

                String genero = request.getParameter("txtgene");
                String rh = request.getParameter("txtRh");
                String eps = request.getParameter("txtEps");
                String telefono = request.getParameter("txtTel");
                String correo = request.getParameter("txtCorreo");
                String num_lic = request.getParameter("txtNumLic");
                String usuario = request.getParameter("txtUsuario");

                int longitud = 10;
                String contras = p.cadenaAleatoria(longitud);

                p.setNombre(nombre);
                p.setApell(apell);
                p.setNum_doc(num_doc);
                p.setFech_nac(fech_nac);
                p.setCiud_nac(ciud_nac);
                p.setBarr_res(barr_res);
                p.setDirec_res(direc_res);
                p.setEdad(edad);
                p.setGenero(genero);
                p.setRh(rh);
                p.setEps(eps);
                p.setTelefono(telefono);
                p.setCorreo(correo);
                p.setNum_lic(num_lic);
                p.setUsuario(usuario);
                p.setContras(contras);

                dao.add(p);
                acceso = listar;
            } catch (ParseException ex) {
                Logger.getLogger(Controlador_Prof.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idprof", request.getParameter("id"));
            acceso = editar;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int id = Integer.parseInt(request.getParameter("txtId"));
            String nombre = request.getParameter("txtNomb");
            String apell = request.getParameter("txtApell");
            String num_doc = request.getParameter("txtDoc");
            String fech_nac = request.getParameter("txtFechNac");
            String ciud_nac = request.getParameter("txtCiudNac");
            String barr_res = request.getParameter("txtBarrRes");
            String direc_res = request.getParameter("txtDirRes");
            String edad = request.getParameter("txtEdad");
            String genero = request.getParameter("txtGene");
            String rh = request.getParameter("txtRh");
            String eps = request.getParameter("txtEps");
            String telefono = request.getParameter("txtTel");
            String correo = request.getParameter("txtCorreo");
            String num_lic = request.getParameter("txtNumLic");
            String usuario = request.getParameter("txtUsuario");
            String contras = request.getParameter("txtContras");
            
            p.setId(id);
            p.setNombre(nombre);
            p.setApell(apell);
            p.setNum_doc(num_doc);
            p.setFech_nac(fech_nac);
            p.setCiud_nac(ciud_nac);
            p.setBarr_res(barr_res);
            p.setDirec_res(direc_res);
            p.setEdad(edad);
            p.setGenero(genero);
            p.setRh(rh);
            p.setEps(eps);
            p.setTelefono(telefono);
            p.setCorreo(correo);
            p.setNum_lic(num_lic);
            p.setUsuario(usuario);
            p.setContras(contras);
            
            dao.edit(p);
            acceso=listar;
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
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
