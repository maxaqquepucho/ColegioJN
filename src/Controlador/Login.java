package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexion.conexion;

public class Login extends conexion
{
	public String idTipo(String usuario)
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT A.idTipo ,B.usuario FROM colegio.persona A "
				+ "INNER JOIN colegio.usuario B ON (A.idPersona=B.idUsuario) where usuario = ? ";

		try
		{
			ps= getConexion().prepareStatement(sql);
			ps.setString(1, usuario);
			rs=ps.executeQuery();

			String cadena="s";

			while(rs.next())
			{
				cadena=rs.getString("idTipo");
			}
			
			return cadena;


		} catch (Exception e) {e.printStackTrace();}
		return "noloC";
	}
	
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

		return false;
	}
	
}
