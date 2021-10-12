package com.grupo9.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.grupo9.tiendagenerica.DTO.VentasVO;

public class VentasDAO {
	
	public void registrarVenta(VentasVO codigo_venta) {
		//Llamar y crear una instancia de la clase encargada de hacer la conexion
		Conexion conex = new Conexion();
		
		try {
			//Sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();
			
			//String que contiene la sentencia insert a ejecutar
			String sentencia = "INSERT INTO ventas VALUES(" 
					+ codigo_venta.getCodigo_venta() + "," + "'"
					+ codigo_venta.getCedula_cliente() + "'," + "'" 
					+ codigo_venta.getIvaventa() + "'," + "'" 
					+ codigo_venta.getTotal_venta()+ "'," + "'" 
					+ codigo_venta.getValor_venta() + "'" 
					+ ");";
			
			//Ejecutar la sentencia de la base de datos
			estatuto.executeUpdate(sentencia);
			//Impresion en consola para verificacion
			System.out.println("Registrado " + sentencia);
			//Cerrar la sentencia y conexion
			estatuto.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay error en SQL mstrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Si hay cualquier otro error mostarlo
			System.out.println("No se pudo insertar la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

}
	
	public ArrayList<VentasVO> listaDeVentas(){
		//Lista que contendra el o los clientes
		ArrayList<VentasVO> listaventas = new ArrayList<VentasVO>();
		
		//Instancia de la conexion
		Conexion conex = new Conexion();
		
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM ventas");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				VentasVO Venta = new VentasVO();
				Venta.setCodigo_venta(Integer.parseInt(res.getString("codigo_venta")));
				Venta.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				Venta.setIvaventa(Double.parseDouble(res.getString("ivaventa")));
				Venta.setTotal_venta(Double.parseDouble(res.getString("total_venta")));
				Venta.setValor_venta(Double.parseDouble(res.getString("valor_venta")));
				
				listaventas.add(Venta);				
			}
			
			//Cerrar resultado, sentencia y conexion
			res.close();
			consulta.close();
			conex.desconectar();
			
		} catch (SQLException e) {
			// Si hay erroe en sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todas la ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Mostar cualquier otro error
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todas las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		
		return listaventas;
	}
}
