
<%@page import="com.colegio.modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <%
    Usuario usuario = (Usuario) session.getAttribute("usuario");

 %>

<html lang="en" dir="ltr">
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
                    <!-- <span><a class="" href="#home"><i class="fas fa-bars">Jesus</i></a></span> -->
                </div>
                <div class="search-container">
                    <input type="text" placeholder="Buscar..." name="search">
                    <button type="button" class="btn btn-outline-light" name="button"><i class="fa fa-search"></i> </button>
                </div>
                <div class="nav-right">
                    <%-- <span><a class="" href="#home">Home</a></span> --%>
                    <%-- <span><a href="#about"><i class="fas fa-bars">About</i></a></span> --%>
                    <span><img src="<%out.print(usuario.getImagen()); %>" alt="" > </span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div id="mySidenav" class="sidenav " style="padding-top: 0px;">
                        <div class="sidebar-top">
                            <span style="cursor:pointer" onclick="closeNav()"><i class="fas fa-bars "></i></span>
                        </div>
                        <div class="">
                            <a href="menuPerfil.jsp"><i class="fas fa-address-card"></i> Mi Perfil</a>
                            <a href="index.html"><i class="fas fa-home"></i> Pagina Principal</a>
                            <a href="localhost:300"><i class="fas fa-thermometer"></i> Temperatura</a>
                            <a href="ServletUsuario">Mantenimiento</a>
                            <a href="ServletCerrarSesion">Cerrar Sesión</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row d-flex justify-content-center ">
                <!-- <div class="col-md-11" style="background: rgb(65, 65, 65); " >

                </div> -->
                <div class="col-md-11">
                    <div class="row mt-5 ">
                        <div class="col-md-3" style="box-shadow: inset 1px 1px #dedfe0,inset 0 -1px #dedfe0;">
                            <div class="col-md-12" align="center">
                                <img class="img-responsive mt-3" src="<%out.print(usuario.getImagen()); %>" alt="" style="border-radius: 5px; -webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
-moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);"  width="120" height="150">
                            </div>
                            <div class="col-md-12" style="text-align: center">
                                <h4>
                                    <p><small><%out.print(usuario.getNombre() + " "+usuario.getApellido()); %></small> </p>
                                </h4>
                            </div>
                            <hr class="row">
                            <div class="row">
                                <div class="list-group" style="width:100%;">
                                    <a href="index.html" class="list-group-item list-group-item-action">
                                    <i class="fas fa-home"></i> Jesús de Nazareth
                                    </a>
                                    <a href="menuPerfil.jsp" class="list-group-item list-group-item-action">
                                    <i class="fas fa-address-card"></i> Mi perfil</a>
                                    <a href="menuFotografia.jsp" class="list-group-item list-group-item-action">
                                    <i class="fas fa-camera"></i> Fotografía</a>
                                    <a href="#" class="list-group-item list-group-item-action disabled">
                                    <i class="fas fa-book"></i> Mis Asignaturas</a>
                                    <a href="#" class="list-group-item list-group-item-action disabled">
                                    <i class="fas fa-money-bill-wave"></i> Pagos</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-9" style="border: 1px solid #dedfe0; padding: 15px;">
                            <div class="col-md-12" style="text-align: center">
                                <h3>
                                    <i class="fas fa-user"></i> Mi Perfil
                                    <p><small class="text-muted">Añade y modica tu informacion</small> </p>
                                </h3>
                            </div>
                            <hr>
                            <div class="col-md-12" >
                                <div class="row d-flex justify-content-center">
                                    <div class="col-md-8">
                                        <form>
                                            <div class="form-group ">
                                                <label for="exampleInputEmail1">ID</label>
                                                <input name="idPersona" value="<%out.print(usuario.getIdPersona()); %>"  type="text" class="form-control " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="ID" disabled>
                                                <input type="hidden" name="accion" value="INS">
                                            </div>
                                            <div class="form-group ">
                                                <label for="exampleInputEmail1">Usuario</label>
                                                <input name="usuario" value="<%out.print(usuario.getUsuario()); %>"  type="text" class="form-control " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Usuario" disabled>
                                                <small id="emailHelp" class="form-text text-muted">Nosotros nunca compartiremos tu informacion a nadie.</small>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Nombre</label>
                                                <input name="nombre" value="<%out.print(usuario.getNombre()); %>" type="text" class="form-control" id="exampleInputPassword1" placeholder="Ingrese Nombre">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Apellidos</label>
                                                <input name="apellido" value="<%out.print(usuario.getApellido()); %>" type="text" class="form-control" id="exampleInputPassword1" placeholder="Ingrese apellidos">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Direccion</label>
                                                <input name="direccion" value="<%out.print(usuario.getDireccion()); %>" type="text" class="form-control" id="exampleInputPassword1" placeholder="Direccion">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Email</label>
                                                <input name="mail" value="<%out.print(usuario.getMail()); %>" type="email" class="form-control" id="exampleInputPassword1" placeholder="ejemplo@colgioJN.com">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Celular</label>
                                                <input name="celular" value="<%out.print(usuario.getNumeroCelular()); %>" type="number" class="form-control" id="exampleInputPassword1" placeholder="Ingrese Celular">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Teléfono</label>
                                                <input name="telefono" value="<%out.print(usuario.getNumeroTelefono()); %>" type="number" class="form-control" id="exampleInputPassword1" placeholder="Ingrese Telefono">
                                            </div>
                                            <div class="form-group form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                            </div>

                                            <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
                                        </form>
                                    </div>

                                </div>
                            </div>
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
        
    </body>
</html>
