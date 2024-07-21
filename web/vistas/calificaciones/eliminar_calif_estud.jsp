<%-- 
    Document   : eliminar_calif_estud
    Created on : 21/07/2024, 3:00:35 p. m.
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
        <link rel="stylesheet" href="css/eliminar.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
        <script src="/js/controlador_asign.js"></script>
        <title>Asignaturas</title>
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
                <h1>Eliminar calificaciones del estudiante <%=e.getNombre()%> <%=e.getApell()%></h1>
                <h5>AVISO: confirme que su selección sea correcta, ya que al eliminar estos datos, eliminará las calificaciones <br> de todos los periodos en la asignatura para la estudiante <%=e.getNombre()%> <%=e.getApell()%></h5>
            </div>
        </div>
        <div class="tabla">
            <table class="table table-bordered" id="tb_asign">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Asignatura</th>
                        <th scope="col">Profesor</th>
                        <th scope="col">Grado</th>
                    </tr>
                </thead>
                <%
                    AsignaturaDAO dao = new AsignaturaDAO();
                    List<Asignatura> list = dao.listar_estud(id);
                    Iterator<Asignatura> iter = list.iterator();
                    Asignatura asign = null;
                    int i = 0;
                    while (iter.hasNext()) {
                        asign = iter.next();
                        i++;

                %>
                <tbody class="table-group-divider">
                    <tr>
                        <td><%= i%></td>
                        <td><%= asign.getNombre()%></td>
                        <td><%= asign.getNomb_prof()%> <%= asign.getApell_prof()%></td>
                        <td><%= asign.getGrado()%></td>
                    </tr>
                    <%}%>             
                </tbody>
            </table>
        </div>
        <div class="row">
            <a class="btn" href="Controlador_CalifEstud?accion=eliminar&idestud=<%=e.getId()%>&id_asign=<%=asign.getId()%>"><i class="bi bi-trash3"></i> Eliminar definitivamente</a>
        </div>
        <div class="row">
            <a id="regresar" class="btn" href="Controlador_Asign?accion=listar_estud&id=<%=e.getId()%>"><i class="bi bi-arrow-left-square"></i> Regresar</a>
        </div>
    </div>
</body>

</html>
