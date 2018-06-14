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
</body>
</html>