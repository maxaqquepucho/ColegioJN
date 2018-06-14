package Controlador;

import java.sql.Date;
import java.sql.PreparedStatement;
import conexion.conexion;

public class Actualizar extends conexion
{
	public boolean Modificar(String idPersona, String tipo, String nombre, 
			String apellido, String dni,String idUbigeo, String direc, Date fecnac,
			String sexo, String numcel, String numtel)
	{
		
		PreparedStatement ps = null;
		String sql="UPDATE colegio.persona SET "
				+ "idTipo= ?, Nombre= ?, Apellido= ? , DNI= ?, idUBIGEO = ?, Direccion= ? , "
				+ "fecNac=?, Sexo = ?,NumeroCelular=? ,NumeroTelefono=? WHERE idPersona= ?;";

		

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
			ps.setString(11, idPersona);
			

			if (ps.executeUpdate()==1)
			{
				System.out.println("Registro Exitoso");
				return true;
			}else {System.out.println("Registro incompleto");}

		} catch (Exception e) {
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
