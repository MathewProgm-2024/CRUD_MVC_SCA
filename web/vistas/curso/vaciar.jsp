<%-- 
    Document   : vaciar
    Created on : 21/07/2024, 4:58:54 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Curso"%>
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
                <h1>Vaciar curso</h1>
                <h5>AVISO: Recuerde que esta opción quitará la asignación a los estudiantes relacionados con el curso</h5>
            </div>
        </div>
        <div class="tabla">
            <table class="table table-bordered" id="tb_asign">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Dato</th>
                        <th scope="col">Registro</th>
                    </tr>
                </thead>
                <%
                    CursoDAO dao = new CursoDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idcur"));
                    Curso c = (Curso) dao.list(id);
                %>
                <tbody class="table-group-divider">
                    <tr>
                        <td>1</td>
                        <td>Id</td>
                        <td><%= c.getId()%></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Código</td>
                        <td><%= c.getCodigo()%></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Cantidad de estudiantes registrados</td>
                        <td><%= c.getCant_estud()%></td>
                    </tr> 
                </tbody>
            </table>
        </div>
        <div class="row">
            <a class="btn" href="Controlador_Curso?accion=vaciar&id=<%= c.getId()%>"><i class="bi bi-trash3"></i> Vaciar definitivamente</a>
        </div>
        <div class="row">
            <a id="regresar" class="btn" href="Controlador_Curso?accion=listar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
        </div>
    </div>
</body>

</html>

