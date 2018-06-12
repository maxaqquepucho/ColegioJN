package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexion.conexion;

public class Login extends conexion
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
}
