<%-- 
    Document   : editar
    Created on : 11/07/2024, 2:38:53 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Estudiante"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Curso"%>
<%@page import="java.util.List"%>
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
        <link rel="stylesheet" href="css/estilo_agregar.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
        <title>Agregar estudiante</title>
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
                <h1>Modificar<br>estudiante</h1>
                <div class="row">
                    <a class="btn" href="Controlador_Estud?accion=listar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
                </div>
            </div>
            <div class="contenedor">
                <%
                    EstudianteDAO daoe = new EstudianteDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idestud"));
                    Estudiante e = (Estudiante) daoe.list(id);
                %>
                <form class="row" action="Controlador_Estud">
                    <div class="col-12">
                        <h2>Información personal</h2>
                    </div>
                    <div class="col-3">
                        <label for="id" class="form-label">Id: <%= e.getId()%> </label>
                        <input type="hidden" name="txtId" class="form-control" id="id" placeholder="Id" value="<%= e.getId()%>">
                    </div>
                    <div class="col-3">
                        <label for="nombres" class="form-label">Nombres</label>
                        <input type="text" name="txtNomb" class="form-control" id="nombres" placeholder="Nombres" value="<%= e.getNombre()%>">
                    </div>
                    <div class="col-3">
                        <label for="apellidos" class="form-label">Apellidos</label>
                        <input type="text" name="txtApell" class="form-control" id="apellidos" placeholder="Apellidos" value="<%= e.getApell()%>">
                    </div>
                    <div class="col-3">
                        <label for="documento" class="form-label">Numero de documento: <%= e.getNum_doc()%></label>
                        <input type="hidden" name="txtDoc" class="form-control" id="documento" placeholder="Documento" value="<%= e.getNum_doc()%>">
                    </div>
                    <div class="col-2">
                        <label for="nacimiento" class="form-label">Fecha de nacimiento: <%= e.getFech_nac()%></label>
                        <input type="hidden" name="txtFechNac" class="form-control" id="nacimiento" value="<%= e.getFech_nac()%>">
                    </div>
                    <div class="col-1">
                        <label for="edad" class="form-label">Edad: <%= e.getEdad()%></label>
                        <input type="hidden" name="txtEdad" class="form-control" id="edad" value="<%= e.getEdad()%>">
                    </div>
                    <div class="col-2">
                        <label for="ciudnac" class="form-label">Ciudad de nacimiento</label>
                        <select class="form-select" name="txtCiudNac" id="ciudnac">
                            <option selected value="<%= e.getCiud_nac()%>"><%= e.getCiud_nac()%></option>
                            <option value="Bogotá">Bogotá D. C.</option>
                            <option value="Cali">Cali</option>
                            <option value="Barranquilla">Barranquilla</option>
                            <option value="Manizalez">Manizales</option>
                            <option value="Medellín">Medellín</option>
                            <option value="Caldas">Caldas</option>
                        </select>
                    </div>
                    <div class="col-2">
                        <label for="genero" class="form-label">Genero</label>
                        <select class="form-select" name="txtGen" id="genero">
                            <option selected value="<%= e.getGenero()%>"><%= e.getGenero()%></option>
                            <option value="Masculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                        </select>
                    </div>
                    <div class="col-3">
                        <label for="barres" class="form-label">Barrio de residencia</label>
                        <input type="text" name="txtBarrRes" class="form-control" id="barres" placeholder="Barrio" value="<%= e.getBarr_res()%>">
                    </div>
                    <div class="col-3">
                        <label for="dirres" class="form-label">Dirección de residencia</label>
                        <input type="text" name="txtDirRes" class="form-control" id="dirres" placeholder="Dirección" value="<%= e.getDirec_res()%>">
                    </div>
                    <div class="col-3">
                        <label for="eps" class="form-label">EPS</label>
                        <input type="text" name="txtEps" class="form-control" id="eps" placeholder="EPS" value="<%= e.getEps()%>">
                    </div>
                    <div class="col-1">
                        <label for="rh" class="form-label">RH</label>
                        <select class="form-select" name="txtRh" id="rh">
                            <option selected value="<%= e.getRh()%>"><%= e.getRh()%></option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="O+">O+</option>
                            <option value="O-">O-</option>
                            <option value="RH Nulo">RH Nulo</option>
                        </select>
                    </div>
                    <div class="col-1">
                        <label for="curso" class="form-label">Curso</label>
                        <select class="form-select" name="txtCurso" id="Curso">
                            <option selected value="<%= e.getId_curso()%>"><%= e.getNomb_curso()%></option>
                            <%
                                CursoDAO dao = new CursoDAO();
                                List<Curso> list = dao.listar();
                                Iterator<Curso> iter = list.iterator();
                                Curso cur = null;

                                while (iter.hasNext()) {
                                    cur = iter.next();

                            %>
                            <option value="<%= cur.getId()%>"><%= cur.getCodigo()%></option>
                            <%}%>
                        </select>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <h2>Información del acudiente</h2>
                        </div>
                        <div class="col-3">
                            <label for="nombres" class="form-label">Nombres</label>
                            <input type="text" name="txtNombAcud" class="form-control" id="nombres" placeholder="Nombres" value="<%= e.getNomb_acud()%>">
                        </div>
                        <div class="col-3">
                            <label for="apellidos" class="form-label">Apellidos</label>
                            <input type="text" name="txtApellAcud" class="form-control" id="apellidos" placeholder="Apellidos" value="<%= e.getApell_acu()%>">
                        </div>
                        <div class="col-3">
                            <label for="telefono" class="form-label">Número de teléfono</label>
                            <input type="texto" name="txtTel" class="form-control" id="telefono" placeholder="Telefono" value="<%= e.getTelefono()%>">
                        </div>
                        <div class="col-3">
                            <label for="email" class="form-label">Correo electrónico</label>
                            <input type="email" name="txtCorreo" class="form-control" id="email" placeholder="Correo" value="<%= e.getCorreo()%>">
                        </div>
                        <div class="col-4">
                            <label for="usuario" class="form-label">Usuario</label>
                            <input type="text" class="form-control" name="txtUsuario" id="usuario" placeholder="Usuario" value="<%= e.getUsuario()%>">
                        </div>
                        <div class="col-3">
                            <label for="contras" class="form-label">Contraseña: <%= e.getContras()%> </label> 
                            <input type="hidden" class="form-control" name="txtContras" id="contras" placeholder="Contraseña" value="<%= e.getContras()%>">
                        </div>
                    </div>
                    <div class="col-3">
                        <button type="submit" name="accion" value="Actualizar"><i class="bi bi-floppy2-fill"></i> Actualizar</button>
                    </div>
                    <div class="col-2">
                        <button type="reset">Limpiar campos</button>
                    </div>

                </form>
            </div>
        </div>
    </body>

</html>
