package com.colegio.modelo;

public class Usuario extends Persona 
{
	
	private String mail;
	private String usuario;
	private String pass;
	private String imagen;
	

	public Usuario(String idPersona, String idTipo, String nombre, String apellido, String dni, String idUBIGEO,
			String direccion, String fecnac, String sexo, String numeroCelular, String numeroTelefono, String idUsuario,
			String mail, String usuario, String pass, String imagen) 
	{
		super(idPersona, idTipo, nombre, apellido, dni, idUBIGEO, direccion, 
				fecnac, sexo, numeroCelular,numeroTelefono, idUsuario);
		
		this.mail = mail;
		this.usuario = usuario;
		this.pass = pass;
		this.imagen = imagen;
	}
	public Usuario()
	{
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getImagen() {
		return imagen;
	}


	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	public void mostrar() 
	{
		System.out.println(getMail());
	}
	
	
	
	
	
	
}

