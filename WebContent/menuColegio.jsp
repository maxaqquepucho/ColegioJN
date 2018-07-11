<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es" >
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="css/menuPrincipal.css">
        <title>Menu</title>

    </head>
    <body>
        <div id="main" class="" >
            <div class="topnav">
                <div class="nav-left">
                    <span style="cursor:pointer" onclick="openNav()"><i class="fas fa-bars"></i></span>
                    <span><a class="" href="#home"><i class="fas fa-bars">Jesus de Nazareth</i></a></span>
                </div>
                <div class="search-container">
                    <input type="text" placeholder="Buscar..." name="search">
                    <button type="button" class="btn btn-outline-light" name="button"><i class="fa fa-search"></i> </button>
                </div>
                <div class="nav-right">
                    <%-- <span><a class="" href="#home">Home</a></span> --%>
                    <%-- <span><a href="#about"><i class="fas fa-bars">About</i></a></span> --%>
                    <span><img src="images/max.jpg" alt="" > </span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div id="mySidenav" class="sidenav " style="padding-top: 0px;">
                        <div class="sidebar-top">
                            <span style="cursor:pointer" onclick="closeNav()"><i class="fas fa-bars "></i></span>
                        </div>
                        <div class="">
                            <a href="menuPerfil.jsp">Mi Perfil</a>
                            <a href="index.html">Pagina Principal</a>
                            <a href="http://localhost:3000/">Temperatura</a>
                            <a href="ServletCerrarSesion">Cerrar Session</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row d-flex justify-content-around">
                <div class=" mt-3 d-flex flex-wrap fle-row justify-content-around" style="width: 98%;">
                    <div class="" style="width: 70%; ">
                        <div class="col-12" >
                        <table class="table table-hover table-dark table-responsive " id="tablaMenuColegio" style="-webkit-box-shadow: 0px 0px 15px -1px rgba(0,0,0,0.75);
                        -moz-box-shadow: 0px 0px 15px -1px rgba(0,0,0,0.75);
                        box-shadow: 0px 0px 15px -1px rgba(0,0,0,0.75);">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Apellido</th>
                                    <th scope="col">Usuario</th>
                                    <th scope="col">Password</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">DNI</th>
                                    <th scope="col">Sexo</th>
                                    <th scope="col">Direccion</th>
                                    <th scope="col">link</th>
                                    <th scope="col">Fecha</th>
                                    <th scope="col">Celular</th>
                                    <th scope="col">Telefono</th>
                                    <th scope="col">Tipo</th>
                                    <th scope="col">Accion 1</th>
                                    <th scope="col">Accion 2</th>
                                </tr>
                            </thead>
                            <tbody id="usuariosColegio">
                                <c:forEach var="n" items="${lista}" >
                                    <tr>
                                        <td scope="row"> ${n.idPersona}</td>
                                        <td>${n.nombre}</td>
                                        <td>${n.apellido}</td>
                                        <td>${n.usuario}</td>
                                        <td>${n.pass}</td>
                                        <td>${n.mail}</td>
                                        <td>${n.dni}</td>
                                        <td>${n.sexo}</td>
                                        <td>${n.direccion}</td>
                                        <td>${n.imagen}</td>
                                        <td>${n.fecnac}</td>
                                        <td>${n.numeroCelular}</td>
                                        <td>${n.numeroTelefono}</td>
                                        <td>${n.idTipo}</td>
                                        <td>
                                            <a href="javascript:void(0)" class="btn btn-primary " onclick="editarFilaRow(this);" >Editar</a>
                                        </td>
                                        <td>
                                            <a href="javascript:void(0)" class="btn btn-info" onclick="eliminarFila(this)">Eliminar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    </div>

                    <div class="" style="width: 30%; min-width: 280px;">
                        <div class="col-12">
                        <form>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Usuario</label>
                                    <input name="usuario" type="text" class="form-control" id="usuario" placeholder="Usuario">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Password</label>
                                    <input name="pass" type="password" class="form-control" id="pass" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Email</label>
                                <input name="" type="email" class="form-control" id="mail" placeholder="Ingrese correo">
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Nombres</label>
                                <input type="text" class="form-control" id="nombre" placeholder="Ingrese nombres">
                            </div>
                            <div class="form-group">
                                <label for="inputAddress2">Apellidos</label>
                                <input type="text" class="form-control" id="apellido" placeholder="Ingrese apellidos">
                            </div>
                            <div class="form-group ">
                                <label for="inputState">Tipo</label>
                                <select id="tipo" class="form-control">
                                    <option selected>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                </select>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputCity">DNI</label>
                                    <input type="text" class="form-control" id="dni" placeholder="Ingrese DNI">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputState">Sexo</label>
                                    <select id="sexo" class="form-control">
                                        <option selected>M</option>
                                        <option>F</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="inputZip">ID</label>
                                    <input type="text" class="form-control" id="idUsuario" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress2">Direccion</label>
                                <input type="text" class="form-control" id="direccion" placeholder="Ingrese direccion">
                            </div>
                            <div class="form-group">
                                <label for="inputAddress2">Link de foto de perfil</label>
                                <input type="text" class="form-control" id="imagen" placeholder="//Source de imagen">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputCity">Fecha</label>
                                    <input type="date" class="form-control" id="fechaNacimiento" placeholder="Fecha de nacimiento">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputZip">Celular</label>
                                    <input type="text" class="form-control" id="celular" placeholder="Celular" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputZip">Telefono</label>
                                    <input type="text" class="form-control" id="telefono" placeholder="Telefono">
                                </div>
                            </div>
                            <input id="btnAgregar" type="button" class="btn btn-primary" value="Agregar" input>
                            <button type="reset" class="btn btn-primary">Cancelar</button>
                        </form>
                    </div>
                    </div>

                </div>

            </div>
        </div>

        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
                //document.getElementById("main").style.marginLeft = "250px";
                document.body.style.backgroundColor = "rgba(0,0,0,0.2)";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                //document.getElementById("main").style.marginLeft= "0";
                document.body.style.backgroundColor = "white";
            }

        </script>
        <script src="js/jquery-3.3.1.min.js"> </script>
        <!-- <script src="js/popper.min.js" ></script> -->
        <script src="js/bootstrap.min.js" ></script>
        <script src="js/menuColegio.js"></script>
    </body>
</html>
