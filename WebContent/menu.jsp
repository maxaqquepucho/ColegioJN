<%@page import="Controlador.LlenarDatos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="css/estilos-menu.css">
        <title>Menu Principal</title>
    </head>
    <body>
    <jsp:useBean id="beanUser" class="bean.beanUser" scope="request"> </jsp:useBean>
        <div class="container-fluid">
           <div class="row uno ">
               <aside class="sidebar" data-color="green" data-image="/images/sidebar-2.jpg"
                   style='background-image: url("images/sidebar-2.jpg");'>
                   <div class="" style="background-color: rgba(0,0,0,0.6); height:100%;">
                       <div class="logo">
                           <a class="" href="#">
                               <div class="logo-img">
                                   <img src="images/jn-logo.png" alt="" width="38px" height="38px">
                               </div>
                           </a>
                           <a class="simple" href="#">JESÚS DE NAZARETH</a>
                       </div>
                       <hr>
                       <div class="menu-sidebar">
                           <ul>
                               <li>
                                   <a class="lista-boton"  href="#">
                                       <div class="">
                                           <i class="fas fa-crop"></i>
                                           <p>Registro</p>
                                       </div>
                                   </a>
                               </li>
                               <li>
                                   <a class="lista-boton"  href="#">
                                       <div class="">
                                           <i class="far fa-id-card"></i>
                                           <p>Login</p>
                                       </div>
                                   </a>
                               </li>
                               <li>
                                   <a class="lista-boton"  href="#">
                                       <div class="">
                                           <i class="fas fa-chart-bar"></i>
                                           <p>Administrador</p>
                                       </div>
                                   </a>
                               </li>
                               <li>
                                   <a class="lista-boton"  href="#">
                                       <div class="">
                                           <i class="fas fa-folder-open"></i>
                                           <p>Nosotros</p>
                                       </div>
                                   </a>
                               </li>
                           </ul>
                       </div>
                   </div>
               </aside>
               <div class="main-panel ">
                   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                         <a class="navbar-brand" href="#">Navbar</a>
                         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                           <span class="navbar-toggler-icon"></span>
                         </button>

                         <div class="collapse navbar-collapse" id="navbarSupportedContent">
                           <ul class="navbar-nav mr-auto">
                             <li class="nav-item active">
                               <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                             </li>
                             <li class="nav-item">
                               <a class="nav-link" href="#">Link</a>
                             </li>
                             <li class="nav-item dropdown">
                               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 Dropdown
                               </a>
                               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                 <a class="dropdown-item" href="#">Action</a>
                                 <a class="dropdown-item" href="#">Another action</a>
                                 <div class="dropdown-divider"></div>
                                 <a class="dropdown-item" href="#">Something else here</a>
                               </div>
                             </li>
                             <li class="nav-item">
                               <a class="nav-link disabled" href="#">Disabled</a>
                             </li>
                           </ul>
                           <form class="form-inline my-2 my-lg-0">
                             <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                             <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                           </form>
                         </div>
                       </nav>
                       <%
                       	LlenarDatos con = new LlenarDatos();
                                              String admin=beanUser.getUsuario();
                       %>

                   <div class="container ">

                       <br>

                           <div class="d-flex justify-content-start">

                               <div class="col-4 align-self-end">
                                   <img class=""  src=<%=con.imagenes(admin) %> width="150" height="170" style="magin:20px; border-radius: 5px;-webkit-box-shadow: 6px 5px 16px 4px rgba(0,0,0,0.39);
