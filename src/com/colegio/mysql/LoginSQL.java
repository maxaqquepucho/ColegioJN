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
			if (pass != null) {
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
