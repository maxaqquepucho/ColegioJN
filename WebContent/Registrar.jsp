<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es" >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <link rel="stylesheet" href="fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="css/estilos-registrar.css">
        <link rel="stylesheet" href="iconos1/style.css">
    </head>
    <body>
        <div class="container-principal ">

                <nav class="navegador">
                    <div class="">
                        <a class="nav-boton " href="index.html"><i class="icon-home"></i><span>JESÚS DE NAZARETH</span></a>
                    </div>
                    <div class="" >
                        <a class="nav-boton" href="login.jsp"><i class="icon-enter"></i><span>Login</span></a>
                        <a class="nav-boton" href="Registrar.jsp"><i class="icon-enter"></i><span>Registrar</span></a>

                    </div>
                </nav>

                <div class=" container-login">

                    <form class="formulario" action="Registro" method="post">

                        <div class="">
                            <div class="double-div" >

                                <div class="input-1">
                                    <i class="icon-user icon ml-3"></i>
                                    <input class="col-10" type="text" id="name" name="nombre" placeholder="Nombre"/>
                                </div>


                                <div class="input-1 ">
                                    <i class="icon-user icon ml-3"></i>
                                    <input class="col-10" type="text" id="name" name="apellido" placeholder="Apellidos"/>
                                </div>
                                <div class="input-1 ">
                                    <i class="icon-mail2 icon ml-3"></i>
                                    <input class="col-10" type="email" id="name" name="email" placeholder="Correo Electrónico"/>
                                </div>

                            </div>

                            <div class="double-div" >

                                <div class=" double-component ">
                                    <div class="1">
                                        <i class="icon-calendar icon ml-3"></i>
                                        <input class="col-10" type="date" id="name" name="fecnac" placeholder="Fecha"/>
                                    </div>
                                    <div class="1">
                                        <i class="icon-checkmark icon ml-3"></i>
                                        <input class="col-10" type="text" id="name" name="DNI" placeholder="DNI"/>
                                    </div>
                                </div>
                                <!--  -->
                                <div class="input-1">
                                    <i class="icon-mobile icon ml-3"></i>
                                    <input class="col-10" type="text" id="name" name="numcel" placeholder="Numero de Celular"/>
                                </div>
                                <div class="input-1">
                                    <i class="icon-phone icon ml-3"></i>
                                    <input class="col-10" type="text" id="name" name="numtel" placeholder="Numero de Telefono"/>
                                </div>
                                <div class="input-1">
                                    <i class="icon-location icon ml-3"></i>
                                    <input class="col-10" type="text" id="name" name="direc" placeholder="Direccion"/>
                                </div>


                            </div>

                            <div class="select-combo">
                                <select name="tipo">
                                    <option value="1">Alumno</option>
                                    <option value="2">Profesor</option>
                                    <option value="3">Asistente</option>
                                    <option value="4">Director</option>
                                </select>

                            </div>


                        </div>

<!--    ----------------------------------------------------------------------------------------------------- -->
                        <div class="" >
                            <div class="select-combo">
                                <select name="sexo">
                                    <option value="1">Maculino</option>
                                    <option value="2">Femenino</option>
                                </select>
                            </div>
                            <div class="input-1">
                                <i class="icon-camera icon ml-3"></i>
                                <input class="col-10" type="text" id="name" name="imagen" placeholder="Link de Imagen"/>
                            </div>
                            <div class="input-1">
                                <i class="icon-users icon ml-3"></i>
                                <input class="col-10" type="text" id="name" name="usuario" placeholder="Usuario"/>
                            </div>



                            <div class=" double-component ">
                                <div class="1">
                                    <i class="icon-key2 icon ml-3"></i>
                                    <input class="col-10" type="text" id="name" name="contrasenia" placeholder="Contraseña"/>
                                </div>
                                <div class="1">
                                    <i class="icon-key icon ml-3"></i>
                                    <input class="col-10" type="text" id="name" name="confcontrasenia" placeholder=" Confirmar"/>
                                </div>
                            </div>

                            <div class="button">
                                <button type="submit">Registrar</button>
                            </div>
                        </div>


                    </form>

            </div>
        </div>

        <!-- atom://teletype/portal/7729ab1c-e769-4ea8-ae77-e8b75356c81b -->
        <script src="js/jquery-3.3.1.min.js"> </script>
        <script src="js/popper.min.js" ></script>
        <script src="js/bootstrap.min.js" ></script>

    </body>
</html>
