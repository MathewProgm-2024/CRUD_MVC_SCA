<%-- 
    Document   : index
    Created on : 11/07/2024, 2:02:03 p. m.
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SCA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo_inicio.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>
    <nav>
        <div>
            <header>
                <div class="ingreso">
                    <a href="identificar.jsp" class="btn"><i class="bi bi-person"></i>Ingresa</a>
                </div>
                <nav class="navbar navbar-expand-lg bg-body-tertiary">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a href="" class="nav-link active">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a href="index_admin.jsp" class="nav-link">Administrador</a>
                            </li>
                            <li class="nav-item">
                                <a href="index_prof.jsp" class="nav-link">Profesor</a>
                            </li>
                            <li class="nav-item">
                                <a href="index_estud.jsp" class="nav-link">Estudiante</a>
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

    <div class="escudo">
        <img src="logoSCA.JPG" alt="">
    </div>
    <div class="nombre">
        <h2>Institución Educativa Jaime Garzón</h2>
    </div>

    <div class="video">
        <video src="video1.mp4" controls></video>
        <div class="historia">
            <h3>Historia</h3>
            <p>Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
                Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
                Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
                Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
                Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
                Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
                Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
                Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
                Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto Texto 
            </p>
        </div>
    </div>

    <footer>
        <p>Copyright 2024</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>
