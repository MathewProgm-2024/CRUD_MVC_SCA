<%-- 
    Document   : eliminar
    Created on : 20/07/2024, 7:58:42 p. m.
    Author     : USUARIO
--%>

<%@page import="ModeloDAO.ProfesorDAO"%>
<%@page import="Modelo.Profesor"%>
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
                    ProfesorDAO dao = new ProfesorDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idprof"));
                    Profesor p = (Profesor) dao.list(id);
                %>
                <tbody class="table-group-divider">
                    <tr>
                        <td>1</td>
                        <td>Id</td>
                        <td><%=p.getId()%></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Nombres</td>
                        <td><%=p.getNombre()%></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Apellidos</td>
                        <td><%=p.getApell()%></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Numero de documento</td>
                        <td><%=p.getNum_doc()%></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Fecha de nacimiento</td>
                        <td><%=p.getFech_nac()%></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Edad</td>
                        <td><%=p.getEdad()%></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Ciudad de nacimiento</td>
                        <td><%=p.getCiud_nac()%></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Genero</td>
                        <td><%=p.getGenero()%></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Barrio de residencia</td>
                        <td><%=p.getBarr_res()%></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>Dirección de residencia</td>
                        <td><%=p.getDirec_res()%></td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>EPS</td>
                        <td><%=p.getEps()%></td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>RH</td>
                        <td><%=p.getRh()%></td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>Numero de licencia</td>
                        <td><%=p.getNum_lic()%></td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td>Número de teléfono</td>
                        <td><%=p.getTelefono()%></td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td>Correo electrónico</td>
                        <td><%=p.getCorreo()%></td>
                    </tr>
                    <tr>
                        <td>16</td>
                        <td>Usuario</td>
                        <td><%=p.getUsuario()%></td>
                    </tr>
                    <tr>
                        <td>17</td>
                        <td>Contraseña</td>
                        <td><%=p.getContras()%></td>
                    </tr>  
                </tbody>
            </table>
        </div>
        <div class="row">
            <a class="btn" href="Controlador_Prof?accion=eliminar&id=<%=p.getId()%>"><i class="bi bi-trash3"></i> Eliminar definitivamente</a>
        </div>
        <div class="row">
            <a id="regresar" class="btn" href="Controlador_Prof?accion=listar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
        </div>
    </div>
</body>

</html>
