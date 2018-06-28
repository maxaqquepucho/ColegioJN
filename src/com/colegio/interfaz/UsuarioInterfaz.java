package com.colegio.interfaz;

import java.util.ArrayList;

import com.colegio.modelo.Persona;
import com.colegio.modelo.Usuario;

public interface UsuarioInterfaz 
{
	public ArrayList<Usuario> mostrar();
	public boolean agregar(Usuario usuario);
	public Persona buscar(String codigo);
	public boolean actualizar(Usuario usuario);
	public boolean eliminar(String codigo);
	
}
