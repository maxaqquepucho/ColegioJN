package com.colegio.interfaz;

import com.colegio.modelo.Usuario;

public interface LoginInterfaz 
{
	public Usuario obtenerUsuario(Usuario user);
	
	public boolean iniciarSesion(Usuario user);
}
