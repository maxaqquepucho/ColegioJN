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


@ServerEndpoint( "/UsuarioWebSocket")
public class WebsocketAlumno {
	
	private static final List<Session> conectados = new ArrayList<>();
	
	@OnOpen
	public void inicio(Session session) {
		conectados.add(session);
		System.out.println("Esta conectado...");
	}
	
	@OnMessage
	public void mensaje(String mensaje, Session userSession) throws IOException {
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
