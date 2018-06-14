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
 int id=Integer.parseInt(request.getParameter("id"));
 ps=con.prepareStatement("DELETE from colegio.persona where idPersona = "+id);
 ps.executeUpdate();
 
 PreparedStatement ps2;
 ps2=con.prepareStatement("DELETE from colegio.usuario where idUsuario = "+id);
 ps2.executeUpdate();
 response.sendRedirect("menu-director.jsp");
%>
</body>
</html>