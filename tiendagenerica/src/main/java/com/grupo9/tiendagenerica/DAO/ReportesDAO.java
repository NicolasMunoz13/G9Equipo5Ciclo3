package com.grupo9.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.grupo9.tiendagenerica.DTO.ClienteVO;
import com.grupo9.tiendagenerica.DTO.UsuarioVO;

public class ReportesDAO {

	
	public ArrayList<ClienteVO> listaDeClientes(){
		//Lista que contendra el o los clientes
		ArrayList<ClienteVO> listaclientes = new ArrayList<ClienteVO>();
		
		//Instancia de la conexion
		Conexion conex = new Conexion();
		
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM clientes");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				ClienteVO Cliente = new ClienteVO();
				Cliente.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				Cliente.setNombre_cliente(res.getString("nombre_cliente"));
				Cliente.setDireccion_cliente(res.getString("direccion_cliente"));
				Cliente.setTelefono_cliente(res.getString("telefono_cliente"));
				Cliente.setEmail_cliente(res.getString("email_cliente"));
				
				listaclientes.add(Cliente);				
			}
			
			//Cerrar resultado, sentencia y conexion
			res.close();
			consulta.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay erroe en sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los clientes");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Mostar cualquier otro error
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los clientes");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		
		return listaclientes;
	}
	
	public ArrayList<UsuarioVO> listaDeUsuarios(){
		//Lista que contendra el o los usuarios
		ArrayList<UsuarioVO> listausuarios = new ArrayList<UsuarioVO>();
		
		//Instancia de la conexion
		Conexion conex = new Conexion();
		
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				UsuarioVO Usuario = new UsuarioVO();
				Usuario.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
				Usuario.setEmail_usuario(res.getString("email_usuario"));
				Usuario.setNombre_usuario(res.getString("nombre_usuario"));
				Usuario.setPassword(res.getString("password"));
				Usuario.setUsuario(res.getString("usuario"));

				listausuarios.add(Usuario);
			}
			
			//Cerrar resultado, sentencia y conexion
			res.close();
			consulta.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay erroe en sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los usuarios");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Mostar cualquier otro error
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los usuarios");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		
		return listausuarios;
	}
	
	
	
	
}
