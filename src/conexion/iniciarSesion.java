package conexion;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controlador.LlenarDatos;
import Controlador.Login;
import bean.beanUser;

/**
 * Servlet implementation class iniciarSesion
 */
@WebServlet("/iniciarSesion")
public class iniciarSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public iniciarSesion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("werwd working");
			String usuario= request.getParameter("user");
			String password=request.getParameter("pass");
			Login log = new Login();
			beanUser BeanUser = new beanUser();
			BeanUser.setUsuario(request.getParameter("user"));
			request.setAttribute("beanUser", BeanUser);
			String idTipo=log.idTipo(usuario);
			
			

			if(log.autenticacion(usuario, password))
			{	
				if(idTipo.equalsIgnoreCase("4")) 
				{
					request.getRequestDispatcher("menu-director.jsp").forward(request, response);
				}
				else 
				{
					request.getRequestDispatcher("menu.jsp").forward(request, response);
				}
				

			}else
			{
				response.sendRedirect("login.jsp");
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
