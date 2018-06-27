package com.colegio.modelo;

public class Persona
{
	String idPersona;
	String idTipo;
	String nombre;
	String apellido;
	String dni;
	String idUBIGEO;
	String direccion;
	String fecnac;
	String sexo;
	String NumeroCelular;
	String NumeroTelefono;
	String idUsuario;
	
	
	
	public Persona(String idPersona, String idTipo, String nombre, String apellido, String dni, String idUBIGEO,
			String direccion, String fecnac, String sexo, String numeroCelular, String numeroTelefono,
			String idUsuario) {
		super();
		this.idPersona = idPersona;
		this.idTipo = idTipo;
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.idUBIGEO = idUBIGEO;
		this.direccion = direccion;
		this.fecnac = fecnac;
		this.sexo = sexo;
		NumeroCelular = numeroCelular;
		NumeroTelefono = numeroTelefono;
		this.idUsuario = idUsuario;
	}
	public String getIdPersona() {
		return idPersona;
	}
	public void setIdPersona(String idPersona) {
		this.idPersona = idPersona;
	}
	public String getIdTipo() {
		return idTipo;
	}
	public void setIdTipo(String idTipo) {
		this.idTipo = idTipo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getIdUBIGEO() {
		return idUBIGEO;
	}
	public void setIdUBIGEO(String idUBIGEO) {
		this.idUBIGEO = idUBIGEO;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getFecnac() {
		return fecnac;
	}
	public void setFecnac(String fecnac) {
		this.fecnac = fecnac;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getNumeroCelular() {
		return NumeroCelular;
	}
	public void setNumeroCelular(String numeroCelular) {
		NumeroCelular = numeroCelular;
	}
	public String getNumeroTelefono() {
		return NumeroTelefono;
	}
	public void setNumeroTelefono(String numeroTelefono) {
		NumeroTelefono = numeroTelefono;
	}
	public String getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}
	
	
}
