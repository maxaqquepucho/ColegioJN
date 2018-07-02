package com.colegio.websocket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.EncodeException;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.colegio.interfaz.UsuarioInterfaz;
import com.colegio.modelo.Usuario;
import com.colegio.mysql.UsuarioSQL;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


@ServerEndpoint( "/UsuarioWebSocket")
public class WebsocketUsuario {
	
	private static final List<Session> conectados = new ArrayList<>();
	
	@OnOpen
	public void inicio(Session session) {
		conectados.add(session);
		System.out.println("Esta conectado...");
	}
	
	@OnMessage
	public void mensaje(String mensaje, Session userSession) throws IOException {
		JsonParser parser = new JsonParser();
		JsonObject gson = parser.parse(mensaje).getAsJsonObject();
		
		String accion = gson.get("accion").getAsString();
		
		UsuarioInterfaz usuarioSQL = new UsuarioSQL();
		
		String idPersona = gson.get("idPersona").getAsString();
		
		
		switch (accion) {
		case "Agregar":
			Usuario usuario = new Usuario();
			String nombre = gson.get("nombre").getAsString();
			String apellido = gson.get("apellido").getAsString();
			String dni = gson.get("dni").getAsString();
			String direccion = gson.get("direccion").getAsString();
			String fechaNacimiento = gson.get("fechaNacimiento").getAsString();
			String sexo = gson.get("sexo").getAsString();
			String celular = gson.get("celular").getAsString();
			String telefono = gson.get("telefono").getAsString();
			String mail = gson.get("mail").getAsString();
			String user = gson.get("usuario").getAsString();
			String pass = gson.get("pass").getAsString();
			String imagen = gson.get("imagen").getAsString();
			String tipo = gson.get("tipo").getAsString();
			
			usuario.setIdTipo(tipo);
			usuario.setNombre(nombre);
			usuario.setApellido(apellido);
			usuario.setDni(dni);
			//usuario.setIdUBIGEO();
			usuario.setDireccion(direccion);
			usuario.setFecnac(fechaNacimiento);
			usuario.setSexo(sexo);
			usuario.setNumeroCelular(celular);
			usuario.setNumeroTelefono(telefono);
			usuario.setMail(mail);
			usuario.setUsuario(user);
			usuario.setPass(pass);
			usuario.setImagen(imagen);
			
			if (usuarioSQL.agregar(usuario)) {
				System.out.println("Se agrego exitosamente un usuario: "+ nombre);
				for(Session session : conectados) {
					session.getBasicRemote().sendText(mensaje);
					
				}
			} else {
				System.out.println("arror al agregar");
				 userSession.getBasicRemote().sendText("{\"accion\":\"alertaAgregar\"}");
				 
			}
			break;
		case "Eliminar":
				idPersona = gson.get("idPersona").getAsString();
				/*usuario = new Usuario();
				usuario.setIdPersona(idPersona);*/
				if (usuarioSQL.eliminar(idPersona)) {
					System.out.println("Se elimino un usuario satisfactoriamente: "+idPersona);
					for(Session session : conectados) {
						session.getBasicRemote().sendText(mensaje);
					}
				} else {
					System.out.println("arror al Eliminar");
					userSession.getBasicRemote().sendText("{\"accion\":\"alertaEliminar\"}");
				}
			break;
		case "Editar":
			
				 usuario = new Usuario();
				 idPersona = gson.get("idPersona").getAsString();
				 nombre = gson.get("nombre").getAsString();
				 apellido = gson.get("apellido").getAsString();
				 dni = gson.get("dni").getAsString();
				 direccion = gson.get("direccion").getAsString();
				 fechaNacimiento = gson.get("fechaNacimiento").getAsString();
				 sexo = gson.get("sexo").getAsString();
				 celular = gson.get("celular").getAsString();
				 telefono = gson.get("telefono").getAsString();
				 mail = gson.get("mail").getAsString();
				 user = gson.get("usuario").getAsString();
				 pass = gson.get("pass").getAsString();
				 imagen = gson.get("imagen").getAsString();
				 tipo = gson.get("tipo").getAsString();
				 
				 	usuario.setIdPersona(idPersona);
				    usuario.setIdTipo(tipo);
					usuario.setNombre(nombre);
					usuario.setApellido(apellido);
					usuario.setDni(dni);
					//usuario.setIdUBIGEO();
					usuario.setDireccion(direccion);
					usuario.setFecnac(fechaNacimiento);
					usuario.setSexo(sexo);
					usuario.setNumeroCelular(celular);
					usuario.setNumeroTelefono(telefono);
					usuario.setMail(mail);
					usuario.setUsuario(user);
					usuario.setPass(pass);
					usuario.setImagen(imagen);
					
					if (usuarioSQL.actualizar(usuario)) {
						System.out.println("Se edito un usuario satisfactoriamente:" +user);
						for(Session session : conectados) {
							session.getBasicRemote().sendText(mensaje);
						}
					} else {
						System.out.println("arror al Editar");
						 userSession.getBasicRemote().sendText("{\"accion\":\"alertaEditar\"}");
					}
				 
			break;
		default: System.out.println("No existe esta opcion");
			break;
		}
		
		System.out.println(mensaje);
	}
	
	@OnClose
	public void Salir(Session session) {
		conectados.remove(session);
		System.out.println("se desconecto la session : "+session);
	}
	
	@OnError
	public void handleError(Throwable t) {
		t.printStackTrace();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
