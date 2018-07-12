package com.colegio.controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.colegio.interfaz.UsuarioInterfaz;
import com.colegio.modelo.Usuario;
import com.colegio.mysql.UsuarioSQL;

/**
 * Servlet implementation class ServletPerfil
 */
@WebServlet("/ServletPerfil")
public class ServletPerfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPerfil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		Usuario usuario = (Usuario) session.getAttribute("usuario");
		UsuarioInterfaz usuarioSQL = new UsuarioSQL();
		if (usuario != null) {
			String accion = request.getParameter("accion");
			if (accion == "INS") {
				Usuario user2 = new Usuario();
				user2.setIdPersona(usuario.getIdPersona());
				user2.setNombre(request.getParameter("nombre"));
				user2.setApellido(request.getParameter("apellido"));
				user2.setDni(usuario.getDni());
				user2.setDireccion(request.getParameter("direccion"));
				user2.setFecnac(usuario.getFecnac());
				user2.setSexo(usuario.getSexo());
				user2.setNumeroCelular(request.getParameter("celular"));
				user2.setNumeroTelefono(request.getParameter("telefono"));
				user2.setMail(request.getParameter("mail"));
				user2.setUsuario(usuario.getUsuario());
				user2.setPass(usuario.getPass());
				user2.setImagen(usuario.getImagen());
				
				if (usuarioSQL.actualizar(user2)) {
					System.out.println("Se actualizo los Datos Correctamente");
					RequestDispatcher despachador = request.getRequestDispatcher("menuPerfil.jsp");
					despachador.forward(request, response);
				} else {
					System.out.println("Nose puedo Editar tus Datos: "+ usuario.getNombre());
				}
				
				
			} else {
				RequestDispatcher despachador = request.getRequestDispatcher("menuPerfil.jsp");
				despachador.forward(request, response);
				System.out.println("Llegaste con exito al ServletPerfil");
			}
			
		} else {
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
