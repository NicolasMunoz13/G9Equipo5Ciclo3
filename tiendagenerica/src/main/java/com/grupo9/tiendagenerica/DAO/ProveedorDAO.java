package com.grupo9.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.grupo9.tiendagenerica.DTO.ProveedorVO;

//Clase para generar el acceso a la base de datos
public class ProveedorDAO {
	
	public void registrarProveedor(ProveedorVO user) {
		//Llamar y crear una instancia de la clase encargada de hacer la conexion
		Conexion conex = new Conexion();
		
		try {
			//Sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();
			
			//String que contiene la sentencia insert a ejecutar
			String sentencia = "INSERT INTO proveedores VALUES(" 
					+ user.getNitproveedor() + "," + "'"
					+ user.getCiudad_proveedor() + "'," + "'" 
					+ user.getDireccion_proveedor() + "'," + "'" 
					+ user.getNombre_proveedor()+ "'," + "'" 
					+ user.getTelefono_proveedor() + "'" 
					+ ");";
			
			//Ejecutar la sentencia de la base de datos
			estatuto.executeUpdate(sentencia);
			//Impresion en consola para verificacion
			System.out.println("Registrado " + sentencia);
			//Cerrar la sentencia y conexion
			estatuto.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay error en SQL mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Si hay cualquier otro error mostarlo
			System.out.println("No se pudo insertar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}
	
	
	//Permite consultar el usuario asociado al user enviado como parametro
	public ArrayList<ProveedorVO> consultarProveedor(Integer nitproveedor){
		//Lista que contendra el o los usuarios obtenidos
		ArrayList<ProveedorVO> listaproveedores = new ArrayList<ProveedorVO>();
		//Instancia de la conexion
		Conexion conex = new Conexion();
		
		try {
			//Preparar la sentenca en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM proveedores where nitproveedor = ? ");
			//Se cambia el comodin ? por el dato que ha llegado en el parametro de la funcion
			consulta.setInt(1, nitproveedor);
			//Ejecutar la sentencia
			ResultSet res = consulta.executeQuery();
			//Crear un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				ProveedorVO Proveedor = new ProveedorVO();
				Proveedor.setNitproveedor(Integer.parseInt(res.getString("integer nitproveedor")));
				Proveedor.setCiudad_proveedor(res.getString("ciudad_proveedor"));
				Proveedor.setDireccion_proveedor(res.getString("direccion_Proveedor"));
				Proveedor.setNombre_proveedor(res.getString("nombre_proveedor"));
				Proveedor.setTelefono_proveedor(res.getString("telefono_proveedor"));
				
				listaproveedores.add(Proveedor);
			}
			//Cerrar resultado, sentencia y conexion
			res.close();
			consulta.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay erroe en sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Mostar cualquier otro error
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaDeProveedores();
	}
	
	//Permite consultar la lista de todos los Proveedors
	public ArrayList<ProveedorVO> listaDeProveedores(){
		//Lista que contendra el o los Proveedors
		ArrayList<ProveedorVO> listaProveedores = new ArrayList<ProveedorVO>();
		
		//Instancia de la conexion
		Conexion conex = new Conexion();
		
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM proveedores");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				ProveedorVO Proveedor = new ProveedorVO();
				Proveedor.setNitproveedor(Integer.parseInt(res.getString("nitproveedor")));
				Proveedor.setCiudad_proveedor(res.getString("ciudad_proveedor"));
				Proveedor.setDireccion_proveedor(res.getString("direccion_Proveedor"));
				Proveedor.setNombre_proveedor(res.getString("nombre_proveedor"));
				Proveedor.setTelefono_proveedor(res.getString("telefono_proveedor"));
				
				listaProveedores.add(Proveedor);				
			}
			
			//Cerrar resultado, sentencia y conexion
			res.close();
			consulta.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay erroe en sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los Proveedors");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Mostar cualquier otro error
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los Proveedors");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		
		return listaProveedores;
	}
	

	//Permite la eliminacion de un Proveedor
	public void eliminarProveedor(Integer nitproveedor){
		
		//Instancia de la conexion
		Conexion conex = new Conexion();
		
		try {
			//Sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "DELETE from Proveedors where nitproveedor=" + nitproveedor + ";";
			
			//Impresion de verificacion
			System.out.println("Registrado " + sentencia);
			
			//Ejecutando la sentencia en la base de datos
			consulta.execute(sentencia);
			
			//Cerrando sentencia y conexion
			consulta.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay erroe en sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Mostar cualquier otro error
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}
	
	public void actualizarProveedor(ProveedorVO user) {
		
		//Instancia de conexion
		Conexion conex = new Conexion();
		
		try {
			//Inicializando la sentencia
			Statement estatuto = conex.getConnection().createStatement();
			
			//String con la sentencia a ejecutar
			String sentencia = "UPDATE Proveedores "
					+ "SET telefono_proveedor = '"+user.getNitproveedor()+"',"
					+ "ciudad_proveedor = '"+user.getCiudad_proveedor()+"',"
					+ "direccion_proveedor = '"+user.getDireccion_proveedor()+"',"
					+ "nombre_proveedor = '"+user.getNombre_proveedor()+"' "
					+ "WHERE nitproveedor = "+user.getTelefono_proveedor()+";";
			
			//ejecutando la sentencia
			estatuto.executeUpdate(sentencia);
			
			//Verificacion por consolta de la sentencia
			System.out.println("Registrado " + sentencia);
			
			//Cerrando sentencia y conexion
			estatuto.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay erroe en sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Mostar cualquier otro error
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar el Proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}

}

