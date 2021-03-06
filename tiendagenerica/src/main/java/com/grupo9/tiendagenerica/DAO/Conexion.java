package com.grupo9.tiendagenerica.DAO;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conexion {
	
	//Parametros de conexion
	static String nombre_base_datos = "g9e5";
	//root
	static String usuariobd = "admin";
	//clave
	static String clavebd = "minticroca";
	//Conexion localhost
	static String url = "jdbc:mariadb://tiendasgenericasdr-g9-g38-53.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/" + nombre_base_datos;
	
	//Objeto sin inicializar conexion
	Connection connection = null;
	
	//Constructor de Dbconnection
	public Conexion() {
		
		try {
			//Obtener el driver de para mysql
			Class.forName("org.mariadb.jdbc.Driver");
			//Obtener la conexion
			connection = DriverManager.getConnection(url, usuariobd, clavebd);
			//Si hay conextion correcta, mostrar informacion en consola
			if (connection != null) {
				System.out.println("Conexion a base de datos "
						+ nombre_base_datos + "OK\n");
			}
			
		} catch (SQLException e) {
			// Error en base de datos
			System.out.println(e);
			
		} catch (ClassNotFoundException e) {
			// Error en cargar clases
			System.out.println(e);
		}
		
		catch (Exception e) {
			// cualquier otro error
			System.out.println(e);
		}
		
	}
	
	//Permite retornar la conexion
	public Connection getConnection() {
		return connection;
	}
	
	//Cerrando la conexion
	public void desconectar() {
		connection = null;
	}
	
}
