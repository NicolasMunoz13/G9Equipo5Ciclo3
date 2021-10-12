package com.grupo9.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.grupo9.tiendagenerica.DTO.DetalleVentasVO;

public class DetalleVentasDAO {
	
	public void registrarDetalleVenta(DetalleVentasVO codigo_detalle_venta) {
		//Llamar y crear una instancia de la clase encargada de hacer la conexion
		Conexion conex = new Conexion();
		
		try {
			//Sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();
			
			//String que contiene la sentencia insert a ejecutar
			String sentencia = "INSERT INTO detalleVentas VALUES(" 
					+ codigo_detalle_venta.getCodigo_detalle_venta() + "," + "'"
					+ codigo_detalle_venta.getCantidad_producto1() + "'," + "'"
					+ codigo_detalle_venta.getCantidad_producto2() + "'," + "'"
					+ codigo_detalle_venta.getCantidad_producto3() + "'," + "'"
					+ codigo_detalle_venta.getCodigo_producto1() + "'," + "'"
					+ codigo_detalle_venta.getCodigo_producto2() + "'," + "'"
					+ codigo_detalle_venta.getCodigo_producto3() + "'," + "'"
					+ codigo_detalle_venta.getCodigo_venta()+ "'," + "'"
					+ codigo_detalle_venta.getValor_total1()+ "'," + "'"
					+ codigo_detalle_venta.getValor_total2()+ "'," + "'"
					+ codigo_detalle_venta.getValor_total3()+ "'" 
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
			System.out.println("No se pudo insertar el detalle de la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} 
		catch (Exception e) {
			// Si hay cualquier otro error mostarlo
			System.out.println("No se pudo insertar el detalle la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

}
	
	public ArrayList<DetalleVentasVO> listaDetalleVentas(){
		//Lista que contendra el o los clientes
		ArrayList<DetalleVentasVO> listadetalleventas = new ArrayList<DetalleVentasVO>();
		
		//Instancia de la conexion
		Conexion conex = new Conexion();
		
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM detalleVentas");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				DetalleVentasVO Detalle = new DetalleVentasVO();
				Detalle.setCodigo_detalle_venta(Integer.parseInt(res.getString("codigo_detalle_venta")));
				Detalle.setCantidad_producto1(Integer.parseInt(res.getString("cantidad_producto1")));
				Detalle.setCantidad_producto2(Integer.parseInt(res.getString("cantidad_producto2")));
				Detalle.setCantidad_producto3(Integer.parseInt(res.getString("cantidad_producto3")));
				Detalle.setCodigo_producto1(Integer.parseInt(res.getString("codigo_producto1")));
				Detalle.setCodigo_producto2(Integer.parseInt(res.getString("codigo_producto2")));
				Detalle.setCodigo_producto3(Integer.parseInt(res.getString("codigo_producto3")));
				Detalle.setCodigo_venta(Integer.parseInt(res.getString("codigo_venta")));
				Detalle.setValor_total1(Double.parseDouble(res.getString("valor_total1")));
				Detalle.setValor_total2(Double.parseDouble(res.getString("valor_total2")));
				Detalle.setValor_total3(Double.parseDouble(res.getString("valor_total3")));
				
				listadetalleventas.add(Detalle);
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
		
		return listadetalleventas;
	}
	
}