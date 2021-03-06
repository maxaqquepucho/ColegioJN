package com.colegio.controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.colegio.interfaz.LoginInterfaz;
import com.colegio.modelo.Usuario;
import com.colegio.mysql.LoginSQL;
import com.colegio.mysql.UsuarioSQL;


/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.sendRedirect("ServletUsuario");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");

		Usuario usuario = new Usuario();
		usuario.setUsuario(user);
		usuario.setPass(pass);
		LoginInterfaz loginSQL = new LoginSQL();
		
		if (loginSQL.iniciarSesion(usuario)) {
			 Usuario user2 = loginSQL.obtenerUsuario(usuario);
			 HttpSession session = request.getSession();
			//Usuario usuario = new Usuario();
			System.out.println(
					user2.getNombre() + " 1 \n" +
				    user2.getApellido()+" 2 \n"				
					);
			
			session.setAttribute("usuario", user2);
			
			session.setAttribute("sesionIniciada", "iniciada");
			RequestDispatcher despachador = request.getRequestDispatcher("ServletPerfil");
			despachador.forward(request, response);
			//
			
		}else {
			RequestDispatcher despachador = request.getRequestDispatcher("error.jsp");
			despachador.forward(request, response);
		}

	}

}
