<%-- 
    Document   : identificar
    Created on : 4/08/2024, 6:27:53 p. m.
    Author     : USUARIO
--%>

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
    <link rel="stylesheet" href="css/estilo_autenticacion.css">
    <title>SCA</title>
</head>

<body>
    <div class="cuadro">
        <div class="contenedor">
            <h2>Sistema de Control Académico <br> (SCA)</h2>
        </div>
        <div class="contenedor">
            <h6>Inicia sesión en el sistema</h6>
        </div>
        <div class="contenedor">
            <h6 style="color: red">${msje}</h6>
        </div>
        <form action="Controlador_Usuario" method="POST">
            <div class="contenedor">
            <div class="mb-3">
                <label for="usuario" class="form-label">Usuario</label>
                <input type="text" name="txtUsu" class="form-control" id="usuario" placeholder="Usuario">
            </div>
        </div>
        <div class="contenedor">
            <div class="mb-3">
                <label for="contraseña" class="form-label">Contraseña</label>
                <input type="password" name="txtContras" class="form-control" id="contraseña" placeholder="Contraseña">
            </div>
        </div>
        <div class="contenedor">
            <div>
                <button type="submit" name="verificar" value="verificar">Ingresar</button>
            </div>
        </div>
        </form>
        <div class="contenedor">
            <h6>Sistema de Control Académico (SCA) <br> Institución Educativa Jaime Garzón</h6>
        </div>
        <div class="contenedor">
            <div class="logo">
                <img src="logoSCA.JPG" alt="">
            </div>
        </div>
    </div>
    
</body>

</html>
