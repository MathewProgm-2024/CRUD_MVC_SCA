<%-- 
    Document   : eliminar
    Created on : 20/07/2024, 9:06:01 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Asignatura"%>
<%@page import="ModeloDAO.AsignaturaDAO"%>
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
                <h1>Eliminar registro</h1>
                <h5>AVISO: Antes de eliminar este registro, asegurese de que este registro no se encuentre en alguna otra entidad</h5>
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
                    AsignaturaDAO dao = new AsignaturaDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idasign"));
                    Asignatura a = (Asignatura) dao.list(id);
                %>
                <tbody class="table-group-divider">
                    <tr>
                        <td>1</td>
                        <td>Id</td>
                        <td><%=a.getId()%></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Nombre de la asignatura</td>
                        <td><%=a.getNombre()%></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Grado</td>
                        <td><%=a.getGrado()%></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Nombrel profesor</td>
                        <td><%=a.getNomb_prof()%></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Apellido del profesor</td>
                        <td><%=a.getApell_prof()%></td>
                    </tr>  
                </tbody>
            </table>
        </div>
        <div class="row">
            <a class="btn" href="Controlador_Asign?accion=eliminar&id=<%=a.getId()%>"><i class="bi bi-trash3"></i> Eliminar</a>
        </div>
        <div class="row">
            <a id="regresar" class="btn" href="Controlador_Asign?accion=listar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
        </div>
    </div>
</body>

</html>
