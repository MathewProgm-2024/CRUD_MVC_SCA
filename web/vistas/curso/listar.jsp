<%-- 
    Document   : listar
    Created on : 11/07/2024, 1:59:22 p. m.
    Author     : USUARIO
--%>

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
    <script src="/js/controlador_curso.js"></script>
    <script src="/js/controlador_period.js"></script>
    <title>Cursos</title>
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
                                <a href="" class="nav-link active">Cursos</a>
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
            <h1>CURSOS</h1>
        </div>
        <form class="row">
            <div class="col-2">
                <label for="buscar" class="form-label">Buscar Curso <i class="bi bi-search"></i></label>
                <input type="text" class="form-control" id="buscar" placeholder="Buscar" onkeyup="filtrar()">
            </div>
            <div class="col-3">
                <button><i class="bi bi-plus-square"></i> Agregar nuevo curso</button>
            </div>
        </form>
    </div>
    <div class="tabla">
        <table class="table table-bordered" id="tb_cursos">
            <thead>
                <tr>
                    <th scope="col">Curso</th>
                    <th scope="col">Cantidad de Estudiantes</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <tr>
                    <td>501</td>
                    <td>38</td>
                    <td>
                        <a href="">Ver Calificaciones</a>
                    </td>
                    <td>
                        <a href="">Editar</a>
                    </td>
                    <td>
                        <a href="">Vaciar</a>
                    </td>
                    <td>
                        <a href="">Eliminar</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </div>
</body>

</html>
