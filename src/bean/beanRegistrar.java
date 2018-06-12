package bean;

import java.sql.Date;

public class beanRegistrar 
{
	String nombre;
	String apellido;
	String email;
	Date fecnac;
	String DNI;
	String numCel;
	String numTelf;
	String direccion;
	String tipo;
	String sexo;
	String linkimagen;
	String usuario;
	String contrasenia;
	String confcontrasenia;
	
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getFecnac() {
		return fecnac;
	}
	public void setFecnac(Date fecnac) {
		this.fecnac = fecnac;
	}
	public String getDNI() {
		return DNI;
	}
	public void setDNI(String dNI) {
		DNI = dNI;
	}
	public String getNumCel() {
		return numCel;
	}
	public void setNumCel(String numCel) {
		this.numCel = numCel;
	}
	public String getNumTelf() {
		return numTelf;
	}
	public void setNumTelf(String numTelf) {
		this.numTelf = numTelf;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getLinkimagen() {
		return linkimagen;
	}
	public void setLinkimagen(String linkimagen) {
		this.linkimagen = linkimagen;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getContrasenia() {
		return contrasenia;
	}
	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}
	public String getConfcontrasenia() {
		return confcontrasenia;
	}
	public void setConfcontrasenia(String confcontrasenia) {
		this.confcontrasenia = confcontrasenia;
	}
	
	public void mostrar() 
	{
		System.out.println(getNombre()+" "+getApellido()+" "+getEmail()+" "+getDNI()+" "+getNumCel()+" "+getNumTelf()+" "+getDireccion()+" "+getFecnac()+" "+getTipo()+" "+getSexo()+" "+getLinkimagen()
		+" "+getUsuario()+" "+getContrasenia()+" "+getConfcontrasenia());
	}
	
	
	
}
