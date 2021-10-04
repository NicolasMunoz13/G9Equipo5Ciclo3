package com.grupo9.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo9.tiendagenerica.DAO.ProveedorDAO;
import com.grupo9.tiendagenerica.DTO.ProveedorVO;


@RestController
public class ProveedorController {

    /*
     * @GetMapping obtener o buscar
     * @PostMapping insertar o agregar
     * @PutMapping modificar o actualizar
     * @DeleteMapping eliminar o borrar
     * */

    @PostMapping("/registrarProveedor")
    public void registrarProveedor(ProveedorVO user) {
        ProveedorDAO Dao = new ProveedorDAO();
        Dao.registrarProveedor(user);
    }

    @GetMapping("/consultarproveedor")
    public ArrayList<ProveedorVO> consultarProveedor(Integer nitproveedor) {
        ProveedorDAO Dao = new ProveedorDAO();
        return Dao.consultarProveedor(nitproveedor);
    }

    @GetMapping("/listaproveedores")
    public ArrayList<ProveedorVO> listaDeProveedores(){
        ProveedorDAO Dao = new ProveedorDAO();
        return Dao.listaDeProveedores();
    }

    @DeleteMapping("/eliminarProveedor")
    public void eliminarProveedor(Integer nitproveedor){
        ProveedorDAO Dao = new ProveedorDAO();
        Dao.eliminarProveedor(nitproveedor);
    }

    @PutMapping("/actualizarProveedor")
    public void actualizarProveedor(ProveedorVO user) {
        ProveedorDAO Dao = new ProveedorDAO();
        Dao.actualizarProveedor(user);
    }

}
