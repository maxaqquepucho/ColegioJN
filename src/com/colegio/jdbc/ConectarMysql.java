package com.colegio.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class ConectarMysql {
	
	private Connection connection;
    private String url = "jdbc:mysql://localhost:3306/colegio";
    private String usuario = "root";
    private String contrase�a = "";
    
    public Connection getConnection(){
        return connection;
    }
    
    public void setConnection(Connection connection){
        this.connection = connection;
    }
    	
    public void establecerConexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection =  (Connection) DriverManager.getConnection(url, usuario, contrase�a);
            System.out.println("Conexion Exitosa");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConectarMysql.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        } catch (SQLException ex) {
            Logger.getLogger(ConectarMysql.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void cerrarConexion(){
        try {
            connection.close();
            System.out.println("Conexion cerrarda");
        } catch (SQLException e) {
            e.printStackTrace();
           
        }
    }
    
    public static void main (String []arg) 
    {
    	ConectarMysql CM = new ConectarMysql();
    	CM.establecerConexion();
    	CM.cerrarConexion();
    }
}