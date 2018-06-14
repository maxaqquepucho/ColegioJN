<%@page import="com.sun.org.apache.xpath.internal.functions.Function"%>
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
<%@page import="java.sql.Date"%>

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
	 
%>
<div>
	<h1>Modificar Registro</h1>
<br><br>
<form action="actualizar" method="post">
	ID: 
	<input type="text" name="idPersona" value="<%=rs.getInt("idPersona")%>">
	<br><br>
	Tipo:
	
	<%!
	public String Alumno(int idtipo)
	{ if(idtipo==1){return "selected";}
	return " ";}
	public String Profesor(int idtipo)
	{ if(idtipo==2){return "selected";}
	return " ";}
	public String Asistente(int idtipo)
	{ if(idtipo==3){return "selected";}
	return " ";}
	public String Director(int idtipo)
	{ if(idtipo==4){return "selected";}
	return " ";}
%>
	<select name="idTipo">
     <option value="1" <%=Alumno(rs.getInt("idTipo")) %>>Alumno</option>
     <option value="2" <%=Profesor(rs.getInt("idTipo")) %>>Profesor</option>
     <option value="3" <%=Asistente(rs.getInt("idTipo")) %>>Asistente</option>
     <option value="4" <%=Director(rs.getInt("idTipo")) %>>Director</option>
    </select>
    <br><br>
	Nombre: 
	<input type="text" name="Nombre" value="<%=rs.getString("Nombre") %>" >
	<br><br>
	Apellido: 
	<input type="text" name="Apellido" value="<%=rs.getString("Apellido") %>">
	<br><br>
	DNI: 
	<input type="text" name="DNI" value="<%=rs.getString("DNI") %>">
	<br><br>
	UBIGEO: 
	<input type="text" name="idUBIGEO" value="<%=rs.getString("idUBIGEO") %>">
	<br><br>
	Direccion: 
	<input type="text" name="Direccion" value="<%=rs.getString("Direccion") %>">
	<br><br>
	FecNac: 
	<input type="text" name="fecNac" value="<%=rs.getString("fecNac")%>">
	<br><br>
	<%!
	public String Maculino(String sexo)
	{ if(sexo.equalsIgnoreCase("m")){return "selected";}
	return " ";}
	public String Femenino(String sexo)
	{ if(sexo.equalsIgnoreCase("f")){return "selected";}
	return " ";}
    %>
	
	Sexo:
	<select name="Sexo" >
     <option value="1" <%=Maculino(rs.getString("Sexo")) %>>M</option>
     <option value="2" <%=Femenino(rs.getString("Sexo")) %>>F</option>
    </select>
    NumCel: 
	<input type="text" name="NumeroCelular" value="<%=rs.getString("NumeroCelular") %>">
	<br><br>
	NUmTel: 
	<input type="text" name="NumeroTelefono" value="<%=rs.getString("NumeroTelefono") %>">
	<br><br>
	idUsuario: 
	<input type="text" name="idUsuario" value="<%=rs.getInt("idUsuario") %>">
	<br><br>
	<input type="submit" value="actualizar">
</form>
<%} %>
</div>

</body>
</html>



