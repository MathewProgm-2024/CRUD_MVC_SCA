<%-- 
    Document   : agregar
    Created on : 11/07/2024, 2:38:49 p. m.
    Author     : USUARIO
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Curso"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CursoDAO"%>
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
        <title>Agregar estudiante</title>
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
                                    <a href="" class="nav-link">Asignaturas</a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link">Cursos</a>
                                </li>
                                <li class="nav-item">
                                    <a href="" class="nav-link active">Estudiantes</a>
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
                <h1>Agregar un <br> nuevo estudiante</h1>
            </div>
            <div class="contenedor">
                <form class="row">
                    <div class="col-12">
                        <h2>Información personal</h2>
                    </div>
                    <div class="col-3">
                        <label for="nombres" class="form-label">Nombres</label>
                        <input type="text" name="txtNomb" class="form-control" id="nombres" placeholder="Nombres">
                    </div>
                    <div class="col-3">
                        <label for="apellidos" class="form-label">Apellidos</label>
                        <input type="text" name="txtApell" class="form-control" id="apellidos" placeholder="Apellidos">
                    </div>
                    <div class="col-3">
                        <label for="documento" class="form-label">Numero de documento</label>
                        <input type="text" txt="txtDoc" class="form-control" id="documento" placeholder="Documento">
                    </div>
                    <div class="col-2">
                        <label for="nacimiento" class="form-label">Fecha de nacimiento</label>
                        <input type="date" name="txtFechNac" class="form-control" id="nacimiento">
                    </div>
                    <div class="col-2">
                        <label for="ciudnac" class="form-label">Ciudad de nacimiento</label>
                        <select class="form-select" name="txtCiudNac" id="ciudnac">
                            <option selected>Seleccione</option>
                            <option value="Bogotá">Bogotá D. C.</option>
                            <option value="Cali">Cali</option>
                            <option value="Barranquilla">Barranquilla</option>
                            <option value="Manizalez">Manizales</option>
                            <option value="Medellín">Medellín</option>
                            <option value="Caldas">Caldas</option>
                        </select>
                    </div>
                    <div class="col-2">
                        <label for="genero" class="form-label">Genero</label>
                        <select class="form-select" name="txtGen" id="genero">
                            <option selected>Seleccione</option>
                            <option value="Masculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                        </select>
                    </div>
                    <div class="col-3">
                        <label for="barres" class="form-label">Barrio de residencia</label>
                        <input type="text" name="txtBarrRes" class="form-control" id="barres" placeholder="Barrio">
                    </div>
                    <div class="col-3">
                        <label for="dirres" class="form-label">Dirección de residencia</label>
                        <input type="text" name="txtDirRes" class="form-control" id="dirres" placeholder="Dirección">
                    </div>
                    <div class="col-3">
                        <label for="eps" class="form-label">EPS</label>
                        <input type="text" name="txtEps" class="form-control" id="eps" placeholder="EPS">
                    </div>
                    <div class="col-1">
                        <label for="rh" class="form-label">RH</label>
                        <select class="form-select" name="txtRh" id="rh">
                            <option selected>Seleccione</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="O+">O+</option>
                            <option value="O-">O-</option>
                            <option value="RH Nulo">RH Nulo</option>
                        </select>
                    </div>
                    <div class="col-1">
                        <label for="curso" class="form-label">Curso</label>
                        <select class="form-select" name="txtCurso" id="Curso">
                            <option selected>Seleccione</option>
                            <%
                                CursoDAO dao = new CursoDAO();
                                List<Curso> list = dao.listar();
                                Iterator<Curso> iter = list.iterator();
                                Curso cur = null;
                                
                                while (iter.hasNext()) {
                                    cur = iter.next();

                            %>
                            <option value="<%= cur.getId() %>"><%= cur.getCodigo() %></option>
                            <%}%>
                        </select>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <h2>Información del acudiente</h2>
                        </div>
                        <div class="col-3">
                            <label for="nombres" class="form-label">Nombres</label>
                            <input type="text" name="txtNombAcud" class="form-control" id="nombres" placeholder="Nombres">
                        </div>
                        <div class="col-3">
                            <label for="apellidos" class="form-label">Apellidos</label>
                            <input type="text" name="txtApellAcud" class="form-control" id="apellidos" placeholder="Apellidos">
                        </div>
                        <div class="col-3">
                            <label for="telefono" class="form-label">Número de teléfono</label>
                            <input type="texto" name="txtTel" class="form-control" id="telefono" placeholder="Telefono">
                        </div>
                        <div class="col-3">
                            <label for="email" class="form-label">Correo electrónico</label>
                            <input type="email" name="txtCorreo" class="form-control" id="email" placeholder="Correo">
                        </div>
                        <div class="col-4">
                            <label for="usuario" class="form-label">Usuario</label>
                            <input type="text" class="form-control" name="txtUsuario" id="usuario" placeholder="Usuario">
                        </div>
                    </div>
                    <div class="col-3">
                        <button type="submit" name="accion" value="Agregar"><i class="bi bi-floppy2-fill"></i> Agregar</button>
                    </div>
                    <div class="col-2">
                        <button type="reset">Limpiar campos</button>
                    </div>
                </form>
            </div>
        </div>
    </body>

</html>
