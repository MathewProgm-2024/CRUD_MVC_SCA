<%-- 
    Document   : agregar
    Created on : 11/07/2024, 1:59:00 p. m.
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
        <link rel="stylesheet" href="css/estilo_agregar.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
        <title>Agregar curso</title>
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
                <h1>Agregar un <br> nuevo curso</h1>
                <div class="row">
                    <a class="btn" href="Controlador_Curso?accion=listar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
                </div>
            </div>
            <div class="contenedor">
                <form action="Controlador_Curso" class="row">
                    <div class="col-3">
                        <label for="codigo" class="form-label">Código del curso</label>
                        <input type="text" name="txtCodigo" class="form-control" id="codigo" placeholder="Código">
                    </div>
                    <div class="row">
                        <div class="col-3">
                            <button type="submit" name="accion" value="Agregar"><i class="bi bi-floppy2-fill"></i> Agregar</button>
                        </div>
                        <div class="col-2">
                            <button type="reset">Limpiar campos</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>

</html>
