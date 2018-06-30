package com.colegio.mysql;

import java.util.ArrayList;

import com.colegio.interfaz.UsuarioInterfaz;
import com.colegio.jdbc.ConectarMysql;
import com.colegio.modelo.Persona;
import com.colegio.modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioSQL implements UsuarioInterfaz
{

	private final  ConectarMysql mysql;
	public UsuarioSQL() {
		this.mysql = new ConectarMysql();
	}
	
	String SQL = "";
	ConectarMysql CM =new ConectarMysql();
	@Override
	public ArrayList<Usuario> mostrar() {
		// TODO Auto-generated method stub
		ArrayList<Usuario> lista = new ArrayList<Usuario>();
		SQL = "SELECT * FROM colegio.usuario A inner join colegio.persona B ON (a.idUsuario=b.idPersona) ";
		mysql.establecerConexion();
		Connection conectado = mysql.getConnection();
		int i=0;
		
		try {
			PreparedStatement ps = conectado.prepareStatement(SQL);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setIdPersona(rs.getString("idPersona"));
				usuario.setIdTipo(rs.getString("idTipo"));
				usuario.setNombre(rs.getString("Nombre"));
				usuario.setApellido(rs.getString("Apellido"));
				usuario.setDni(rs.getString("DNI"));
				usuario.setIdUBIGEO(rs.getString("idUBIGEO"));
				usuario.setDireccion(rs.getString("Direccion"));
				usuario.setFecnac(rs.getString("fecnac"));
				usuario.setSexo(rs.getString("Sexo"));
				usuario.setNumeroCelular(rs.getString("NumeroCelular"));
				usuario.setNumeroTelefono(rs.getString("NumeroTelefono"));
				usuario.setIdUsuario(rs.getString("idusuario"));
				usuario.setMail(rs.getString("mail"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setPass(rs.getString("contrasenia"));
				usuario.setImagen(rs.getString("imagen"));
				lista.add(usuario);
				
				System.out.println(lista.get(i).getIdPersona());
				System.out.println(lista.get(i).getNombre());
				System.out.println(lista.get(i).getApellido());
				System.out.println(rs.getString("Nombre"));
				i++;
			}
			
			return lista;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			//mysql.cerrarConexion();
		}
		return null;
	}

	@Override
	public boolean agregar(Usuario usuario) 
	{
		SQL = "INSERT INTO persona (idTipo, Nombre, Apellido, DNI, idUBIGEO, Direccion, fecNac, Sexo, NumeroCelular, NumeroTelefono) " + 
				"VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
		String SQL2 = "INSERT INTO usuario (mail, usuario, contrasenia, imagen) " + 
				"            VALUES (?, ?, ?, ?);";
		mysql.establecerConexion();
		Connection conectado = mysql.getConnection();
		
		try {
			PreparedStatement pst = conectado.prepareStatement(SQL);
			PreparedStatement pst2 = conectado.prepareStatement(SQL2);
			pst.setString(1, usuario.getIdTipo());
			pst.setString(2, usuario.getNombre());
			pst.setString(3, usuario.getApellido());
			pst.setString(4, usuario.getDni());
			pst.setString(5, usuario.getIdUBIGEO());
			pst.setString(6, usuario.getDireccion());
			pst.setString(7, usuario.getFecnac());
			pst.setString(8, usuario.getSexo());
			pst.setString(9, usuario.getNumeroCelular());
			pst.setString(10, usuario.getNumeroTelefono());
			pst2.setString(1, usuario.getMail());
			pst2.setString(2, usuario.getUsuario());
			pst2.setString(3, usuario.getPass());
			pst2.setString(4, usuario.getImagen());
			
			
			int n = pst.executeUpdate();
			mysql.cerrarConexion();
			if (n != 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	@Override
	public Persona buscar(String codigo) {
       
		Usuario usuario = new Usuario();
		
		SQL = "SELECT * FROM colegio.usuario A inner join colegio.persona B ON (a.idUsuario=b.idPersona) where idPersona = ?";
		Connection conectado = mysql.getConnection();
		mysql.establecerConexion();

		try {
			PreparedStatement pst = conectado.prepareStatement(SQL);
			pst.setString(1, codigo);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) 
			{
				usuario.setIdPersona(rs.getString("idPersona"));
				usuario.setIdTipo(rs.getString("idTipo"));
				usuario.setNombre(rs.getString("Nombre"));
				usuario.setApellido(rs.getString("Apellido"));
				usuario.setDni(rs.getString("DNI"));
				usuario.setIdUBIGEO(rs.getString("idUBIGEO"));
				usuario.setDireccion(rs.getString("Direccion"));
				usuario.setFecnac(rs.getString("fecNac"));
				usuario.setSexo(rs.getString("sexo"));
				usuario.setNumeroCelular(rs.getString("NumeroCelular"));
				usuario.setNumeroTelefono(rs.getString("NumeroTelefono"));
				usuario.setMail(rs.getString("mail"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setPass(rs.getString("contrasenia"));
				usuario.setImagen(rs.getString("imagen"));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			mysql.cerrarConexion();
		}
		
		return usuario;
	}

	@Override
	public boolean actualizar(Usuario usuario)
	{
		
			SQL = "UPDATE persona SET idTipo = ?, Nombre = ?, Apellido = ? , DNI = ? , Direccion = ? , fecNac = ?"
					+ ", Sexo = ? , NumeroCelular = ? , NumeroTelefono = ? " + 
			"                     WHERE idPersona = ?";
			
			String SQL2="UPDATE usuario SET  mail= ?, usuario = ?, contrasenia = ? , imagen = ?  WHERE idUsuario = ?";
			mysql.establecerConexion();
			Connection conectado = mysql.getConnection();
			
			try {
				PreparedStatement pst = conectado.prepareStatement(SQL);
				PreparedStatement pst2 = conectado.prepareStatement(SQL2);
				
				pst.setString(1, usuario.getIdTipo());
				pst.setString(2, usuario.getNombre());
				pst.setString(3, usuario.getApellido());
				pst.setString(4, usuario.getDni());
				pst.setString(5, usuario.getDireccion());
				pst.setString(6, usuario.getFecnac());
				pst.setString(7, usuario.getSexo());
				pst.setString(8, usuario.getNumeroCelular());
				pst.setString(9, usuario.getNumeroTelefono());
				pst.setString(10, usuario.getIdPersona());
				pst2.setString(1, usuario.getMail());
				pst2.setString(2, usuario.getUsuario());
				pst2.setString(3, usuario.getPass());
				pst2.setString(4, usuario.getImagen());
				pst2.setString(5, usuario.getIdPersona());
				
				
				int n = pst.executeUpdate();
				mysql.cerrarConexion();
				if (n != 0) {
					return true;
				} else {
					return false;
				}
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
		
	}

	@Override
	public boolean eliminar(String codigo) {
		SQL = "DELETE FROM persona WHERE idPersona = ?";
		String SQL2 = "DELETE FROM Usuario WHERE idUsuario = ?";
		mysql.establecerConexion();
		Connection conectado = mysql.getConnection();
		
		try {
			PreparedStatement  pst = conectado.prepareStatement(SQL);
			PreparedStatement  pst2 = conectado.prepareStatement(SQL2);
			pst.setString(1, codigo);
			pst2.setString(1, codigo);
			
			int n = pst.executeUpdate();
			mysql.cerrarConexion();
			if (n != 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static void main (String [] arg)
	
	{
		
		Usuario use= new Usuario();
		UsuarioSQL uq= new UsuarioSQL();
		uq.mostrar();
	}

}
