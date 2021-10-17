<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ventas</title>
	
  <!-- Estilos Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	 crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	 crossorigin="anonymous">
	</script>
	

	<!--- estilos --->
	<link href="purchasestyle.css" rel="stylesheet" type="text/css" />
	<!--- CDN --->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	 crossorigin="anonymous" referrerpolicy="no-referrer">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>

<body>
	
	<!-- Titulo -->
	<h2>
		<div class="sticky-lg-top">Tienda de Prodcutos</div>
	</h2>

	<!-- Barra de Navegacion -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<span class="navbar-brand" href="#">
				<h3>Módulos</h3>
			</span>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="listausuarios.jsp"><h3>Usuarios</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="listaclientes.jsp"><h3>Clientes</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="listaproveedores.jsp"><h3>Proveedores</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="listaproductos.jsp"><h3>Productos</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="calculoventas.jsp"><h3><i class="fas fa-dollar-sign"></i>Ventas</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="reportes.jsp"><h3>Reportes</h3></a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Zona de ingreso de ingreso de informacion -->
<div class="full-form">
  <center>
  <form id="form-prodcut"  type="" method="">

    		<h1>
			<i class="fas fa-file-invoice"></i> Consulta el total a pagar
		</h1>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error en la consulta. Numero de Identificación no encontrado</div>
				
			<div id="error2" class="alert alert-danger visually-hidden"
				role="alert">Ingrese la cantidad a comprar</div>
				
			<div id="error3" class="alert alert-danger visually-hidden"
				role="alert">Numero Consecutivo ya existe</div>
				
			<div id="error4" class="alert alert-danger visually-hidden"
				role="alert">Numero de venta ya existe</div>	
				
			<div id="error5" class="alert alert-danger visually-hidden"
				role="alert">Ingrese el codigo de venta</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Consulta encontrada</div>
				
			<div id="correcto2" class="alert alert-success visually-hidden"
				role="alert">Venta Registrada</div>
			
			<div id="correcto3" class="alert alert-success visually-hidden"
				role="alert">Detalle de Venta confirmanda</div>
  

  <div class="column">
     <div id="form-input">

       <div class="row">
  <div class="col"><div class="form-floating">      
        <input type="text" class="form-control" class="input-field" id="cedula_cliente" id="form-floating " placeholder=" Cedula" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-id-card"></i>&nbsp&nbspCedula Cliente</label>
	      </div></div>
  <div class="col"><button type="button" class="btn btn-info"
						onclick="consultarCliente()"><i class="fas fa-user"></i>&nbsp&nbspColsultar Cliente</button></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="nombre_cliente" id="form-floating " placeholder="Nombre Cliente" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Nombre Cliente" required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-user"></i>&nbsp&nbspCliente</label>
      </div></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="consecutivo" id="form-floating " placeholder="Consecutivo" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Nombre Cliente" required>
        <label for="form-floating">Consecutivo</label>
      </div></div>

    <div class="row">
  <div class="col grid no-grid-right grid-brackground" style="margin-left:12px">Codigo Producto</div>
  <div class="col grid no-grid-left grid-brackground"></div>
  <div class="col grid grid-brackground">Nombre Producto</div>
  <div class="col grid grid-brackground">Precio Unitario</div>
  <div class="col grid grid-brackground">Cantidad</div>
  <div class="col grid grid-brackground">Valor Total</div>
  <div class="w-100"></div>
  <div class="col"><div class="form-floating grid-left">
        <input type="text" class="form-control"  id="producto1" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" required>
        <label for="form-floating" style="font-size:12px;">Ingresa el numero de producto</label>
      </div></div>
  <div class="col"><button style = "font-size:15px;" type="button" class="btn btn-success"
						onclick="consultarProducto1()"><i class="fas fa-shopping-basket"></i>&nbsp&nbspColsultar Producto</button></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="result1" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" disabled>
        <label for="form-floating" style="font-size:12px;">Producto</label>
      </div></div>
   <div class="col"><div class="form-floating">
      <input type="text" class="form-control"  id="value1" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" disabled>
        <label for="form-floating" style="font-size:12px;">Precio Unitario</label>
      </div></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="quantity1" id="form-floating " placeholder="Cantidad" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Cantidad" required>
        <label for="form-floating" style="font-size:12px;">Ingresa la cantidad</label>
      </div></div>
  <div class="col padding-right"><div class="form-floating grid-right">
        <input type="text" class="form-control"  id="total1" id="form-floating " placeholder="Total" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Total" disabled>
        <label for="form-floating" style="font-size:12px;">Total</label>
      </div></div>
  <div class="w-100"></div>
  <div class="col"><div class="form-floating grid-left">
        <input type="text" class="form-control"  id="producto2" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" required>
        <label for="form-floating" style="font-size:12px;">Ingresa el numero de producto</label>
      </div></div>
  <div class="col"><button style = "font-size:15px;" type="button" class="btn btn-success"
						onclick="consultarProducto2()"><i class="fas fa-shopping-basket"></i>&nbsp&nbspColsultar Producto</button></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="result2" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" disabled>
        <label for="form-floating" style="font-size:12px;">Producto</label>
      </div></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="value2" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" disabled>
        <label for="form-floating" style="font-size:12px;">Precio Unitario</label>
      </div></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="quantity2" id="form-floating " placeholder="Cantidad" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Cantidad" required>
        <label for="form-floating" style="font-size:12px;">Ingresa la cantidad</label>
      </div></div>
  <div class="col padding-right"><div class="form-floating grid-right">
        <input type="text" class="form-control"  id="total2" id="form-floating " placeholder="Total" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Total" disabled>
        <label for="form-floating" style="font-size:12px;">Total</label>
      </div></div>
  <div class="w-100"></div>
  <div class="col"><div class="form-floating grid-left">
        <input type="text" class="form-control"  id="producto3" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" required>
        <label for="form-floating" style="font-size:12px;">Ingresa el numero de producto</label>
      </div></div>
  <div class="col"><button style = "font-size:15px;" type="button" class="btn btn-success"
						onclick="consultarProducto3()"><i class="fas fa-shopping-basket"></i>&nbsp&nbspColsultar Producto</button></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="result3" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" disabled>
        <label for="form-floating" style="font-size:12px;">Producto</label>
      </div></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="value3" id="form-floating " placeholder="Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Producto1" disabled>
        <label for="form-floating" style="font-size:12px;">Precio Unitario</label>
      </div></div>
  <div class="col"><div class="form-floating">
        <input type="text" class="form-control"  id="quantity3" id="form-floating " placeholder="Cantidad" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Cantidad" required>
        <label for="form-floating" style="font-size:12px;">Ingresa la cantidad</label>
      </div></div>
  <div class="col padding-right"><div class="form-floating grid-right">
        <input type="text" class="form-control"  id="total3" id="form-floating " placeholder="Total" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Total" disabled>
        <label for="form-floating" style="font-size:12px;">Total</label>
      </div></div>
      <div class="w-100"></div>
  <div class="col grid-left" style="margin-left:12px"></div>
  <div class="col"></div>
  <div class="col"><button style = "font-size:15px;" type="button" class="btn btn-success"
						onclick="calcularTotal()"><i class="fas fa-check"></i>&nbsp&nbspCalcular Total</button></div>
  <div class="col center">Total Venta</div>
  <div class="col padding-right"><div class="form-floating grid-right style="height: 98px;"">
        <input type="text" class="form-control"  id="total_purchase" id="form-floating " placeholder="total_purchase" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Total" disabled>
      </div></div>
