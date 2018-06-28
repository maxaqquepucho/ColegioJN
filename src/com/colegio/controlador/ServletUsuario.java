package com.colegio.controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.colegio.interfaz.UsuarioInterfaz;
import com.colegio.modelo.Persona;
import com.colegio.modelo.Usuario;
import com.colegio.mysql.UsuarioSQL;


/**
 * Servlet implementation class ServletUsuario
 */
@WebServlet("/ServletUsuario")
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		UsuarioInterfaz user = new UsuarioSQL(); 
		
		Usuario usuario = (Usuario) session.getAttribute("usuario");
		
		if (usuario != null) {
		
		try {
				List<Usuario> lista = user.mostrar();
				if (lista != null) {
					request.setAttribute("lista", lista);
					System.out.println("La lista no es null");
				} else {
					System.out.println("No Existe ninguna lita o probablemente hay un error");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				System.out.println("Se realizo correctamente en envio del listado de persona - ServletPersona");
			}
			
			RequestDispatcher despachador = request.getRequestDispatcher("TablaPersona.jsp");
		despachador.forward(request, response);
			System.out.println("Llegaste con exito al ServletPersona");
	}else {
		RequestDispatcher despachador = request.getRequestDispatcher("error.jsp");
		despachador.forward(request, response);
	}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
