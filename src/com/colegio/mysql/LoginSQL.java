package com.colegio.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.colegio.interfaz.LoginInterfaz;
import com.colegio.jdbc.ConectarMysql;
import com.colegio.modelo.Usuario;

public class LoginSQL implements LoginInterfaz {

	private final  ConectarMysql mysql;
	public LoginSQL() {
		this.mysql = new ConectarMysql();
	}
	
	@Override
	public Usuario obtenerUsuario(Usuario usuario) {
		String SQL = "SELECT A.*, B.* FROM usuario A "
				+ "inner join persona B ON (A.idUsuario=B.idPersona) where A.usuario = ? and A.contrasenia = ?";

		mysql.establecerConexion();
		Connection conectado = mysql.getConnection();
		String pass = "";
		try {
			PreparedStatement pst = conectado.prepareStatement(SQL);
			pst.setString(1, usuario.getUsuario());
			pst.setString(2, usuario.getPass());
			
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				pass = rs.getString("contrasenia");
				
				 usuario = new Usuario();
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
			}
			mysql.cerrarConexion();
			return usuario;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean iniciarSesion(Usuario user) {
		String SQL = "SELECT A.*, B.* FROM usuario A "
				+ "inner join persona B ON (A.idUsuario=B.idPersona) where A.usuario = ? and A.contrasenia = ?";

		mysql.establecerConexion();
		Connection conectado = mysql.getConnection();
		String pass = "";
		try {
			PreparedStatement pst = conectado.prepareStatement(SQL);
			pst.setString(1, user.getUsuario());
			pst.setString(2, user.getPass());
			
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				pass = rs.getString("contrasenia");
				 
			}
			
			mysql.cerrarConexion();
			if (pass!=null) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

}
