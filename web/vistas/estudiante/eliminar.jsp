<%-- 
    Document   : Eliminar registro del estudiante
    Created on : 20/07/2024, 7:57:42 p. m.
    Author     : Mateo Rodriguez C. - 2721519
--%>

<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page import="Modelo.Estudiante"%>
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
                <h5>AVISO: Antes de eliminar este registro, asegurese de que éste no se encuentre en alguna otra entidad</h5>
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
                    EstudianteDAO dao = new EstudianteDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idestud"));
                    Estudiante e = (Estudiante) dao.list(id);
                %>
                <tbody class="table-group-divider">
                    <tr>
                        <td>1</td>
                        <td>Id</td>
                        <td><%=e.getId()%></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Nombres</td>
                        <td><%=e.getNombre()%></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Apellidos</td>
                        <td><%=e.getApell()%></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Número de documento</td>
                        <td><%=e.getNum_doc()%></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Fecha de nacimiento</td>
                        <td><%=e.getFech_nac()%></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Edad</td>
                        <td><%=e.getEdad()%></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Ciudad de nacimiento</td>
                        <td><%=e.getCiud_nac()%></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Genero</td>
                        <td><%=e.getGenero()%></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Barrio de residencia</td>
                        <td><%=e.getBarr_res()%></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>Dirección de residencia</td>
                        <td><%=e.getDirec_res()%></td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>EPS</td>
                        <td><%=e.getEps()%></td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>RH</td>
                        <td><%=e.getRh()%></td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>Curso</td>
                        <td><%=e.getNomb_curso()%></td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td>Nombre del acudiente</td>
                        <td><%=e.getNomb_acud()%></td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td>Apellidos del acudiente</td>
                        <td><%=e.getApell_acu()%></td>
                    </tr>
                    <tr>
                        <td>16</td>
                        <td>Número de teléfono</td>
                        <td><%=e.getTelefono()%></td>
                    </tr>
                    <tr>
                        <td>17</td>
                        <td>Correo electrónico</td>
                        <td><%=e.getCorreo()%></td>
                    </tr>
                    <tr>
                        <td>18</td>
                        <td>Usuario</td>
                        <td><%=e.getUsuario()%></td>
                    </tr>
                    <tr>
                        <td>19</td>
                        <td>Contraseña</td>
                        <td><%=e.getContras()%></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="row">
            <a class="btn" href="Controlador_Estud?accion=eliminar&id=<%=e.getId()%>"><i class="bi bi-trash3"></i> Eliminar definitivamente</a>
        </div>
        <div class="row">
            <a id="regresar" class="btn" href="Controlador_Estud?accion=listar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
        </div>
    </div>
</body>

</html>
