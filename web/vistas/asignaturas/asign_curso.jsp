<%-- 
    Document   : asign_curso
    Created on : 19/07/2024, 4:25:35 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Asignatura"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Calificaciones"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.Calif_CursoDAO"%>
<%@page import="Modelo.Curso"%>
<%@page import="ModeloDAO.CursoDAO"%>
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
        <title>Asignaturas</title>
    </head>

    <body>
        <nav>
            <div>
                <header>
                    <div class="perfil">
                        <a href=""><i class="bi bi-person-badge"></i><br>Administrador</a>
                    </div>
                    </nav>
                </header>
            </div>
        </nav>

        <div class="cuadro">
            <div class="contenedor">
                <%
                    CursoDAO daoc = new CursoDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idcur"));
                    Curso c = (Curso) daoc.list(id);
                %>
                <h1>Curso <%=c.getCodigo()%></h1>
            </div>
            <form class="row">
                <div class="col-2">

                    <div class="row">
                        <a class="btn" href="Controlador_Curso?accion=listar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
                    </div>
                    <label for="buscar" class="form-label">Buscar <i class="bi bi-search"></i></label>
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
                        <th scope="col"></th>
                    </tr>
                </thead>
                <%
                    Calif_CursoDAO daocal = new Calif_CursoDAO();
                    List<Calificaciones> list = daocal.lista_asign(id);
                    Iterator<Calificaciones> iter = list.iterator();
                    Calificaciones calif = null;
                    while (iter.hasNext()) {
                        calif = iter.next();
                %>
                <tbody class="table-group-divider">
                    <tr>
                        <td><%=calif.getPeriodo()%></td>
                        <td><%=calif.getAsign()%></td>
                        <td><%=calif.getNomb_prof()%> <%=calif.getApell_prof()%></td>
                        <td class="text-center">
                            <a href="Controlador_CalifCurs?accion=listar&per=<%=calif.getPeriodo()%>&curso=<%=c.getId()%>&asign=<%=calif.getAsign()%>">Ver calificaciones</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
