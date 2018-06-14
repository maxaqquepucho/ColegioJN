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
</body>
</html>