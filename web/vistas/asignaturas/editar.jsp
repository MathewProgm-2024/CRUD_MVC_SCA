<%-- 
    Document   : editar
    Created on : 11/07/2024, 2:38:34 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Asignatura"%>
<%@page import="ModeloDAO.AsignaturaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Profesor"%>
<%@page import="Modelo.Profesor"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProfesorDAO"%>
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <title>Agregar asignatura</title>
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
                                    <a href="" class="nav-link">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link active">Asignaturas</a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link">Cursos</a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link">Estudiantes</a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link">Profesores</a>
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
                <h1>Modificar<br>asignatura</h1>
            </div>
            <div class="contenedor">
                <%
                    AsignaturaDAO daoa = new AsignaturaDAO();
                    int id = Integer.parseInt((String)request.getAttribute("idasign"));
                    Asignatura a = (Asignatura)daoa.list(id);
                %>
                <form class="row" action="Controlador_Asign">
                    <div class="col-3">
                        <label for="id" class="form-label">Id: <%= a.getId() %> </label>
                        <input type="hidden" name="txtId" class="form-control" id="id" placeholder="Id" value="<%= a.getId() %>">
                    </div>
                    <div class="col-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" name="txtNomb" class="form-control" id="nombre" placeholder="Nombre" value="<%= a.getNombre() %>">
                    </div>
                    <div class="col-3">
                        <label for="grado" class="form-label">Grado</label>
                        <select class="form-select" name="txtGrado" id="grado">
                            <option selected value="<%= a.getGrado() %>"><%= a.getGrado() %></option>
                            <option value="Primero">Primero</option>
                            <option value="Segundo">Segundo</option>
                            <option value="Tercero">Tercero</option>
                            <option value="Cuarto">Cuarto</option>
                            <option value="Quinto">Quinto</option>
                            <option value="Sexto">Septimo</option>
                            <option value="Octavo">Octavo</option>
                            <option value="Noveno">Noveno</option>
                            <option value="Décimo">Décimo</option>
                            <option value="Once">Once</option>
                        </select>
                    </div>
                    <div class="col-3">
                        <label for="profe" class="form-label">Profesor</label>
                        <select class="form-select" name="txtProf" id="profe">
                            <option selected value="<%= a.getId_prof() %>"><%= a.getNomb_prof() %>  <%= a.getApell_prof() %></option>
                            <%
                                ProfesorDAO dao = new ProfesorDAO();
                                List<Profesor> list = dao.listar();
                                Iterator<Profesor> iter = list.iterator();
                                Profesor prof = null;
                                
                                while (iter.hasNext()) {
                                    prof = iter.next();

                            %>
                            <option value="<%= prof.getId()%>"><%= prof.getNombre()%> <%= prof.getApell()%></option>
                            <%}%>
                        </select>
                    </div>
                    <div class="row">
                        <div class="col-3">
                            <button type="submit" name="accion" value="Actualizar"><i class="bi bi-floppy2-fill"></i> Actualizar</button>
                        </div>
                        <div class="col-2">
                            <button>Limpiar campos</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>

</html>
