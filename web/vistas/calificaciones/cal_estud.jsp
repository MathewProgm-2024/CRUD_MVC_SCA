<%-- 
    Document   : cal_estud
    Created on : 11/07/2024, 2:39:35 p. m.
    Author     : USUARIO
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Calificaciones"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.Calificaciones_EstudDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="css/estilo_calificacion_estud.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
        <title>Calificaciones del estudiante</title>
    </head>

    <body>
        <nav>
            <div>
                <header>
                    <div class="perfil">
                        <a href=""><i class="bi bi-person-badge"></i><br>Estudiante</a>
                    </div>
                    </nav>
                </header>
            </div>
        </nav>

        <div class="cuadro">
            <div class="contenedor">
                <h1>MIS CALIFICACIONES</h1>
                <h3>Daniel Esteban Cuellar Tovar</h3>
            </div>
            <form class="row">
                <div class="col-3">
                    <button id="regresar"><i class="bi bi-arrow-left-square"></i> Regresar</button>
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
                                    <th scope="col">Asignatura</th>
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
                                    Calificaciones_EstudDAO dao = new Calificaciones_EstudDAO();
                                    List<Calificaciones> list = dao.listar();
                                    Iterator<Calificaciones> iter = list.iterator();
                                    Calificaciones calif = null;
                                    int i=0;
                                    while (iter.hasNext()) {
                                        calif = iter.next();
                                        i=+1;
                                %>
                                <tr>
                                    <td><%=i%></td>
                                    <td><%= calif.getAsign() %></td>
                                    <td><%= calif.getNota1() %></td>
                                    <td><%= calif.getNota2() %></td>
                                    <td><%= calif.getNota3() %></td>
                                    <td><%= calif.getNota4() %></td>
                                    <td><%= calif.getNota5() %></td>
                                    <td><%= calif.getNota_parc() %></td>
                                    <td><%= calif.getCoev() %></td>
                                    <td><%= calif.getAutoev() %></td>
                                    <td><%= calif.getNota_fin() %></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </details>
            </section>
            <section>
                <details>
                    <summary>2</summary>
                    <div class="tabla">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Asignatura</th>
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
                                    <td>Química</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.3</td>
                                    <td>3.3</td>
                                    <td>3.4</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Informática</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.5</td>
                                    <td>4.5</td>
                                    <td>4.8</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Biología</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>2.6</td>
                                    <td>2.6</td>
                                    <td>1.5</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Matemáticas</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.5</td>
                                    <td>4.5</td>
                                    <td>4.7</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Lectura y Escritura</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>3.0</td>
                                    <td>3.0</td>
                                    <td>2.5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </details>
            </section>
            <section>
                <details>
                    <summary>3</summary>
                    <div class="tabla">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Asignatura</th>
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
                                    <td>Química</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.3</td>
                                    <td>3.3</td>
                                    <td>3.4</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Informática</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.5</td>
                                    <td>4.5</td>
                                    <td>4.8</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Biología</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>2.6</td>
                                    <td>2.6</td>
                                    <td>1.5</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Matemáticas</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.5</td>
                                    <td>4.5</td>
                                    <td>4.7</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Lectura y Escritura</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>3.0</td>
                                    <td>3.0</td>
                                    <td>2.5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </details>
            </section>
            <section>
                <details>
                    <summary>4</summary>
                    <div class="tabla">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Asignatura</th>
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
                                    <td>Química</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                    <td>3.3</td>
                                    <td>3.3</td>
                                    <td>3.4</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Informática</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.9</td>
                                    <td>4.5</td>
                                    <td>4.5</td>
                                    <td>4.8</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Biología</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>1.3</td>
                                    <td>2.6</td>
                                    <td>2.6</td>
                                    <td>1.5</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Matemáticas</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.8</td>
                                    <td>4.5</td>
                                    <td>4.5</td>
                                    <td>4.7</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Lectura y Escritura</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>2.4</td>
                                    <td>3.0</td>
                                    <td>3.0</td>
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
