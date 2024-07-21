<%-- 
    Document   : cal_estud
    Created on : 11/07/2024, 2:39:35 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Estudiante"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
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
                <%
                    EstudianteDAO daoc = new EstudianteDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idestud"));
                    Estudiante e = (Estudiante) daoc.list(id);
                    int id_estud = id;
                %>
                <h1>MIS CALIFICACIONES</h1>
                <h3><%=e.getNombre()%> <%=e.getApell()%></h3>
            </div>
        </div>
        <div class="acordeon">
            <h3>Periodos</h3>
            <section>
                <details>
                    <summary>Primer Periodo (1°)</summary>
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
                                    Calificaciones_EstudDAO dao1 = new Calificaciones_EstudDAO();
                                    List<Calificaciones> list1 = dao1.listar_calif_estud("1", id_estud);
                                    Iterator<Calificaciones> iter1 = list1.iterator();
                                    Calificaciones calif1 = null;
                                    int i1 = 0;
                                    while (iter1.hasNext()) {
                                        calif1 = iter1.next();
                                        i1++;
                                %>
                                <tr>
                                    <td><%=i1%></td>
                                    <td><%= calif1.getAsign()%></td>
                                    <td><%= calif1.getNota1()%></td>
                                    <td><%= calif1.getNota2()%></td>
                                    <td><%= calif1.getNota3()%></td>
                                    <td><%= calif1.getNota4()%></td>
                                    <td><%= calif1.getNota5()%></td>
                                    <td><%= calif1.getNota_parc()%></td>
                                    <td><%= calif1.getCoev()%></td>
                                    <td><%= calif1.getAutoev()%></td>
                                    <td><%= calif1.getNota_fin()%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </details>
            </section>
            <section>
                <details>
                    <summary>Segundo Periodo (2°)</summary>
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
                                    Calificaciones_EstudDAO dao2 = new Calificaciones_EstudDAO();
                                    List<Calificaciones> list2 = dao2.listar_calif_estud("2", id_estud);
                                    Iterator<Calificaciones> iter2 = list2.iterator();
                                    Calificaciones calif2 = null;
                                    int i2 = 0;
                                    while (iter2.hasNext()) {
                                        calif2 = iter2.next();
                                        i2++;
                                %>
                                <tr>
                                    <td><%=i2%></td>
                                    <td><%= calif2.getAsign()%></td>
                                    <td><%= calif2.getNota1()%></td>
                                    <td><%= calif2.getNota2()%></td>
                                    <td><%= calif2.getNota3()%></td>
                                    <td><%= calif2.getNota4()%></td>
                                    <td><%= calif2.getNota5()%></td>
                                    <td><%= calif2.getNota_parc()%></td>
                                    <td><%= calif2.getCoev()%></td>
                                    <td><%= calif2.getAutoev()%></td>
                                    <td><%= calif2.getNota_fin()%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </details>
            </section>
            <section>
                <details>
                    <summary>Tercer Periodo (3°)</summary>
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
                                    Calificaciones_EstudDAO dao3 = new Calificaciones_EstudDAO();
                                    List<Calificaciones> list3 = dao3.listar_calif_estud("3", id_estud);
                                    Iterator<Calificaciones> iter3 = list3.iterator();
                                    Calificaciones calif3 = null;
                                    int i3 = 0;
                                    while (iter3.hasNext()) {
                                        calif3 = iter3.next();
                                        i3++;
                                %>
                                <tr>
                                    <td><%=i3%></td>
                                    <td><%= calif3.getAsign()%></td>
                                    <td><%= calif3.getNota1()%></td>
                                    <td><%= calif3.getNota2()%></td>
                                    <td><%= calif3.getNota3()%></td>
                                    <td><%= calif3.getNota4()%></td>
                                    <td><%= calif3.getNota5()%></td>
                                    <td><%= calif3.getNota_parc()%></td>
                                    <td><%= calif3.getCoev()%></td>
                                    <td><%= calif3.getAutoev()%></td>
                                    <td><%= calif3.getNota_fin()%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </details>
            </section>
            <section>
                <details>
                    <summary>Cuarto Periodo (4°)</summary>
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
                                    Calificaciones_EstudDAO dao4 = new Calificaciones_EstudDAO();
                                    List<Calificaciones> list4 = dao4.listar_calif_estud("4", id_estud);
                                    Iterator<Calificaciones> iter4 = list4.iterator();
                                    Calificaciones calif4 = null;
                                    int i4 = 0;
                                    while (iter4.hasNext()) {
                                        calif4 = iter4.next();
                                        i4++;
                                %>
                                <tr>
                                    <td><%=i4%></td>
                                    <td><%= calif4.getAsign()%></td>
                                    <td><%= calif4.getNota1()%></td>
                                    <td><%= calif4.getNota2()%></td>
                                    <td><%= calif4.getNota3()%></td>
                                    <td><%= calif4.getNota4()%></td>
                                    <td><%= calif4.getNota5()%></td>
                                    <td><%= calif4.getNota_parc()%></td>
                                    <td><%= calif4.getCoev()%></td>
                                    <td><%= calif4.getAutoev()%></td>
                                    <td><%= calif4.getNota_fin()%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </details>
            </section>
        </div>
    </div>
</body>

</html>
