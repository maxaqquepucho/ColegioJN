<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                    <span><img src="images/fotocolegio.jpg" alt="" > </span>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div id="mySidenav" class="sidenav " style="padding-top: 0px;">
                        <div class="sidebar-top">
                            <span style="cursor:pointer" onclick="closeNav()"><i class="fas fa-bars "></i></span>
                        </div>
                        <div class="">
                            <a href="ServletPerfil">Mi Perfil</a>
                            <a href="index.html">Pagina Principal</a>
                            <a href="localhost:3000">Temperatura</a>
                            <a href="ServletCerrarSession">Cerrar Session</a>
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
                                <img class="img-responsive mt-3" src="images/fotocolegio.jpg" alt="" style="border-radius: 5px; -webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
                                -moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
                                box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);"  width="120" height="150">
                            </div>
                            <div class="col-md-12" style="text-align: center">
                                <h4>
                                    <p><small>Vilma Hayde Bravo</small> </p>
                                </h4>
                            </div>
                            <hr class="row">
                            <div class="row">
                                <div class="list-group" style="width:100%;">
                                    <a href="index.html" class="list-group-item list-group-item-action">
                                    Jesus de Nasareth
                                    </a>
                                    <a href="ServletPerfil" class="list-group-item list-group-item-action">Mi perfil</a>
                                    <a href="menuFotografia.jsp" class="list-group-item list-group-item-action">Fotografia</a>
                                    <a href="#" class="list-group-item list-group-item-action">Porta ac consectetur ac</a>
                                    <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-9" style="border: 1px solid #dedfe0; padding: 15px;">
                            <div class="col-md-12" style="text-align: center">
                                <h3>
                                    Mi Perfil
                                    <p><small class="text-muted">Añade y modica tu informacion</small> </p>
                                </h3>
                            </div>
                            <hr>
                            <div class="col-md-12" >
                                <div class="row d-flex justify-content-center" >
                                    <div class="col-md-10 p-3" style="border: 1px solid #cacbcc; box-shadow: 0 2px 0 hsla(0,0%,100%,.63),inset 0 1px 2px rgba(41,48,59,.15); ">
                                        <div class="row d-flex justify-content-center">
                                            <label for="">Imagen de Perfil</label>
                                            <div class="col-md-11" align="center" style="background: #f2f3f5;">
                                                <img class="img-responsive " src="images/fotocolegio.jpg" alt="" style=""  width="180" height="210">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="row">
                            <div class="col-md-12" >
                                <div class="row d-flex justify-content-center" >
                                    <div class="col-md-10" >
                                        <form class="" style="width:100%">
                                            <div class="form-row">

                                                <div class="form-group col-md-9 mb-2">
                                                    <label for="inputPassword2" class="sr-only">Link de imagen</label>
                                                    <input type="text" class="form-control" id="inputPassword2" placeholder="Link de imagen">
                                                </div>
                                                <button type="submit" class="btn btn-primary mb-2">Confirmar</button>
                                            </div>
                                            <hr>
                                            <div class="form-row d-flex justify-content-center">
                                                <button type="reset" class="btn btn-danger mb-2">Cancelar</button>

                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <hr class="row">

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
