package conexion;

import java.sql.DriverManager;
import java.sql.SQLException;


import com.mysql.jdbc.Connection;

public class conexion  {
	
	private String user="root";
	private String password="";
	private String url="jdbc:mysql://localhost:3306/colegio";
	private String Classname="org.gjt.mm.mysql.Driver";
	private Connection con;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public conexion() 
    {
    	try
    	{
			Class.forName(Classname);
			con=(Connection) DriverManager.getConnection(url, user, password);
			System.out.println("Conexion Exitosa\n");
			
		} catch (SQLException e1) 
    	{
			e1.printStackTrace();
		}
        catch (ClassNotFoundException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
    }
    public Connection getConexion() {return con;}


}


