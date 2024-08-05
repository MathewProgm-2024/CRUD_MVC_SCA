<%-- 
    Document   : Listar estudiantes registrados
    Created on : 11/07/2024, 2:38:58 p. m.
    Author     : Mateo Rodriguez C. - 2721519
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Estudiante"%>
<%@page import="java.util.List"%>
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
    <link rel="stylesheet" href="css/estilo_ver_info.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
    <script src="/js/controlador_estud.js"></script>
    <title>Estudiantes</title>
</head>

<body>
    <nav>
        <div>
            <header>
                <div class="perfil">
                    <a href=""><i class="bi bi-person-badge"></i><br>Administrador</a>
                </div>
                <nav class="navbar navbar-expand-lg bg-body-tertiary">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a href="index_admin.jsp" class="nav-link">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a href="Controlador_Asign?accion=listar" class="nav-link">Asignaturas</a>
                            </li>
                            <li class="nav-item">
                                <a href="Controlador_Curso?accion=listar" class="nav-link">Cursos</a>
                            </li>
                            <li class="nav-item">
                                <a href="Controlador_Estud?accion=listar" class="nav-link active">Estudiantes</a>
                            </li>
                            <li class="nav-item">
                                <a href="Controlador_Prof?accion=listar" class="nav-link">Profesores</a>
                            </li>
                        </ul>
                        <div class="logo">
                            <img src="logoSCA.JPG" alt="">
                        </div>
                    </div>
                </nav>
            </header>
        </div>
    </nav>

    <div class="cuadro">
        <div class="contenedor">
            <h1>ESTUDIANTES</h1>
        </div>
        <form class="row">
            <div class="col-2">
                <label for="buscar" class="form-label">Buscar Estudiante <i class="bi bi-search"></i></label>
                <input type="text" class="form-control" id="buscar" placeholder="Buscar" onkeyup="filtrar()">
            </div>
            <div class="col-3">
                <a href="Controlador_Estud?accion=add" class="btn"><i class="bi bi-plus-square"></i> Agregar nuevo estudiante</a>
            </div>
        </form>
    </div>
    <div class="tabla">
        <table class="table table-bordered" id="tb_estudiantes">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Estudiante</th>
                    <th scope="col">Curso</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <%
                    EstudianteDAO dao = new EstudianteDAO();
                    List<Estudiante> list = dao.listar();
                    Iterator<Estudiante> iter = list.iterator();
                    Estudiante estud = null;
                    int i=0;
                    while (iter.hasNext()) {
                        estud = iter.next();
                        i++;

                %>
                <tr>
                    <td><%= i %></td>
                    <td><%= estud.getNombre() %> <%= estud.getApell() %></td>
                    <td><%= estud.getNomb_curso() %></td>
                    <td>
                        <a href="Controlador_Asign?accion=listar_estud&id=<%=estud.getId()%>">Asignaturas</a>
                    </td>
                    <td>
                        <a href="Controlador_Estud?accion=editar&id=<%=estud.getId()%>">Editar</a>
                    </td>
                    <td>
                        <a href="Controlador_Estud?accion=dat_elim&id=<%=estud.getId()%>">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </div>
    </div>
</body>

</html>
