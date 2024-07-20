<%-- 
    Document   : cal_curso
    Created on : 11/07/2024, 2:39:28 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Curso"%>
<%@page import="ModeloDAO.CursoDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Calificaciones"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.Calif_CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="css/estilo_calificaciones_curso.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
        <script src="/js/controlador_period.js"></script>
        <title>Calificaciones del curso</title>
    </head>

    <body>
        <nav>
            <div>
                <header>
                    <div class="perfil">
                        <a href=""><i class="bi bi-person-badge"></i><br>Profesor</a>
                    </div>
                    </nav>
                </header>
            </div>
        </nav>

        <div class="cuadro">
            <div class="contenedor">
                <%
                    CursoDAO daoc = new CursoDAO();
                    int id = Integer.parseInt((String) request.getAttribute("curso"));
                    Curso c = (Curso) daoc.list(id);
                    String curso = c.getCodigo();
                    String per = String.valueOf(request.getAttribute("per"));
                    String asign = String.valueOf(request.getAttribute("asign"));

                %>
                <h1>CALIFICACIONES CURSO <%=c.getCodigo()%></h1>
            </div>
            <form class="row">
                <div class="col-3">
                    <a class="btn" id="regresar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
                </div>
            </form>
        </div>
        <div class="tabla">
            <form action="Controlador_CalifCurs">                
                <table class="table table-bordered">                    
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Estudiante</th>
                            <th scope="col">Nota 1</th>
                            <th scope="col">Nota 2</th>
                            <th scope="col">Nota 3</th>
                            <th scope="col">Nota 4</th>
                            <th scope="col">Nota 5</th>
                            <th scope="col">Nota Parcial</th>
                            <th scope="col">Autoevaluación</th>
                            <th scope="col">Coevaluación</th>
                            <th scope="col">Acumulado</th>
                            <th scope="col">Acción</th>
                        </tr>
                    </thead>
                    <%
                        Calif_CursoDAO daocal = new Calif_CursoDAO();
                        List<Calificaciones> list = daocal.listar_calif_curso(asign,curso,per);
                        Iterator<Calificaciones> iter = list.iterator();
                        Calificaciones calif = null;
                        int i=0;
                        while (iter.hasNext()) {
                            calif = iter.next();
                            i++;
                    %>
                    <tbody class="table-group-divider">
                        <tr>
                            <input type="hidden" name="txtId" class="form-control" value="<%=calif.getId_estud()%>">
                            <input type="hidden" name="txtPer" class="form-control" value="<%=calif.getPeriodo()%>">
                            <td><%=i%></td>
                            <td>
                                <a href=""><%=calif.getNomb_estud()%> <%=calif.getApell_estud()%></a>
                            </td>
                            <td><input type="text" name="txtNota1" class="form-control" value="<%=calif.getNota1()%>"></td>
                            <td><input type="text" name="txtNota2" class="form-control" value="<%=calif.getNota2()%>"></td>
                            <td><input type="text" name="txtNota3" class="form-control" value="<%=calif.getNota3()%>"></td>
                            <td><input type="text" name="txtNota4" class="form-control" value="<%=calif.getNota4()%>"></td>
                            <td><input type="text" name="txtNota5" class="form-control" value="<%=calif.getNota5()%>"></td>
                            <td><%=calif.getNota_parc()%></td>
                            <td><input type="text" name="txtAutoev" class="form-control" value="<%=calif.getAutoev()%>"></td>
                            <td><input type="text" name="txtCoev" class="form-control" value="<%=calif.getCoev()%>"></td>
                            <td><%=calif.getNota_fin()%></td>
                            <td>
                            <button type="submit" name="accion" value="Actualizar" id="guardar"><i class="bi bi-floppy2-fill"></i></button>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </form>
        </div>
    </body>

</html>
