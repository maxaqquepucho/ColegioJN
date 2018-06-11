package Controlador;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexion.conexion;

public class Consultas extends conexion
{
	
	public boolean autenticacion(String user,String pass)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT * FROM usuario where usuario = ? and contrasenia= ?";
		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);

			rs=ps.executeQuery();

			if (rs.absolute(1))
			{
				System.out.println("Login Exitoso");
				return true;
			}else{System.out.println("Login fallido");}

		} catch (Exception e) {e.printStackTrace();}
		finally
		{
			try
			{
				if (getConexion()!=null) {getConexion().close();}
				if (ps!=null) {ps.close();}
				if (rs!=null) {rs.close();}
			} catch (Exception e2) {e2.printStackTrace();}
		}

		return false;
	}

	public boolean registrar(String mail, String usuario, String contrasenia)
	{
		PreparedStatement ps = null;

		String sql="INSERT INTO usuario (mail ,usuario, contrasenia, imagen) VALUES(?, ? ,?,?)";

		try
		{
			ps = getConexion().prepareStatement(sql);
			ps.setString(1, mail);
			ps.setString(2, usuario);
			ps.setString(3, contrasenia);

			if (ps.executeUpdate()==1)
			{
				System.out.println("Registro Exitoso");
				return true;
			}else {System.out.println("Registro incompleto");}

		} catch (Exception e) {
			System.out.println("Registro incompleto");
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if (getConexion()!=null) {getConexion().close();}
				if (ps!=null) {ps.close();}
			} catch (Exception e2) {e2.printStackTrace();}
		}


		return false;
	}
	public String imagenes(String usuario)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT imagen FROM usuario where usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuario);
			rs=ps.executeQuery();

			String cadena="s";

			while(rs.next())
			{
				cadena=rs.getString("imagen");
			}
			
			return cadena;


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	public String Nombre(String usuarioMail)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT A.nombre FROM colegio.persona A INNER JOIN colegio.usuario B ON(A.idUsuario = B.idUsuario) where B.usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuarioMail);
			rs=ps.executeQuery();

			String mail="s";

			while(rs.next())
			{
				mail=rs.getString("A.nombre");
			}
			
			return mail;


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	public String Apellido(String usuarioMail)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT A.apellido FROM colegio.persona A INNER JOIN colegio.usuario B ON(A.idUsuario = B.idUsuario) where B.usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuarioMail);
			rs=ps.executeQuery();

			String mail="s";

			while(rs.next())
			{
				mail=rs.getString("A.apellido");
			}
			
			return mail;


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	public String DNI(String usuarioMail)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT A.DNI FROM colegio.persona A INNER JOIN colegio.usuario B ON(A.idUsuario = B.idUsuario) where B.usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuarioMail);
			rs=ps.executeQuery();

			String mail="s";

			while(rs.next())
			{
				mail=rs.getString("A.dni");
			}
			
			return mail;


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	public String Direccion(String usuarioMail)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT A.Direccion FROM colegio.persona A INNER JOIN colegio.usuario B ON(A.idUsuario = B.idUsuario) where B.usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuarioMail);
			rs=ps.executeQuery();

			String mail="s";

			while(rs.next())
			{
				mail=rs.getString("A.Direccion");
			}
			
			return mail;


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	public String Sexo(String usuarioMail)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT A.Sexo FROM colegio.persona A INNER JOIN colegio.usuario B ON(A.idUsuario = B.idUsuario) where B.usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuarioMail);
			rs=ps.executeQuery();

			String mail="s";

			while(rs.next())
			{
				mail=rs.getString("A.Sexo");
			}
			if(mail.equalsIgnoreCase("M")) {return "Hombre";}else {return "Mujer";}
			


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	
	public String NumeroCelular(String usuarioMail)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT A.NumeroCelular FROM colegio.persona A INNER JOIN colegio.usuario B ON(A.idUsuario = B.idUsuario) where B.usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuarioMail);
			rs=ps.executeQuery();

			String mail="s";

			while(rs.next())
			{
				mail=rs.getString("A.NumeroCelular");
			}
			return mail;
			


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	public String NumeroTelefono(String usuarioMail)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT A.NumeroTelefono FROM colegio.persona A INNER JOIN colegio.usuario B ON(A.idUsuario = B.idUsuario) where B.usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuarioMail);
			rs=ps.executeQuery();

			String mail="s";

			while(rs.next())
			{
				mail=rs.getString("A.NumeroTelefono");
			}
			return mail;
			


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	
	public String mail(String usuarioMail)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT mail FROM usuario where usuario = ?";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuarioMail);
			rs=ps.executeQuery();

			String mail="s";

			while(rs.next())
			{
				mail=rs.getString("mail");
			}
			
			return mail;


		} catch (Exception e) {e.printStackTrace();}
		finally
		{
			try
			{
				if (getConexion()!=null) {getConexion().close();}
				if (ps!=null) {ps.close();}
				if (rs!=null) {rs.close();}
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return "noloC";
	}

	
		
	public static void main (String [] arg)
	{
		Consultas con = new Consultas();
		System.out.println(con.imagenes("1"));

	}
}