<div class="w-100"></div>
  <div class="col grid-left" style="margin-left:12px"></div>
  <div class="col"></div>
  <div class="col"><button style = "font-size:15px;" type="button" class="btn btn-success"
						onclick="registrarTotal()"><i class="fas fa-check"></i>&nbsp&nbspConfirmar Compra</button><button style = "font-size:15px;" type="button" class="btn btn-success"
						onclick="registrardetalle()"><i class="fas fa-check"></i>&nbsp&nbspDetalles de Compra</button></div>
  <div class="col center">Total IVA</div>
  <div class="col padding-right"><div class="form-floating grid-right" style="height: 98px;">
        <input type="text" class="form-control"  id="total_tax" id="form-floating " placeholder="total_tax" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Total" disabled>
      </div></div>

      <div class="w-100"></div>
  <div class="col grid-left grid-button" style="margin-left:12px"></div>
  <div class="col grid-button"></div>
  <div class="col grid-button"><button style = "font-size:15px;" type="button" class="btn btn-success"
						onclick="window.location.href='<%=request.getContextPath()%>/listaventas.jsp'"><i class="fas fa-check"></i>&nbsp&nbspConsultar Ventas</button></div>
  <div class="col grid-button center"><span>Total con IVA</span></div>
  <div class="col grid-button padding-right"><div class="form-floating grid-right style="height: 98px;"">
        <input type="text" class="form-control"  id="total_final" id="form-floating " placeholder="total_final" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Total" disabled>
      </div></div>

