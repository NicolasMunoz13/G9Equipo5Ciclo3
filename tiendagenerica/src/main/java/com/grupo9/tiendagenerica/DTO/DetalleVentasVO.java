package com.grupo9.tiendagenerica.DTO;

import java.io.Serializable;

public class DetalleVentasVO implements Serializable{
	
	//identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private Integer codigo_detalle_venta;
	private Integer cantidad_producto1;
	private Integer cantidad_producto2;
	private Integer cantidad_producto3;
	private Integer codigo_producto1;
	private Integer codigo_producto2;
	private Integer codigo_producto3;
	private Integer codigo_venta;
	private Double valor_total1;
	private Double valor_total2;
	private Double valor_total3;
	/**
	 * @return the codigo_detalle_venta
	 */
	public Integer getCodigo_detalle_venta() {
		return codigo_detalle_venta;
	}
	/**
	 * @param codigo_detalle_venta the codigo_detalle_venta to set
	 */
	public void setCodigo_detalle_venta(Integer codigo_detalle_venta) {
		this.codigo_detalle_venta = codigo_detalle_venta;
	}
	/**
	 * @return the cantidad_producto1
	 */
	public Integer getCantidad_producto1() {
		return cantidad_producto1;
	}
	/**
	 * @param cantidad_producto1 the cantidad_producto1 to set
	 */
	public void setCantidad_producto1(Integer cantidad_producto1) {
		this.cantidad_producto1 = cantidad_producto1;
	}
	/**
	 * @return the cantidad_producto2
	 */
	public Integer getCantidad_producto2() {
		return cantidad_producto2;
	}
	/**
	 * @param cantidad_producto2 the cantidad_producto2 to set
	 */
	public void setCantidad_producto2(Integer cantidad_producto2) {
		this.cantidad_producto2 = cantidad_producto2;
	}
	/**
	 * @return the cantidad_producto3
	 */
	public Integer getCantidad_producto3() {
		return cantidad_producto3;
	}
	/**
	 * @param cantidad_producto3 the cantidad_producto3 to set
	 */
	public void setCantidad_producto3(Integer cantidad_producto3) {
		this.cantidad_producto3 = cantidad_producto3;
	}
	/**
	 * @return the codigo_producto1
	 */
	public Integer getCodigo_producto1() {
		return codigo_producto1;
	}
	/**
	 * @param codigo_producto1 the codigo_producto1 to set
	 */
	public void setCodigo_producto1(Integer codigo_producto1) {
		this.codigo_producto1 = codigo_producto1;
	}
	/**
	 * @return the codigo_producto2
	 */
	public Integer getCodigo_producto2() {
		return codigo_producto2;
	}
	/**
	 * @param codigo_producto2 the codigo_producto2 to set
	 */
	public void setCodigo_producto2(Integer codigo_producto2) {
		this.codigo_producto2 = codigo_producto2;
	}
	/**
	 * @return the codigo_producto3
	 */
	public Integer getCodigo_producto3() {
		return codigo_producto3;
	}
	/**
	 * @param codigo_producto3 the codigo_producto3 to set
	 */
	public void setCodigo_producto3(Integer codigo_producto3) {
		this.codigo_producto3 = codigo_producto3;
	}
	/**
	 * @return the codigo_venta
	 */
	public Integer getCodigo_venta() {
		return codigo_venta;
	}
	/**
	 * @param codigo_venta the codigo_venta to set
	 */
	public void setCodigo_venta(Integer codigo_venta) {
		this.codigo_venta = codigo_venta;
	}
	/**
	 * @return the valor_total1
	 */
	public Double getValor_total1() {
		return valor_total1;
	}
	/**
	 * @param valor_total1 the valor_total1 to set
	 */
	public void setValor_total1(Double valor_total1) {
		this.valor_total1 = valor_total1;
	}
	/**
	 * @return the valor_total2
	 */
	public Double getValor_total2() {
		return valor_total2;
	}
	/**
	 * @param valor_total2 the valor_total2 to set
	 */
	public void setValor_total2(Double valor_total2) {
		this.valor_total2 = valor_total2;
	}
	/**
	 * @return the valor_total3
	 */
	public Double getValor_total3() {
		return valor_total3;
	}
	/**
	 * @param valor_total3 the valor_total3 to set
	 */
	public void setValor_total3(Double valor_total3) {
		this.valor_total3 = valor_total3;
	}
		

}
