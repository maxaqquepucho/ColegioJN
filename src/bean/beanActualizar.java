package bean;

import java.sql.Date;
import Controlador.Actualizar;

public class beanActualizar
{	
	String nombre;
	String apellido;
	Date fecnac;
	String DNI;
	String numCel;
	String numTelf;
	String idUBIGEO;
	String direccion;
	String tipo;
	String sexo;
	String idPersona;
	
	public String getIdPersona() {
		return idPersona;
	}
	public void setIdPersona(String idPersona) {
		this.idPersona = idPersona;
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
	
	public void mostrar() 
	{
		System.out.println(getNombre()+" "+getApellido()+" "+getDNI()+" "+getNumCel()+" "+getNumTelf()+" "+getDireccion()+" "+getFecnac()+" "+getTipo()+" "+getSexo());
	}
	public void Actualizar() 
	{
		Actualizar act = new Actualizar();
		act.Modificar(getIdPersona(), getTipo(), getNombre(), getApellido(), getDNI(), 
				getIdUBIGEO(), getDireccion(), getFecnac(), getSexo(), getNumCel(), getNumTelf());
		
	}
}
