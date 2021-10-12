package com.grupo9.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo9.tiendagenerica.DAO.DetalleVentasDAO;
import com.grupo9.tiendagenerica.DTO.DetalleVentasVO;

@RestController
public class DetalleVentasController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */
	
	@PostMapping("/registrardetalleventa")
	public void registrarDetalleVenta(DetalleVentasVO codigo_detalle_venta) {
		DetalleVentasDAO Dao = new DetalleVentasDAO();
		Dao.registrarDetalleVenta(codigo_detalle_venta);
		
	}
	
	@GetMapping("/listadetalleventas")
	public ArrayList<DetalleVentasVO> listaDetalleVentas(){
		DetalleVentasDAO Dao = new DetalleVentasDAO();
		return Dao.listaDetalleVentas();
	}

}
