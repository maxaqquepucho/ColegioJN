package Controlador;

import java.sql.PreparedStatement;

import conexion.conexion;

public class Registrar extends conexion
{
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
}
