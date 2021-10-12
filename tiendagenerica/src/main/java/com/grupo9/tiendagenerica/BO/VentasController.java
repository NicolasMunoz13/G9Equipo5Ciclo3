package com.grupo9.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo9.tiendagenerica.DAO.VentasDAO;
import com.grupo9.tiendagenerica.DTO.VentasVO;



@RestController
public class VentasController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */
	
	@PostMapping("/registrarventa")
	public void registrarVenta(VentasVO codigo_venta) {
		VentasDAO Dao = new VentasDAO();
		Dao.registrarVenta(codigo_venta);
	}
	
	@GetMapping("/listaventas")
	public ArrayList<VentasVO> listaDeVentas(){
		VentasDAO Dao = new VentasDAO();
		return Dao.listaDeVentas();
	}

}
