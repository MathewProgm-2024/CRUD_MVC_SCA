<%-- 
    Document   : cal_curso
    Created on : 11/07/2024, 2:39:28 p. m.
    Author     : USUARIO
--%>

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
                <h1>CALIFICACIONES CURSO 501</h1>
            </div>
            <form class="row">
                <div class="col-3">
                    <button id="regresar"><i class="bi bi-arrow-left-square"></i> Regresar</button>
                </div>
                <div class="col-3">
                    <button id="guardar"><i class="bi bi-floppy2-fill"></i> Guardar</button>
                </div>
            </form>
        </div>
        <div class="acordeon">
            <h3>Periodos</h3>
            <section>
                <details>
                    <summary>1</summary>
                    <div class="tabla">
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
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                                    Calif_CursoDAO dao = new Calif_CursoDAO();
                                    List<Calificaciones> list = dao.listar();
                                    Iterator<Calificaciones> iter = list.iterator();
                                    Calificaciones calif = null;
                                    int i=0;
                                    while (iter.hasNext()) {
                                        calif = iter.next();
                                        i=+1;
                                %>
                                <tr>
                                    <td><%= i %></td>
                                    <td>
                                        <a href="Controlador_CalifEstud?accion=listar"><%= calif.getNomb_estud() %> <%= calif.getApell_estud() %></a>
                                    </td>
                                    <td><input type="text" value="<%= calif.getNota1() %>"></td>
                                    <td><input type="text" value="<%= calif.getNota2() %>"></td>
                                    <td><input type="text" value="<%= calif.getNota3() %>"></td>
                                    <td><input type="text" value="<%= calif.getNota4() %>"></td>
                                    <td><input type="text" value="<%= calif.getNota5() %>"></td>
                                    <td><%= calif.getNota_parc() %></td>
                                    <td><input type="text" value="<%= calif.getCoev() %>"></td>
                                    <td><input type="text" value="<%= calif.getAutoev() %>"></td>
                                    <td><%= calif.getNota_fin() %></td>
                                </tr> 
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </details>
            </section>
        </div>

        <section id="tb_p_2">
            <details>
                <summary>2</summary>
                <div class="tabla">
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
                            </tr>
                        </thead>
                        <tbody class="table-group-divider">
                            <tr>
                                <td>1</td>
                                <td>
                                    <a href="Controlador_CalifEstud?accion=listar">Reyes Caridad Arteaga Mateos</a>
                                </td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td>3.5</td>
                                <td><input type="text" value="3.3"></td>
                                <td><input type="text" value="3.3"></td>
                                <td>3.4</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>
                                    <a href="">Chucho Maldonado-Jaén</a>
                                </td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td>4.9</td>
                                <td><input type="text" value="4.5"></td>
                                <td><input type="text" value="4.5"></td>
                                <td>4.8</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>
                                    <a href="">Andrés Villalba</a>
                                </td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td>1.3</td>
                                <td><input type="text" value="2.6"></td>
                                <td><input type="text" value="2.6"></td>
                                <td>1.5</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>
                                    <a href="">Santos Mascaró Blanch</a>
                                </td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td>4.8</td>
                                <td><input type="text" value="4.5"></td>
                                <td><input type="text" value="4.5"></td>
                                <td>4.7</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>
                                    <a href="">Guiomar Tellez Hernando</a>
                                </td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td>2.4</td>
                                <td><input type="text" value="3.0"></td>
                                <td><input type="text" value="3.0"></td>
                                <td>2.5</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </details>
        </section>
        <section id="tb_p_3">
            <details>
                <summary>3</summary>
                <div class="tabla">
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
                            </tr>
                        </thead>
                        <tbody class="table-group-divider">
                            <tr>
                                <td>1</td>
                                <td>
                                    <a href="">Reyes Caridad Arteaga Mateos</a>
                                </td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td>3.5</td>
                                <td><input type="text" value="3.3"></td>
                                <td><input type="text" value="3.3"></td>
                                <td>3.4</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>
                                    <a href="">Chucho Maldonado-Jaén</a>
                                </td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td>4.9</td>
                                <td><input type="text" value="4.5"></td>
                                <td><input type="text" value="4.5"></td>
                                <td>4.8</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>
                                    <a href="">Andrés Villalba</a>
                                </td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td>1.3</td>
                                <td><input type="text" value="2.6"></td>
                                <td><input type="text" value="2.6"></td>
                                <td>1.5</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>
                                    <a href="">Santos Mascaró Blanch</a>
                                </td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td>4.8</td>
                                <td><input type="text" value="4.5"></td>
                                <td><input type="text" value="4.5"></td>
                                <td>4.7</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>
                                    <a href="">Guiomar Tellez Hernando</a>
                                </td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td>2.4</td>
                                <td><input type="text" value="3.0"></td>
                                <td><input type="text" value="3.0"></td>
                                <td>2.5</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </details>
        </section>
        <section id="tb_p_4">
            <details>
                <summary>4</summary>
                <div class="tabla">
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
                            </tr>
                        </thead>
                        <tbody class="table-group-divider">
                            <tr>
                                <td>1</td>
                                <td>
                                    <a href="">Reyes Caridad Arteaga Mateos</a>
                                </td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td><input type="text" value="3.5"></td>
                                <td>3.5</td>
                                <td><input type="text" value="3.3"></td>
                                <td><input type="text" value="3.3"></td>
                                <td>3.4</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>
                                    <a href="">Chucho Maldonado-Jaén</a>
                                </td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td><input type="text" value="4.9"></td>
                                <td>4.9</td>
                                <td><input type="text" value="4.5"></td>
                                <td><input type="text" value="4.5"></td>
                                <td>4.8</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>
                                    <a href="">Andrés Villalba</a>
                                </td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td><input type="text" value="1.3"></td>
                                <td>1.3</td>
                                <td><input type="text" value="2.6"></td>
                                <td><input type="text" value="2.6"></td>
                                <td>1.5</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>
                                    <a href="">Santos Mascaró Blanch</a>
                                </td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td><input type="text" value="4.8"></td>
                                <td>4.8</td>
                                <td><input type="text" value="4.5"></td>
                                <td><input type="text" value="4.5"></td>
                                <td>4.7</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>
                                    <a href="">Guiomar Tellez Hernando</a>
                                </td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td><input type="text" value="2.4"></td>
                                <td>2.4</td>
                                <td><input type="text" value="3.0"></td>
                                <td><input type="text" value="3.0"></td>
                                <td>2.5</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </details>
        </section>
    </div>
</div>
</body>

</html>
