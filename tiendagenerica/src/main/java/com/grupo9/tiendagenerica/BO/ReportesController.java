package com.grupo9.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo9.tiendagenerica.DAO.ClienteDAO;
import com.grupo9.tiendagenerica.DAO.DetalleVentasDAO;
import com.grupo9.tiendagenerica.DAO.UsuarioDAO;
import com.grupo9.tiendagenerica.DTO.ClienteVO;
import com.grupo9.tiendagenerica.DTO.DetalleVentasVO;
import com.grupo9.tiendagenerica.DTO.UsuarioVO;

public class ReportesController {
	
	@GetMapping("/listausuarios")
	public ArrayList<UsuarioVO> listaDeUsuarios(){
		UsuarioDAO Dao = new UsuarioDAO();
		return Dao.listaDeUsuarios();
	}
	
	@GetMapping("/listaclientes")
	public ArrayList<ClienteVO> listaDeClientes(){
		ClienteDAO Dao = new ClienteDAO();
		return Dao.listaDeClientes();
	}
	
	@GetMapping("/listadetalleventas")
	public ArrayList<DetalleVentasVO> listaDetalleVentas(){
		DetalleVentasDAO Dao = new DetalleVentasDAO();
		return Dao.listaDetalleVentas();
	}
	
}
