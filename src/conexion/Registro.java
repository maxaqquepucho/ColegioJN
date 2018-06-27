package conexion;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controlador.LlenarDatos;
import Controlador.Registrar;
import bean.beanRegistrar;

/**
 * Servlet implementation class Registro
 */
@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registro() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter salida = response.getWriter();
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String email=request.getParameter("email");
		String DNI=request.getParameter("DNI");
		String numcel=request.getParameter("numcel");
		String numtel=request.getParameter("numtel");
		String direc=request.getParameter("direc");
		Date fecnac=Date.valueOf(request.getParameter("fecnac"));
		String tipo=request.getParameter("tipo");
		String sexo=request.getParameter("sexo");
		String imagen=request.getParameter("imagen");
		
		String usuario=request.getParameter("usuario");
		String contrasenia=request.getParameter("contrasenia");
		String confcontrasenia=request.getParameter("confcontrasenia");
		
		beanRegistrar BeanRegistrar = new beanRegistrar();
		BeanRegistrar.setNombre(nombre);
		BeanRegistrar.setApellido(apellido);
		BeanRegistrar.setDNI(DNI);
		BeanRegistrar.setNumCel(numcel);
		BeanRegistrar.setNumTelf(numtel);
		BeanRegistrar.setDireccion(direc);
		BeanRegistrar.setFecnac(fecnac);
		BeanRegistrar.setTipo(tipo);
		BeanRegistrar.setSexo(sexo);
		BeanRegistrar.setLinkimagen(imagen);
		
		BeanRegistrar.setEmail(email);
		BeanRegistrar.setUsuario(usuario);
		BeanRegistrar.setContrasenia(contrasenia);
		BeanRegistrar.setConfcontrasenia(confcontrasenia);
		
		BeanRegistrar.mostrar();
		BeanRegistrar.registrar();
		
		/*Registrar reg = new Registrar();
		
		if(reg.registrar(mail, usuario, contrasenia)) 
		{
			response.sendRedirect("menu.jsp");
		}else 
		{
			response.sendRedirect("Registrar.jsp");
		}*/

		 response.sendRedirect("http://localhost:8080/ColegioA/login.jsp");
		
	}

}
