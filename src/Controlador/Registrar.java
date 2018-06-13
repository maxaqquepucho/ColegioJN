package Controlador;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexion.conexion;

public class Registrar extends conexion
{	
	public int maxiduser()
	{
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql="SELECT MAX(idUsuario) FROM colegio.usuario";

		try
		{
			ps= getConexion().prepareStatement(sql);
			rs=ps.executeQuery();
			String cadena="";

			while(rs.next())
			{
				cadena=rs.getString("MAX(idUsuario)");
			}
			
			return (Integer.parseInt(cadena)+1);


		} catch (Exception e) {e.printStackTrace();}
		return  0;
	}
	
	public boolean registrarPersona(String tipo, String nombre, String apellido, String dni, String direc, Date fecnac,
			String sexo, String numcel, String numtel)
	{
		
		PreparedStatement ps = null;
		String sql="INSERT INTO colegio.persona (idTipo, Nombre, Apellido, DNI, idUBIGEO, Direccion, fecNac, Sexo, NumeroCelular, NumeroTelefono, idUsuario)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		
		

		try
		{
			ps = getConexion().prepareStatement(sql);
			ps.setString(1, tipo);
			ps.setString(2, nombre);
			ps.setString(3, apellido);
			ps.setString(4, dni);
			ps.setString(5, null);
			ps.setString(6, direc);
			ps.setDate(7, fecnac);
			ps.setString(8, sexo);
			ps.setString(9, numcel);
			ps.setString(10, numtel);
			ps.setInt(11, maxiduser());
			

			if (ps.executeUpdate()==1)
			{
				System.out.println("Registro Exitoso");
				return true;
			}else {System.out.println("Registro incompleto");}

		} catch (Exception e) {
			System.out.println("Registro incompleto");
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean registrarUsuario(String mail, String usuario, String contrasenia, String imagen)
	{
		PreparedStatement ps = null;

		String sql="INSERT INTO usuario (mail ,usuario, contrasenia, imagen) VALUES(?,?,?,?)";

		try
		{
			ps = getConexion().prepareStatement(sql);
			ps.setString(1, mail);
			ps.setString(2, usuario);
			ps.setString(3, contrasenia);
			ps.setString(4, imagen);

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