</div>  
</div>



    </div>
  
</div>


  </form>
</center>

</div>

<script>
function consultarCliente() {
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
			+ getUrl.pathname.split('/')[1];
	
	var req = new XMLHttpRequest();
	var coincidencia = false;
	var cedula = document.getElementById("cedula_cliente").value;
	req.open('GET', baseUrl+'/consultarcliente?cedula_cliente='+cedula, false);
	req.send(null);
	var cliente = null;
	if (req.status == 200)
		cliente = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
	
	var element = document.getElementById("error");
	element.classList.add("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.remove("visually-hidden");
	
	console.log(cliente.toString());
	
if (cliente.toString()!=""){

	document.getElementById("nombre_cliente").value = cliente[0].nombre_cliente;


} else {
	var element = document.getElementById("error");
	element.classList.remove("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.add("visually-hidden");
	document.getElementById("cedula_cliente").value = "";
	document.getElementById("nombre_cliente").value = "";

}
}

function consultarProducto1() {
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
			+ getUrl.pathname.split('/')[1];
	
	var req = new XMLHttpRequest();
	var coincidencia = false;
	var codigo=   document.getElementById("producto1").value;
	req.open('GET', baseUrl+'/consultarproducto?codigo_producto='+codigo, false);
	req.send(null);
	var producto = null;
	if (req.status == 200)
		producto = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));
	


	var element = document.getElementById("error");
	element.classList.add("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.remove("visually-hidden");
	
	console.log(producto.toString());
	
if (producto.toString()!=""){

	document.getElementById("result1").value = producto[0].nombre_producto;
	document.getElementById("value1").value = producto[0].precio_venta;


} else {
	var element = document.getElementById("error");
	element.classList.remove("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.add("visually-hidden");
	document.getElementById("producto1").value = "";
	document.getElementById("result1").value = "";
	document.getElementById("value1").value = "";
}
}

function consultarProducto2() {
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
			+ getUrl.pathname.split('/')[1];
	
	var req = new XMLHttpRequest();
	var coincidencia = false;
	var codigo=   document.getElementById("producto2").value;
	req.open('GET', baseUrl+'/consultarproducto?codigo_producto='+codigo, false);
	req.send(null);
	var producto = null;
	if (req.status == 200)
		producto = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));
	


	var element = document.getElementById("error");
	element.classList.add("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.remove("visually-hidden");
	
	console.log(producto.toString());
	
if (producto.toString()!=""){

	document.getElementById("result2").value = producto[0].nombre_producto;
	document.getElementById("value2").value = producto[0].precio_venta;


} else {
	var element = document.getElementById("error");
	element.classList.remove("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.add("visually-hidden");
	document.getElementById("producto2").value = "";
	document.getElementById("result2").value = "";
	document.getElementById("value2").value = "";
}
}

function consultarProducto3() {
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
			+ getUrl.pathname.split('/')[1];
	
	var req = new XMLHttpRequest();
	var coincidencia = false;
	var codigo=   document.getElementById("producto3").value;
	req.open('GET', baseUrl+'/consultarproducto?codigo_producto='+codigo, false);
	req.send(null);
	var producto = null;
	if (req.status == 200)
		producto = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));
	


	var element = document.getElementById("error");
	element.classList.add("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.remove("visually-hidden");
	
	console.log(producto.toString());
	
if (producto.toString()!=""){

	document.getElementById("result3").value = producto[0].nombre_producto;
	document.getElementById("value3").value = producto[0].precio_venta;


} else {
	var element = document.getElementById("error");
	element.classList.remove("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.add("visually-hidden");
	document.getElementById("producto3").value = "";
	document.getElementById("result3").value = "";
	document.getElementById("value3").value = "";
}
}

function calcularTotal() {

	var element = document.getElementById("error");
	element.classList.add("visually-hidden");
	
	var element2 = document.getElementById("correcto");
	element2.classList.add("visually-hidden");
	
	var element3 = document.getElementById("error2");
		element3.classList.add("visually-hidden");

	  var cant1 = document.getElementById("quantity1").value;
	  var unitPrice1 = document.getElementById("value1").value;
	  var total1 = cant1 * unitPrice1;

	  var cant2 = document.getElementById("quantity2").value;
	  var unitPrice2 = document.getElementById("value2").value;
	  var total2 = cant2 * unitPrice2;

	  var cant3 = document.getElementById("quantity3").value;
	  var unitPrice3 = document.getElementById("value3").value;
	  var total3 = cant3 * unitPrice3;
	  
	  document.getElementById("total1").value = total1;
	  document.getElementById("total2").value = total2;
	  document.getElementById("total3").value = total3;

	  var total_compra = total1 + total2 + total3;
	  var total_iva = total_compra * 0.19;
	  var total_final = total_compra + total_iva;
	  document.getElementById("total_purchase").value = total_compra;
	  document.getElementById("total_tax").value = total_iva;
	  document.getElementById("total_final").value = total_final;

	  if (cant1==="" & cant2==="" && cant3==="" ){
		var element2 = document.getElementById("error2");
		element2.classList.remove("visually-hidden");
		
		document.getElementById("total1").value = "";
		document.getElementById("total2").value = "";
		document.getElementById("total3").value = "";
		document.getElementById("total_purchase").value = "";
		document.getElementById("total_tax").value = "";
		document.getElementById("total_final").value = "";
	}
	  if (cant1<=0 || cant2<=0 || cant3<=0 ){
			var element2 = document.getElementById("error2");
			element2.classList.remove("visually-hidden");
			
			document.getElementById("total1").value = "";
			document.getElementById("total2").value = "";
			document.getElementById("total3").value = "";
			document.getElementById("total_purchase").value = "";
			document.getElementById("total_tax").value = "";
			document.getElementById("total_final").value = "";
		}
	}

function registrarTotal() {
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
			+ getUrl.pathname.split('/')[1];
	
	var y = document.getElementById("consecutivo").value;
	var req = new XMLHttpRequest();
	var coincidencia = false;
	req.open('GET', baseUrl+'/listaventas', false);
	req.send(null);
	var ventas=null;
	if (req.status == 200)
		ventas=JSON.parse(req.responseText);
	  	console.log(JSON.parse(req.responseText));
	  	
	for (i = 0; i < ventas.length; i++) {
		console.log(ventas[i].codigo_venta);
		
		if (ventas[i].codigo_venta ==y ) {
			console.log(ventas[i].codigo_venta +" "+y);	
			coincidencia =true
			break;
		}
	}
	console.log(coincidencia);	
	
	if (coincidencia==false){
		var formData = new FormData();
			formData.append("cedula_cliente", document.getElementById("cedula_cliente").value);
			formData.append("ivaventa", document.getElementById("total_tax").value);
			formData.append("total_venta", document.getElementById("total_purchase").value);
			formData.append("valor_venta",document.getElementById("total_final").value);
			var xhr = new XMLHttpRequest();
			xhr.open("POST", baseUrl+"/registrarventa");
			
		var element_error = document.getElementById("error3");
		element_error.classList.add("visually-hidden");
		var element_correct = document.getElementById("correcto2");
		element_correct.classList.remove("visually-hidden");
		

			xhr.send(formData);

	}else{
		var element_error = document.getElementById("error3");
		element_error.classList.remove("visually-hidden");
		var element_correct = document.getElementById("correcto2");
		element_correct.classList.add("visually-hidden");
		
	}	
	
}

function registrardetalle(){
	
	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"
			+ getUrl.pathname.split('/')[1];
	
	if(document.getElementById("consecutivo").value != ""){
		
		var y = document.getElementById("consecutivo").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', baseUrl+'/listadetalleventas', false);
		req.send(null);
		var detalle=null;
		if (req.status == 200)
			detalle=JSON.parse(req.responseText);
		  	console.log(JSON.parse(req.responseText));
		  	
		for (i = 0; i < detalle.length; i++) {
			console.log(detalle[i].codigo_venta);
			
			if (detalle[i].codigo_venta ==y ) {
				console.log(detalle[i].codigo_venta +" "+y);	
				coincidencia =true
				break;
			}
		}
		console.log(coincidencia);	
		
		if (coincidencia==false){
			var formData = new FormData();
				formData.append("cantidad_producto1", document.getElementById("quantity1").value);
				formData.append("cantidad_producto2", document.getElementById("quantity2").value);
				formData.append("cantidad_producto3", document.getElementById("quantity3").value);
				formData.append("codigo_producto1", document.getElementById("producto1").value);
				formData.append("codigo_producto2", document.getElementById("producto2").value);
				formData.append("codigo_producto3", document.getElementById("producto3").value);
				formData.append("codigo_venta", document.getElementById("consecutivo").value);
				formData.append("valor_total1",document.getElementById("total1").value);
				formData.append("valor_total2",document.getElementById("total2").value);
				formData.append("valor_total3",document.getElementById("total3").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", baseUrl+"/registrardetalleventa");
				
			var element_error = document.getElementById("error4");
			element_error.classList.add("visually-hidden");
			var element_correct = document.getElementById("correcto3");
			element_correct.classList.remove("visually-hidden");
			
			document.getElementById("quantity1").value = "";
			document.getElementById("quantity2").value = "";
			document.getElementById("quantity3").value = "";
			document.getElementById("producto1").value = "";
			document.getElementById("producto2").value = "";
			document.getElementById("producto3").value = "";
			document.getElementById("total1").value = "";
			document.getElementById("total2").value = "";
			document.getElementById("total3").value = "";
			document.getElementById("consecutivo").value = "";
			document.getElementById("cedula_cliente").value = "";
			document.getElementById("total_tax").value = "";
			document.getElementById("total_purchase").value = "";
			document.getElementById("total_final").value = "";
				xhr.send(formData);

		}else{
			var element_error = document.getElementById("error4");
			element_error.classList.remove("visually-hidden");
			var element_correct = document.getElementById("correcto3");
			element_correct.classList.add("visually-hidden");
			
		}

		
	}else {
		
		var element_error_text = document.getElementById("error5");
		element_error_text.classList.remove("visually-hidden");
	}
	
		
}

	</script>  

</body>

</html>