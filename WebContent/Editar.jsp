<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
 Connection con;
 String user="root";
 String password="";
 String url="jdbc:mysql://localhost:3306/colegio";
 String Classname="org.gjt.mm.mysql.Driver";
 
 Class.forName(Classname);
 con=(Connection) DriverManager.getConnection(url, user, password);
 
 PreparedStatement ps;
 ResultSet rs;
 int id=Integer.parseInt(request.getParameter("id"));
 ps=con.prepareStatement("Select * from colegio.persona where idPersona = "+id);
 rs=ps.executeQuery();
 while(rs.next())
 {
	 
 }
%>
<div>
	<h1>Modificar Registro</h1>
<br>
<form action=" ">
	Tipo:
	<select name="tipo">
     <option value="1">Alumno</option>
     <option value="2">Profesor</option>
     <option value="3">Asistente</option>
     <option value="4">Director</option>
    </select>
    <br><br>
	Nombre: 
	<input type="text" name="txtNombre">
	<br><br>
	Apellido: 
	<input type="text" name="txtApellido">
	<br><br>
	DNI: 
	<input type="text" name="txtDNI">
	<br><br>
	UBIGEO: 
	<input type="text" name="txtUBIGEO">
	<br><br>
	Direccion: 
	<input type="text" name="txtDireccion">
	<br><br>
	FecNac: 
	<input type="text" name="txtFecNac">
	<br><br>
	Sexo:
	<select name="tipo">
     <option value="1">M</option>
     <option value="2">F</option>
    </select>
    NumCel: 
	<input type="text" name="txtNumcel">
	<br><br>
	NUmTel: 
	<input type="text" name="txtNumtel">
	<br><br>
	idUsuario: 
	<input type="text" name="txtidUsuario">
	<br><br>
	<a href="menu.jsp">Regresar</a>
</form>
</div>

</body>
</html>