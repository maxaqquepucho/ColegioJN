<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <link rel="stylesheet" href="fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="css/estilos-login.css">
        <link rel="stylesheet" href="iconos1/style.css">
            <title>Login Test</title>
    </head>
    <body>
     <%-- <form action="iniciarSesion" methods="get" style="height: 70px; ">

     	 <input type="text" name="user"><br><br>
     	 <input type="text" name="pass"><br><br>
     	<input type="submit" value="Login"><br><br>

     </form> --%>

     <%-- No tienes cuenta... <a href="Registrar.jsp">Registrarme</a> --%>


        <div class="container-principal ">

             <nav class="navegador ">
                 <div >
                     <a class="nav-boton" href="index.html"><i class="icon-home"></i><span>JESÚS DE NAZARETH</span></a>
                 </div>
                 <div >
                     <a class="nav-boton" href="index.jsp"><i class="icon-enter"></i><span>Login</span></a>
                     <a class="nav-boton" href="Registrar.jsp"><i class="icon-enter"></i><span>Registrar</span></a>

                 </div>
             </nav>

             <div class=" container-login col-12-md-12  ">

                 <form class="formulario" action="iniciarSesion" method="post">
                     <div >
                         <div class="input-2">
                             <img src="images/jn-login3.png" alt="" width="50" height="50">
                         </div>
                         <div class="input-1 ">
                             <i class="icon-user icon ml-3"></i>
                             <input class="col-10" type="text" name="user" id="name" placeholder="Usuario"/>
                         </div>
                         <div class="input-1 ">
                             <i class="icon-lock icon ml-3"></i>
                             <input class="col-10" type="password" name="pass" id="name" placeholder="Contraseña"/>
                         </div>
                         <div class="button">
                             <button type="submit">Ingresar</button>
                         </div>
                     </div>
                 </form>

             </div>

        </div>
         <script src="js/jquery-3.3.1.min.js"> </script>
         <script src="js/popper.min.js" ></script>
         <script src="js/bootstrap.min.js" ></script>
    </body>
</html>
