package conexion;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.beanActualizar;

/**
 * Servlet implementation class actualizar
 */
@WebServlet("/actualizar")
public class actualizar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public actualizar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		 int idTipo=0;
		 String  Nombre="", Apellido="", DNI="", idUBIGEO="", Direccion="", Sexo="", NumeroCelular="", NumeroTelefono="";
		 
		 idTipo=Integer.parseInt(request.getParameter("idTipo"));
		 Nombre=request.getParameter("Nombre");
		 Apellido=request.getParameter("Apellido");
		 DNI=request.getParameter("DNI");
		 idUBIGEO=request.getParameter("idUBIGEO");
		 Direccion=request.getParameter("idUBIGEO");
		 Date fecnac=Date.valueOf(request.getParameter("fecNac"));
		 Sexo=request.getParameter("Sexo");
		 NumeroCelular=request.getParameter("NumeroCelular");
		 NumeroTelefono=request.getParameter("NumeroTelefono");
		 
		 beanActualizar BeanActualizar = new beanActualizar();
		 BeanActualizar.setTipo(String.valueOf(idTipo));
		 BeanActualizar.setNombre(Nombre);
		 BeanActualizar.setApellido(Apellido);
		 BeanActualizar.setDNI(DNI);
		 BeanActualizar.setIdUBIGEO(idUBIGEO);
		 BeanActualizar.setDireccion(Direccion);
		 BeanActualizar.setFecnac(fecnac);
		 BeanActualizar.setSexo(Sexo);
		 BeanActualizar.setNumCel(NumeroCelular);
		 BeanActualizar.setNumTelf(NumeroTelefono);
		 
		 BeanActualizar.mostrar();
	}

}
