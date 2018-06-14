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
                           <a class="simple" href="menu.jsp">JESÚS DE NAZARETH</a>
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
                                   <a class="lista-boton"  href="login.jsp">
                                       <div class="">
                                           <i class="fas fa-folder-open"></i>
                                           <p>Cerrar Sesión</p>
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
                                        <button class="btn btn-dark" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                          Profesores
                                        </button>
                                      </h5>
                                    </div>

                                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                      <div class="card-body d-flex justify-content-around">
                                         
                                        <%@page import="com.mysql.jdbc.Connection"%>
										<%@page import="java.sql.DriverManager"%>
										<%@page import="java.sql.PreparedStatement"%>
										<%@page import="java.sql.ResultSet"%>
										
										<%
										 Connection con2;
										 String user="root";
										 String password="";
										 String url="jdbc:mysql://localhost:3306/colegio";
										 String Classname="org.gjt.mm.mysql.Driver";
										 
										 Class.forName(Classname);
										 con2=(Connection) DriverManager.getConnection(url, user, password);
										 
										 PreparedStatement ps;
										 ResultSet rs;
										 ps=con2.prepareStatement("Select * from colegio.persona where idTipo = 2");
										 rs=ps.executeQuery();
										 
										%>
										<div>
										<h1>Tabla Profesores</h1>
										<table>
										<tr>
											<th>idPersona</th>
											<th>idTipo</th>
											<th>Nombre</th>
											<th>Apellido</th>
											<th>DNI</th>
											<th>Ubigeo</th>
											<th>Direccion</th>
											<th>Fec. Nac.</th>
											<th>Sexo</th>
											<th>Num. cel</th>
											<th>Num. tel</th>
											<th>idUsuario</th>
										</tr>
										<%
											while(rs.next()){
										%>
										<tr>
											<td><%=rs.getInt("idPersona")%></td>
											<td><%=rs.getString("idTipo") %></td>
											<td><%=rs.getString("Nombre") %></td>
											<td><%=rs.getString("Apellido") %></td>
											<td><%=rs.getString("DNI") %></td>
											<td><%=rs.getString("idUBIGEO") %></td>
											<td><%=rs.getString("Direccion") %></td>
											<td><%=rs.getDate("fecNac") %></td>
											<td><%=rs.getString("Sexo") %></td>
											<td><%=rs.getString("NumeroCelular") %></td>
											<td><%=rs.getString("NumeroTelefono") %></td>
											<td><%=rs.getString("idUsuario")%></td>
											<td>
												<a href="Editar.jsp?id=<%=rs.getInt("idPersona")%>" >Editar</a>
												<a href="Eliminar.jsp?id=<%=rs.getInt("idPersona")%>">Eliminar</a>
											</td>
										</tr>
										<%}%>
										</table>
										</div>                                        
                                         
                                         
                                      </div>
                                    </div>
                                  </div>
                                  <div class="card">
                                    <div class="card-header" id="headingTwo">
                                      <h5 class="mb-0">
                                        <button class="btn btn-dark collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                          Alumnos
                                        </button>
                                      </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                      <div class="card-body d-flex justify-content-around">
	                                        <%@page import="com.mysql.jdbc.Connection"%>
											<%@page import="java.sql.DriverManager"%>
											<%@page import="java.sql.PreparedStatement"%>
											<%@page import="java.sql.ResultSet"%>
																						
											<%
											 Connection con3;
											 String user2="root";
											 String password2="";
											 String url2="jdbc:mysql://localhost:3306/colegio";
											 String Classname2="org.gjt.mm.mysql.Driver";
											 
											 Class.forName(Classname2);
											 con3=(Connection) DriverManager.getConnection(url2, user2, password2);
											 
											 PreparedStatement ps2;
											 ResultSet rs2;
											 ps2=con3.prepareStatement("Select * from colegio.persona where idTipo = 1");
											 rs2=ps2.executeQuery();
											 
											%>
											<div>
											<h1>Tabla Alumnos</h1>
											<table>
											<tr>
												<th>idPersona</th>
												<th>idTipo</th>
												<th>Nombre</th>
												<th>Apellido</th>
												<th>DNI</th>
												<th>Ubigeo</th>
												<th>Direccion</th>
												<th>Fec. Nac.</th>
												<th>Sexo</th>
												<th>Num. cel</th>
												<th>Num. tel</th>
												<th>idUsuario</th>
											</tr>
											<%
												while(rs2.next()){
											%>
											<tr>
												<td><%=rs2.getInt("idPersona")%></td>
												<td><%=rs2.getString("idTipo") %></td>
												<td><%=rs2.getString("Nombre") %></td>
												<td><%=rs2.getString("Apellido") %></td>
												<td><%=rs2.getString("DNI") %></td>
												<td><%=rs2.getString("idUBIGEO") %></td>
												<td><%=rs2.getString("Direccion") %></td>
												<td><%=rs2.getDate("fecNac") %></td>
												<td><%=rs2.getString("Sexo") %></td>
												<td><%=rs2.getString("NumeroCelular") %></td>
												<td><%=rs2.getString("NumeroTelefono") %></td>
												<td><%=rs2.getString("idUsuario")%></td>
												<td>
													<a href="Editar.jsp?id=<%=rs2.getInt("idPersona")%>" >Editar</a>
													<a href="Eliminar.jsp?id=<%=rs2.getInt("idPersona")%>">Eliminar</a>
												</td>
											</tr>
											<%}%>
											</table>
											</div>
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
