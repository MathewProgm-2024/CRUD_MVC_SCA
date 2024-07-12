<%-- 
    Document   : listar
    Created on : 11/07/2024, 2:39:19 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Asignatura"%>
<%@page import="ModeloDAO.AsignaturaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Profesor"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProfesorDAO"%>
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
    <script src="js/controlador_prof.js"></script>   
    <title>Profesores</title>
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
                                <a href="index.jsp" class="nav-link">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a href="Controlador_Asign?accion=listar" class="nav-link">Asignaturas</a>
                            </li>
                            <li class="nav-item">
                                <a href="Controlador_Curso?accion=listar" class="nav-link">Cursos</a>
                            </li>
                            <li class="nav-item">
                                <a href="Controlador_Estud?accion=listar" class="nav-link">Estudiantes</a>
                            </li>
                            <li class="nav-item">
                                <a href="" class="nav-link active">Profesores</a>
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
            <h1>PROFESORES</h1>
        </div>
        <form class="row">
            <div class="col-3">
                <button><i class="bi bi-plus-square"></i> Agregar nuevo profesor</button>
            </div>
            <div class="col-2">
                <label for="buscar" class="form-label">Buscar Profesor <i class="bi bi-search"></i></label>
                <input type="text" class="form-control" id="buscar" placeholder="Buscar" onkeyup="filtrar()">
            </div>
        </form>
    </div>
    <div class="tabla">
        <table class="table table-bordered" id="tb_profesores">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Profesor</th>
                    <th scope="col">Asignatura</th>
                    <th scope="col">Grado</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <%
                    AsignaturaDAO dao = new AsignaturaDAO();
                    List<Asignatura> list = dao.listar();
                    Iterator<Asignatura> iter = list.iterator();
                    Asignatura asign = null;
                    int i=0;
                    while (iter.hasNext()) {
                        asign = iter.next();
                        i=+1;

                %>
                <tr>
                    <td><%= i %></td>
                    <td><%= asign.getNomb_prof() %> <%= asign.getApell_prof() %></td>
                    <td><%= asign.getNombre() %></td>
                    <td><%= asign.getGrado() %></td>
                    <td>
                        <a href="">Ver Detalle</a>
                    </td>
                    <td>
                        <a href="">Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </div>
    </div>    
</body>

</html>
