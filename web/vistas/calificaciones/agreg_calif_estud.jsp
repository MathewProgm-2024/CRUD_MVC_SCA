<%-- 
    Document   : agreg_calif_curso
    Created on : 17/07/2024, 3:49:39 p. m.
    Author     : USUARIO
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.AsignaturaDAO"%>
<%@page import="Modelo.Estudiante"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="css/estilo_agregar.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
        <title>Aignar materia del estudiante</title>
    </head>

    <body>
        <nav>
            <div>
                <header>
                    <div class="perfil">
                        <a href=""><i class="bi bi-person-badge"></i><br>Administrador</a>
                    </div>                    
                </header>
            </div>
        </nav>

        <div class="cuadro">
            <div class="contenedor">
                <%
                    EstudianteDAO daoe = new EstudianteDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idestud"));
                    Estudiante e = (Estudiante) daoe.list(id);
                %>
                <h1>Agregar asignatura para el estudiante<br><%=e.getNombre()%> <%=e.getApell()%></h1>
                <div class="row">
                    <a class="btn" href="Controlador_Asign?accion=listar_estud&id=<%=e.getId()%>"><i class="bi bi-arrow-left-square"></i> Regresar</a>
                </div>
            </div>
            <div class="contenedor">
                <form action="Controlador_CalifEstud" class="row">
                    <div class="col-3">
                        <label for="id_estud" class="form-label">Id del estudiante (en la base de datos): <%=e.getId()%> <%=e.getNombre()%> <%=e.getApell()%></label>
                        <input type="hidden" name="txtId_estud" class="form-control" id="id_estud" placeholder="Id_estud" value="<%=e.getId()%>">
                    </div>
                    <div class="col-3">
                        <label for="id_asign" class="form-label">Asignatura</label>
                        <select class="form-select" name="txtId_asign" id="id_asign">
                            <option selected>Seleccione</option>
                            <%
                                AsignaturaDAO dao = new AsignaturaDAO();
                                List<Asignatura> list = dao.listar();
                                Iterator<Asignatura> iter = list.iterator();
                                Asignatura asign = null;

                                while (iter.hasNext()) {
                                    asign = iter.next();
                            %>
                            <option value="<%= asign.getId()%>"><%= asign.getNombre()%> - <%= asign.getGrado()%> - <%= asign.getNomb_prof()%> <%= asign.getApell_prof()%></option>
                            <%}%>
                        </select>

                    </div>
                    <div class="row">
                        <div class="col-3">
                            <button type="submit" name="accion" value="Agregar"><i class="bi bi-floppy2-fill"></i> Agregar</button>
                        </div>
                        <div class="col-2">
                            <button type="reset">Limpiar campos</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>

</html>
