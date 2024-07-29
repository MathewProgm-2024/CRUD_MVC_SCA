<%-- 
    Document   : asign_estud
    Created on : 17/07/2024, 3:54:16 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Estudiante"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.AsignaturaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="css/estilo_ver_info.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
        <script src="/js/controlador_asign.js"></script>
        <title>Asignaturas del estudiante</title>
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
                <h1>Asignaturas del estudiante <%=e.getNombre()%> <%=e.getApell()%></h1>
            </div>
            <form class="row">                
                <div class="col-3">
                    <a href="Controlador_CalifEstud?accion=add&id=<%=e.getId()%>" class="btn"><i class="bi bi-plus-square"></i> Agregar asignatura para el estudiante</a>
                </div>
                <div class="col-2">
                    <label for="buscar" class="form-label">Buscar Asignatura <i class="bi bi-search"></i></label>
                    <input type="text" class="form-control" id="buscar" placeholder="Buscar" onkeyup="filtrar()">
                </div>

            </form>
        </div>
        <div class="tabla">
            <table class="table table-bordered" id="tb_asign">
                <thead>
                    <tr>
                        <th scope="col">Periodo</th>
                        <th scope="col">Asignatura</th>
                        <th scope="col">Profesor</th>
                        <th scope="col">Grado</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <%
                    AsignaturaDAO dao = new AsignaturaDAO();
                    List<Asignatura> list = dao.listar_estud(id);
                    Iterator<Asignatura> iter = list.iterator();
                    Asignatura asign = null;
                    while (iter.hasNext()) {
                        asign = iter.next();

                %>
                <tbody class="table-group-divider">
                    <tr>
                        <td><%= asign.getPeriodo()%></td>
                        <td><%= asign.getNombre()%></td>
                        <td><%= asign.getNomb_prof()%> <%= asign.getApell_prof()%></td>
                        <td><%= asign.getGrado()%></td>
                        <td>
                            <a href="Controlador_CalifEstud?accion=dat_elim&id_asign=<%=asign.getId()%>&id_estud=<%=e.getId()%>">Eliminar asignación</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