-moz-box-shadow: 6px 5px 16px 4px rgba(0,0,0,0.39);
box-shadow: 6px 5px 16px 4px rgba(0,0,0,0.39);" >

                               </div>
                               <div class="col-4">
                                   <input class="form-control mt-2  " type="text" value="<%=con.Nombre(admin) %>" aria-label="Search">
                                   <input class="form-control mt-2 " type="text" value="<%=con.Apellido(admin) %>" aria-label="Search">
                                   <input class="form-control mt-2 " type="text" value="<%=con.DNI(admin) %>" aria-label="Search">
                                   <input class="form-control mt-2 " type="text" value="<%=con.Direccion(admin) %>" aria-label="Search">

                               </div>

                               <div class="col-4">
                                   <input class="form-control mt-2 " type="text" value="<%=con.Sexo(admin) %>" aria-label="Search">
                                   <input class="form-control mt-2 " type="text" value="<%=con.NumeroCelular(admin) %>" aria-label="Search">
                                   <input class="form-control mt-2 " type="text" value="<%=con.NumeroTelefono(admin) %>" aria-label="Search">
                                   <input class="form-control mt-2 " type="text" value="<%=con.mail(admin) %>" aria-label="Search">

                               </div>
                           </div>
                           <hr>


                            <p>
                                  <a class="btn btn-info" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Descripcion de Alumno</a>
                                  <button class="btn btn-success" type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Evalucion psicologica</button>
                                  <button class="btn btn-dark" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Historial de Vida</button>
                                </p>
                                <div class="row">
                                  <div class="col">
                                    <div class="collapse multi-collapse" id="multiCollapseExample1">
                                      <div class="card card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col">
                                    <div class="collapse multi-collapse" id="multiCollapseExample2">
                                      <div class="card card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                      </div>
                                    </div>
                                  </div>
                                </div>


                                <div id="accordion">
                                  <div class="card">
                                    <div class="card-header" id="headingOne">
                                      <h5 class="mb-0">
                                        <button class="btn btn-dark" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                          Primer Semestre
                                        </button>
                                      </h5>
                                    </div>

                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                      <div class="card-body d-flex justify-content-around">
                                          <div class="list-group col-4">
                                                  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                                                    <div class="d-flex w-100 justify-content-between">
                                                      <h5 class="mb-1">List group</h5>
                                                      <small>3 days ago</small>
                                                    </div>
                                                    <p class="mb-1">Donec id elit non mi porta.</p>
                                                    <small>Donec id elit non.</small>
                                                  </a>
                                                  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                                    <div class="d-flex w-100 justify-content-between">
                                                      <h5 class="mb-1">List group </h5>
                                                      <small class="text-muted">3 days ago</small>
                                                    </div>
                                                    <p class="mb-1">Donec id elit non mi.</p>
                                                    <small class="text-muted">Donec id elit.</small>
                                                  </a>
                                                  <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                                    <div class="d-flex w-100 justify-content-between">
                                                      <h5 class="mb-1">List group</h5>
                                                      <small class="text-muted">3 days ago</small>
                                                    </div>
                                                    <p class="mb-1">Donec id elit non mi.</p>
                                                    <small class="text-muted">Donec id elit.</small>
                                                  </a>
                                                </div>
                                          <div class="list-group col-4">
                                              <button type="button" class="list-group-item list-group-item-action active">
                                                Cras justo odio
                                              </button>
                                              <button type="button" class="list-group-item list-group-item-action">Dapibus ac facilisis in</button>
                                              <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
                                              <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
                                              <button type="button" class="list-group-item list-group-item-action" disabled>Vestibulum at eros</button>
                                              <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
                                              <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
                                            </div>
                                          <ul class="list-group col-4">
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">07</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">19</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">17</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">13</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">11</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">16</span>
                                              </li>
                                            </ul>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="card">
                                    <div class="card-header" id="headingTwo">
                                      <h5 class="mb-0">
                                        <button class="btn btn-dark collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                          Segundo Semestre
                                        </button>
                                      </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                      <div class="card-body d-flex justify-content-around">
                                          <div class="list-group col-4">
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-danger">Dapibus ac facilisis in</a>

                                              <a href="#" class="list-group-item list-group-item-action list-group-item-primary">This is a primary list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">This is a secondary list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-success">This is a success list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-danger">This is a danger list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-warning">This is a warning list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-info">This is a info list group item</a>
                                            </div>
                                          <div class="list-group col-4">
                                              <button type="button" class="list-group-item list-group-item-action active">
                                                Cras justo odio
                                              </button>
                                              <button type="button" class="list-group-item list-group-item-action">Dapibus ac facilisis in</button>
                                              <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
                                              <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
                                              <button type="button" class="list-group-item list-group-item-action" disabled>Vestibulum at eros</button>
                                              <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
                                              <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
                                            </div>
                                          <ul class="list-group col-4">
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">07</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">19</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">17</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">13</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">11</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">16</span>
                                              </li>
                                            </ul>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="card">
                                    <div class="card-header" id="headingThree">
                                      <h5 class="mb-0">
                                        <button class="btn btn-dark collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                          Tercer Semestre
                                        </button>
                                      </h5>
                                    </div>
                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                      <div class="card-body d-flex justify-content-around">
                                          <div class="list-group col-4">
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-danger">Dapibus ac facilisis in</a>

                                              <a href="#" class="list-group-item list-group-item-action list-group-item-primary">This is a primary list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">This is a secondary list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-success">This is a success list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-danger">This is a danger list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-warning">This is a warning list group item</a>
                                              <a href="#" class="list-group-item list-group-item-action list-group-item-info">This is a info list group item</a>
                                            </div>
                                          <div class="list-group col-4">
                                              <button type="button" class="list-group-item list-group-item-action active">
                                                Cras justo odio
                                              </button>
                                              <button type="button" class="list-group-item list-group-item-action">Dapibus ac facilisis in</button>
                                              <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
                                              <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
                                              <button type="button" class="list-group-item list-group-item-action" disabled>Vestibulum at eros</button>
                                              <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
                                              <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
                                            </div>
                                          <ul class="list-group col-4">
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Cras justo odio
                                                <span class="badge badge-primary badge-pill">14</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">07</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">19</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">17</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">13</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Dapibus ac facilisis in
                                                <span class="badge badge-primary badge-pill">11</span>
                                              </li>
                                              <li class="list-group-item d-flex justify-content-between align-items-center">
                                                Morbi leo risus
                                                <span class="badge badge-primary badge-pill">16</span>
                                              </li>
                                            </ul>
                                      </div>
                                    </div>
                                  </div>
                                </div>



                   </div>
               </div>
           </div>
       </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
