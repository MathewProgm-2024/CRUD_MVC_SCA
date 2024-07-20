<%-- 
    Document   : editar
    Created on : 11/07/2024, 2:39:14 p. m.
    Author     : USUARIO
--%>

<%@page import="Modelo.Profesor"%>
<%@page import="ModeloDAO.ProfesorDAO"%>
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
        <title>Agregar profesor</title>
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
                <h1>Modificar<br>profesor</h1>
                <div class="row">
                    <a class="btn" href="Controlador_Prof?accion=listar"><i class="bi bi-arrow-left-square"></i> Regresar</a>
                </div>
            </div>
            <div class="contenedor">
                <%
                    ProfesorDAO dao = new ProfesorDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idprof"));
                    Profesor p = (Profesor) dao.list(id);
                %>
                <form class="row" action="Controlador_Prof">
                    <div class="col-12">
                        <h2>Información personal</h2>
                    </div>
                    <div class="col-3">
                        <label for="id" class="form-label">Id: <%= p.getId()%> </label>
                        <input type="hidden" name="txtId" class="form-control" id="id" placeholder="Id" value="<%= p.getId()%>">
                    </div>
                    <div class="col-3">
                        <label for="nombres" class="form-label">Nombres</label>
                        <input type="text" class="form-control" name="txtNomb" id="nombres" placeholder="Nombres" value="<%= p.getNombre()%>">
                    </div>
                    <div class="col-3">
                        <label for="apellidos" class="form-label">Apellidos</label>
                        <input type="text" class="form-control" name="txtApell" id="apellidos" placeholder="Apellidos" value="<%= p.getApell()%>">
                    </div>
                    <div class="col-3">
                        <label for="documento" class="form-label">Numero de documento: <%= p.getNum_doc()%></label>
                        <input type="hidden" class="form-control" name="txtDoc" id="documento" placeholder="Documento" value="<%= p.getNum_doc()%>">
                    </div>
                    <div class="col-2">
                        <label for="nacimiento" class="form-label">Fecha de nacimiento: <%= p.getFech_nac()%></label>
                        <input type="hidden" class="form-control" name="txtFechNac" id="nacimiento" value="<%= p.getFech_nac()%>">
                    </div>
                    <div class="col-1">
                        <label for="edad" class="form-label">Edad: <%= p.getEdad()%></label>
                        <input type="hidden" name="txtEdad" class="form-control" id="edad" value="<%= p.getEdad()%>">
                    </div>
                    <div class="col-2">
                        <label for="ciudnac" class="form-label">Ciudad de nacimiento</label>
                        <select class="form-select" id="ciudnac" name="txtCiudNac">
                            <option selected value="<%= p.getCiud_nac()%>"><%= p.getCiud_nac()%></option>
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
                        <select class="form-select" id="genero" name="txtGene">
                            <option selected value="<%= p.getGenero()%>"><%= p.getGenero()%></option>
                            <option value="Masculino">Masculino</option>
                            <option value="Femenino">Femenino</option>
                        </select>
                    </div>
                    <div class="col-3">
                        <label for="barres" class="form-label">Barrio de residencia</label>
                        <input type="text" class="form-control" name="txtBarrRes" id="barres" placeholder="Barrio" value="<%= p.getBarr_res()%>">
                    </div>
                    <div class="col-3">
                        <label for="dirres" class="form-label">Dirección de residencia</label>
                        <input type="text" class="form-control" name="txtDirRes" id="dirres" placeholder="Dirección" value="<%= p.getDirec_res()%>">
                    </div>
                    <div class="col-3">
                        <label for="eps" class="form-label">EPS</label>
                        <input type="text" class="form-control" name="txtEps" id="eps" placeholder="EPS" value="<%= p.getEps()%>">
                    </div>
                    <div class="col-1">
                        <label for="rh" class="form-label">RH</label>
                        <select class="form-select" id="rh" name="txtRh">
                            <option selected value="<%= p.getRh()%>"><%= p.getRh()%></option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="O+">O+</option>
                            <option value="O-">O-</option>
                            <option value="RH Nulo">RH Nulo</option>
                        </select>
                    </div>
                    <div class="col-3">
                        <label for="licencia" class="form-label">Número de licencia</label>
                        <input type="text" class="form-control" name="txtNumLic" id="licencia" placeholder="Licencia" value="<%= p.getNum_lic()%>">
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <label for="telefono" class="form-label">Número de teléfono</label>
                            <input type="texto" class="form-control" name="txtTel" id="telefono" placeholder="Telefono" value="<%= p.getTelefono()%>">
                        </div>
                        <div class="col-4">
                            <label for="email" class="form-label">Correo electrónico</label>
                            <input type="email" class="form-control" name="txtCorreo" id="email" placeholder="Correo" value="<%= p.getCorreo()%>"> 
                        </div>
                        <div class="col-4">
                            <label for="usuario" class="form-label">Usuario</label>
                            <input type="text" class="form-control" name="txtUsuario" id="usuario" placeholder="Usuario" value="<%= p.getUsuario()%>">
                        </div>
                        <div class="col-3">
                            <label for="contras" class="form-label">Contraseña: <%= p.getContras()%> </label> 
                            <input type="hidden" class="form-control" name="txtContras" id="contras" placeholder="Contraseña" value="<%= p.getContras()%>">
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
