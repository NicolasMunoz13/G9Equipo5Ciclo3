package com.grupo9.tiendagenerica.DTO;

import java.io.Serializable;

public class ProveedorVO implements Serializable {
	
	//identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private Integer nitproveedor;
	private String ciudad_proveedor;
	private String direccion_proveedor;
	private String nombre_proveedor;
	private String telefono_proveedor;
	/**
	 * @return the nitproveedor
	 */
	public Integer getNitproveedor() {
		return nitproveedor;
	}
	/**
	 * @param nitproveedores the nitproveedor to set
	 */
	public void setNitproveedor(Integer nitproveedor) {
		this.nitproveedor = nitproveedor;
	}
	/**
	 * @return the ciudad_proveedor
	 */
	public String getCiudad_proveedor() {
		return ciudad_proveedor;
	}
	/**
	 * @param ciudad_proveedor the ciudad_proveedor to set
	 */
	public void setCiudad_proveedor(String ciudad_proveedor) {
		this.ciudad_proveedor = ciudad_proveedor;
	}
	/**
	 * @return the direccion_cliente
	 */
	public String getDireccion_proveedor() {
		return direccion_proveedor;
	}
	/**
	 * @param direccion_cliente the direccion_cliente to set
	 */
	public void setDireccion_proveedor(String direccion_proveedor) {
		this.direccion_proveedor = direccion_proveedor;
	}
	/**
	 * @return the nombre_proveedor
	 */
	public String getNombre_proveedor() {
		return nombre_proveedor;
	}
	/**
	 * @param nombre_proveedor the nombre_proveedor to set
	 */
	public void setNombre_proveedor(String nombre_proveedor) {
		this.nombre_proveedor = nombre_proveedor;
	}
	/**
	 * @return the telefono_proveedor
	 */
	public String getTelefono_proveedor() {
		return telefono_proveedor;
	}
	/**
	 * @param telefono_proveedor the telefono_proveedor to set
	 */
	public void setTelefono_proveedor(String telefono_proveedor) {
		this.telefono_proveedor = telefono_proveedor;
	}
	
	

}
